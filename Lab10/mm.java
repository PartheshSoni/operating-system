import java.util.*;

class node{
    int pid;
    int size;

    node(int p, int s){
        pid=p;
        size=s;
    }
}

class mm{
    public static void main(String args[]){
        Scanner sc=new Scanner(System.in);  
        System.out.print("Enter the number of memory blocks: ");
        int n=sc.nextInt();
        System.out.println();
        System.out.println();
        ArrayList<node> list=new ArrayList<>();
        System.out.println("Enter the size of the memory blocks in order...");
        for(int i=0; i<n; i++){
            System.out.print("Block "+(i+1)+": ");
            list.add(new node(-1, sc.nextInt()));
        }
        System.out.println();
        System.out.println();
        System.out.print("Enter the number of process: ");
        int pn=sc.nextInt();
        System.out.println("Enter the process memory space required in order...Processes are assigned pid according to order.");
        int pspace[]=new int[pn];
        for(int i=0; i<pn; i++){
            System.out.print("Process "+(i+1)+": ");
            pspace[i]=sc.nextInt();
        }
            
        System.out.println();
        System.out.println();
        ArrayList<Integer> unalloc=new ArrayList<>();
        System.out.print("Enter the choice for fitting: \n1. First Fit \n2. Best Fit\n3. Worst Fit\nCode: ");
        int cho=sc.nextInt();
        switch(cho){
            case 1:    
                for(int i=0; i<pn; i++){
                    int alloc=0;
                    for(int j=0; j<n; j++){
                        if(list.get(j).size>=pspace[i]&&list.get(j).pid==-1){
                            list.get(j).pid=i+1;
                            alloc=1;
                            break;
                        }
                    }
                    if(alloc==0)
                        unalloc.add(i+1);
                }
                break;
            
            case 2:
                
                for(int i=0; i<pn; i++){
                    int mid=100000000;
                    int mspa=100000000;
                    int alloc=0;
                    for(int j=0; j<n; j++){
                        if(list.get(j).size>=pspace[i]&&list.get(j).pid==-1&&mspa>list.get(j).size){
                            mspa=list.get(j).size;
                            mid=j;
                        }
                    }
                    
                    if(mid==100000000){
                        unalloc.add(i+1);
                    }
                    else{
                        list.get(mid).pid=i+1;
                    }
                }
                break;
            case 3:
                for(int i=0; i<pn; i++){
                    int mid=-100;
                    int mspa=-100;
                    int alloc=0;
                    for(int j=0; j<n; j++){
                         if(list.get(j).size>=pspace[i]&&list.get(j).pid==-1&&mspa<list.get(j).size){
                            mspa=list.get(j).size;
                            mid=j;
                         }

                    }
                     
                    if(mid==-100){
                        unalloc.add(i+1);
                    }
                    else{
                        list.get(mid).pid=i+1;
                    }
                }
                break;
            default:
                System.out.println("Invalid choice.");
                break;

        }
        System.out.println();
        System.out.println();
        System.out.println("The following is the allocation according to the selected choice...");

        for(int i=0; i<n; i++){
            System.out.println("Block "+(i+1)+"   Size:"+list.get(i).size+"   Process alloc:"+list.get(i).pid);    
        }
        System.out.println();
        System.out.println();
        if(unalloc.size()!=0){
        System.out.println("The following are the unallocated processes...");
        for(int i=0; i<unalloc.size(); i++){
            System.out.println("pid: "+unalloc.get(i));
        }
        }   
    }
}