
class Task2{
  //do not edit max variable name
  int max;

  //do not edit min variable name
  int min;


  //Write your login in getMinMax()
  //consider for this array [-1, -10, 90, 7, 0, 78, 1456]
  getMinMax(List<int>arr){
    this.max = this.min = arr[0];
    

    for(int i=0;i<arr.length;i++){
      if(arr[i]>max){
        this.max = arr[i];
      }else if(arr[i]< min){
      this.min = arr[i];
      }
    }
        
  }

  // do not edit this
  Map<String,dynamic> toJson()=>{
    "max":max,
    "min":min
  };
}