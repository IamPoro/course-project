#include<iostream>
#include<fstream>
#include<string>
#include<ctime>
#include<cmath>
using namespace std;

double start=clock();

struct cl{//second cell list:arrange repeat dynamic cell list
	int side=0;
	string number;
	cl* to_next=NULL;
};

struct clist{//dynamic cell list after net list
	string number;
	cl* to_cell_list=NULL;
	clist* to_next=NULL;
};

struct nl{//net list:arrange repeat dynamic net list
	int cut=0;
	string number;
	clist* to_clist=NULL;
	nl* to_next=NULL;
};

void table(string s, nl* &temp_net, cl* temp_c, int &total_cell){//build table 
	int i=0, space=0;
	string net_number;
	while(s[i]!='}'){
		if(s[i]==32){
			if(s[i-1]!='T'&&s[i-1]!='{'){//only take net and cell
				if(s[space+1]=='n')//record net 
					temp_net->number=s.substr(space+1, i-space-1);
				else if(s[space+1]=='c'){//continue build net to cell table after net list is builded by table_ctn
					int find_ntc=1;
					clist* new_clist=new clist;
					new_clist->number=s.substr(space+1, i-space-1);
					if(temp_net->to_clist==NULL)//if it's a new net, there is no dynamic cell list after that
						temp_net->to_clist=new_clist;
					else{//connect the dynamic cell list in the end after the net list
						clist* temp_clist=temp_net->to_clist;
						while(temp_clist->to_next!=NULL)
							temp_clist=temp_clist->to_next;
						temp_clist->to_next=new_clist;
					}
					cl* temp_cl=temp_c;
					//to the read cell if it exist in cl or to the last cl
					while(temp_cl->number!=s.substr(space+1, i-space-1)){
						if(temp_cl->to_next==NULL){
							find_ntc=0;
							break;
						}
						else
							temp_cl=temp_cl->to_next;
					}
					//connect dynamic cell list to second cell list
					if(temp_c->number==""){//if it's first data that only an empty cl exist
						temp_cl->number=s.substr(space+1, i-space-1);
						new_clist->to_cell_list=temp_cl;
					}
					else if(find_ntc==1)//if find the read cell already exist
						new_clist->to_cell_list=temp_cl;
					else{//if not exist the read cell in already builded clS
						cl* new_cl=new cl;
						new_cl->number=s.substr(space+1, i-space-1);
						new_clist->to_cell_list=new_cl;
						temp_cl->to_next=new_cl;
						total_cell++;
					}
				}
			}
			space=i;
		}
		i++;
	}
	nl* new_net=new nl;//build net list
	temp_net->to_next=new_net;
	temp_net=new_net;
}

void update(nl* net_listh, int &cut_size){//update the data after seperate or move
	int cut_size_temp=0;
	nl* temp=net_listh;
	clist* count_c=temp->to_clist;
	//find whether any two near cell in the same net is different side
	while(1){
		//two near cell in the same net is different side -> cut -> record at the net
		if(count_c->to_next!=NULL&&count_c->to_cell_list->side!=count_c->to_next->to_cell_list->side){
			temp->cut=1;
			cut_size_temp++;
			//confirm the net will be cut, so it can check next net
			if(temp->to_next->number=="")
				break;
			else{
				temp=temp->to_next;
				count_c=temp->to_clist;
			}
		}
		else{//two near cell in the same net is at the same side -> not cut -> check next one cell
			temp->cut=0;
			if(temp->to_next->number==""&&count_c->to_next==NULL)//whole net check complete
				break;
			else if(count_c->to_next!=NULL)//check next one cell
				count_c=count_c->to_next;
			else{//this net check complete
				temp=temp->to_next;
				count_c=temp->to_clist;
			}
		}
	}
	cut_size=cut_size_temp;//feedback cut size
}

void SA(nl* net_listh, cl* c_listh, int total_cell, int &right_side_num, int &cut_size, string A[], string B[]){//SA algorithm
	int T_S=100;
	double T_E=0.00001;
	double T=T_S;
	srand(time(NULL));
	int cut_size_pre=cut_size, cut_size_min=cut_size;
	while(T>=T_E){
		int x=rand()%total_cell;
		cl* temp=c_listh;
		for(int i=0;i<x;i++)//find wanted cell to move
			temp=temp->to_next;
		if(temp->side==1&&right_side_num<total_cell/5*3){//constraint by |size(A)-size(B)|<=n/5
			temp->side=0;
			right_side_num++;
		}
		else if(temp->side==0&&right_side_num>total_cell/5*2){
			temp->side=1;
			right_side_num--;
		}
		update(net_listh, cut_size);//update data to compare cut size
		
		if(cut_size_pre<cut_size){//C' > C
			int diff=cut_size-cut_size_pre;
			double ratio=(double) rand()/(RAND_MAX+1.0), prob=exp(-diff/T);
			if(ratio>prob){//if not in the porbability, move back and update back
				if(temp->side==1&&right_side_num<total_cell/5*3){
					temp->side=0;
					right_side_num++;
				}
				else if(temp->side==0&&right_side_num>total_cell/5*2){
					temp->side=1;
					right_side_num--;
				}
				update(net_listh, cut_size);
			}
		}
		cut_size_pre=cut_size;
		
		int q=0, k=0;
		if(cut_size<cut_size_min){//if the cut size now is smaller than record minimun, record the cell distribution
			for(int u=0;u<total_cell/5*3;u++){//due to not equal quantity in ezch side, so have to reset 
				A[u]="";
				B[u]="";
			}
			cut_size_min=cut_size;
			cl* record_c=c_listh;
			while(record_c->to_next!=NULL){
				if(record_c->side==0){
					A[q]=record_c->number;
					q++;
				}
				else{
					B[k]=record_c->number;
					k++;
				}
				record_c=record_c->to_next;
			}
			if(record_c->side==0)
				A[q]=record_c->number;
			else
				B[k]=record_c->number;
		}
		T=T*0.999;
		if((clock()-start)/CLOCKS_PER_SEC>100)//if almost times up, have to exit function
			break;
	}
	cut_size=cut_size_min;
	if((clock()-start)/CLOCKS_PER_SEC<=100)//if have enough time, recursive function
		SA(net_listh, c_listh, total_cell, right_side_num, cut_size, A, B);
}

void separate(cl* c_listh, int total_cell, string A[], string B[]){//at begining, separate equal cell amount to each side
	cl* point_c=c_listh;
	int i=0;
	//give origin side data to first cell list and record each cell in the side array
	while(1){
		if(i<=total_cell/2-1){
			point_c->side=0;
			A[i]=point_c->number;
		}
		else{
			point_c->side=1;
			B[i-total_cell/2]=point_c->number;
		}
		i++;
		if(point_c->to_next!=NULL)
			point_c=point_c->to_next;
		else
			break;
	}
}

int main(int argc, char* argv[]){
	ifstream ifs(argv[1]);
	ofstream ofs(argv[2]);
	if(!ofs){
		cerr<<"File could not be open"<<endl;
		exit(1);
	}
	
	string s;
	nl* net_listh=new nl;
	cl* c_listh=new cl;
	nl* temp_net=net_listh;
	cl* temp_c=c_listh;
	int total_cell=1;
	while(getline(ifs, s))//read data
		table(s, temp_net, temp_c, total_cell);
		
	string A[total_cell/5*3], B[total_cell/5*3];	
	separate(c_listh, total_cell, A, B);
	
	int cut_size=0;
	update(net_listh, cut_size);
	
	int right_side_num=total_cell/2;
	SA(net_listh, c_listh, total_cell, right_side_num, cut_size, A, B);
	//output format
	ofs<<"cut_size "<<cut_size<<"\nA\n";
	for(int y=0;y<total_cell/5*3;y++)
		if(A[y]!="")
			ofs<<A[y]<<endl;
		else
			break;
	ofs<<"B\n";
	for(int y=0;y<total_cell/5*3;y++)
		if(B[y]!="")
			ofs<<B[y]<<endl;
		else
			break;
}
