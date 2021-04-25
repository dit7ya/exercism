#include "armstrong_numbers.h"
#include <math.h>

int num_of_digits(int number) {

  int count = 0;
  while (number > 0) {
    count++;
    number /= 10;
  }
  return count;
}

bool is_armstrong_number(int candidate) {
  /* int number_of_digits = ceil(log10(candidate)); */
  int number_of_digits = num_of_digits(candidate);
  int candidate_copy = candidate;
  int sum = 0;

  while (candidate_copy > 0) {
    sum += pow(candidate_copy % 10, number_of_digits);
    candidate_copy = candidate_copy / 10;
  }

  return sum == candidate;
}
