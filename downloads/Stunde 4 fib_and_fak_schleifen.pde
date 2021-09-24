int zaehler = 0;

void setup() {
  noLoop();
}


void draw() {
  println("fakultaet ", fak(5));
  println("fibonacci ", fib(10));
}

//----------- Fakultaet von n ----------------------
int fak(int n) {

  if (n==0) {
    return 1;
  }

  int erg = 1;
  for (int i = 1; i <= n; i++) {
    erg = erg * i;
  }

  return erg;
}

//------------ n-te Fibonacci Zahl -----------------------------------

int fib(int n) {

  if (n == 1 ||  n == 2) {
    return 1;
  }

  int a = 1, b = 1;
  int erg = 0;
  for (int i = 0; i < n - 2; i++) {
    erg = a + b;
    a = b;
    b = erg;
  }
  return erg;
}
