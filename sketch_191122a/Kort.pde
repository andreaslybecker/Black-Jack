class Kort {

  int valuePoint;
  String kuloer;
  String vaerdiString;

  Kort(String k, String v) {
    kuloer = k;
    vaerdiString = v;
    valuePoint = getKortValue(v);
    //return (kuloer + " " + vaerdi);
  }
  
  String toString(){
   return kuloer + " " + vaerdiString; 
  }
  
  
  int getKortValue(String vaerdiS) {
   int vaerdi =0;
   
  if (vaerdiS == "Konge" || vaerdiS == "Dame" || vaerdiS == "Jack" || vaerdiS == "10") vaerdi = 10;
  if (vaerdiS == "9") vaerdi = 9;
  if (vaerdiS == "8") vaerdi = 8;
  if (vaerdiS == "7") vaerdi = 7;
  if (vaerdiS == "6") vaerdi = 6;
  if (vaerdiS == "5") vaerdi = 5;
  if (vaerdiS == "4") vaerdi = 4;
  if (vaerdiS == "3") vaerdi = 3;
  if (vaerdiS == "2") vaerdi = 2;
  if (vaerdiS == "Es") vaerdi = 1;

  
  return vaerdi;
}



  
}
