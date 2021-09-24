int aufrufe = 0;  // zaehlt mit, wie oft eine methode aufgerufen wurde

void setup(){
  noLoop();
}


void draw() {
  //println("fakultaet ", fak(7));
  println("fibonacci ", fib(10));
  println("anzahl der aufrufe: ", aufrufe);
}


int fib(int n){
  aufrufe++;
  if (n==1 || n==2){
    return 1;
  }
  else return fib(n-1) + fib (n-2);
}



int fak(int n){
  aufrufe++;
  if (n==0 || n==1){
    return 1;
  }
  else return n * fak(n-1);
}
