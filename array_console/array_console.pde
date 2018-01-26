float numbers[];

int N = 10;
numbers = new float[N];

for (int i = 0; i < N; i += 1) {
  numbers[i] = float(i + 1);
}

float sum = 0.0;
for (int i = 0; i < N; i += 1) {
  println("numbers[", i, "] =", numbers[i]);
  sum += numbers[i];
}

println("Sum of first", N, "numbers is:", sum);

exit();