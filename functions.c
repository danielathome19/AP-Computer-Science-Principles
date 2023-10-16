#include <stdio.h>
#include "mylibrary.h"

int main() {
  int l = 5;
  int w = 10;
  int a = area(l, w);
  int p = perim(l, w);
  printf("Area: %d\nPerimeter: %d\n", a, p);
}