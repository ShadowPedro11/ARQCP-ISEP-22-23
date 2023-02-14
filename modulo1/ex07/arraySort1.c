void array_sort1(int *vec, int n){
     // run the array until second-to-last element
     for(int i=0;i<n-1;i++){
		 // saves the value of i postion
         int save1 = vec[i];
         // initializes an int to save address
         int saveAdr =0;
         // run the array starting in element i+1 until the last element looking for the smaller element
         for(int j=i+1;j<(n);j++){
			 // if value of postion i is bigger than j, change the values
             if(save1>vec[j]){
                 save1 = vec[j];
                  saveAdr = j;
             }
         }
         // check if the first element is the smaller, if not it was changed
         if(save1!=vec[i]){
             int save2 = vec[i];
             vec[i]=vec[saveAdr];
             vec[saveAdr]=save2;
         }
         
     }
     
 }
