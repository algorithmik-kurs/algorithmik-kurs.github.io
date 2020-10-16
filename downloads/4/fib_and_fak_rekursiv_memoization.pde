int aufrufe = 0;  // zaehlt mit, wie oft eine methode aufgerufen wurde
int memo[] = new int[100];

void setup(){
  noLoop();
  for (int i = 0; i < 100; i++){
    memo[i] = -1;
  }
}


void draw() {
  //println("fakultaet ", fak(7));
  println("fibonacci ", fib(10));
  println("anzahl der aufrufe: ", aufrufe);
}

//------------ n-te Fibonacci Zahl -----------------------------------
int fib(int n){   println(n);

  if (memo[n] != -1) return memo[n];

  aufrufe++;
  if (n==1 || n==2){
    memo[n] = 1;
  }
  else {
    memo[n] = fib(n - 2) + fib(n - 1);
  }
  return memo[n];
}


//----------- Fakultaet von n ----------------------
int fak(int n){
  aufrufe++;
  if (n==0 || n==1){
    return 1;
  }
  else return n * fak(n-1);
}
