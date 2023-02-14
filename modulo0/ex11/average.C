int average(int n1, int n2){
return (n1+n2)/2;
}

int average_array (int v [], int n){
    int sum=0;
    for(int i=0;i<n;i++){
        sum=sum+v[i];
    }
    return sum/n;
}

int average_global_array (){
    int g_n = 4;
    int g_v[100] = {1,2,3,4,5,6,7,8,9,10};
    int sum = 0;
    for(int i =0;i<g_n;i++){
        sum=sum+g_v[i];
    }
    return sum/g_n;
}

