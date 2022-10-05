#include <cstdio>
#include <cstdlib>
#include <iostream>
#include "sort.h"

int ivector_length(int *v, int n)
{
  int sum;

  sum = 0;
  for (int i = 0; i < n; i++)
    sum += (v[i] < 0) ? -v[i] : v[i];

  return sum;
}

/*
 * insertion sort
 * A is the pointer to the array
 * r is the last index of the array ( index of last row )
 * n is dimension of each vector ( will be same for all )
 * l is just initialised to 0 to indicate we are including items from the 0th index from the vector, this can be incremented to skip l number of indices
 */
void insertion_sort(int **A, int n, int l, int r)
{
  int i;
  int *key;
  // j will start at 1 if l is 0
  for (int j = l + 1; j <= r; j++) // this means for each sublist in the array starting with sublist at index = l+1 of the array, iterate till we reach the last index of the array // O(r)
  {
    key = A[j]; // O(1)
    i = j - 1;  // O(1)
    // A[i] is the previous element in the array
    // key is current element we are looking at
    while ((i >= l) && (ivector_length(A[i], n) > ivector_length(key, n)))
    {
      A[i + 1] = A[i];
      i = i - 1;
    }

    A[i + 1] = key;
  }
}

/*
 *   TO IMPLEMENT: Improved Insertion Sort for problem 1.
 */
int binarySearch(int a[], int item, int low, int high)
{
  while (low <= high)
  {
    int mid = low + (high - low) / 2;
    if (item == a[mid])
      return mid + 1;
    else if (item > a[mid])
      low = mid + 1;
    else
      high = mid - 1;
  }

  return low;
}

void insertion_sort_im(int **A, int n, int l, int r)
{
  int i, keyPrecomputed, location;
  int *key;
  int *preComputed = new int[r+1];
  for(int i = 0; i<=r; i++){
    preComputed[i]=ivector_length(A[i],n);
  }
  for (int j = l + 1; j <= r; j++)
  {
    key = A[j];
    keyPrecomputed = preComputed[j];
    i = j - 1;
    location = binarySearch(preComputed, keyPrecomputed, 0, i);
    // while ((i >= l) && (preComputed[i]> keyPrecomputed))
    while (i>=location)
    {
      A[i + 1] = A[i];
      preComputed[i + 1] = preComputed[i];
      i = i - 1;
    }

    A[i + 1] = key;
    preComputed[i+1]= keyPrecomputed;
  }
}

/*
 *   TO IMPLEMENT: Improved Merge Sort for problem 2.
 */
void merge_sort(int **A, int n, int p, int r)
{
}

/*
 * Simple function to check that our sorting algorithm did work
 * -> problem, if we find position, where the (i-1)-th element is
 *    greater than the i-th element.
 */
bool check_sorted(int **A, int n, int l, int r)
{
  for (int i = l + 1; i <= r; i++)
    if (ivector_length(A[i - 1], n) > ivector_length(A[i], n))
      return false;
  return true;
}

/*
 * generate sorted/reverse/random arrays of type hw1type
 */
int **create_ivector(int n, int m)
{
  int **iv_array;

  iv_array = new int *[m];
  for (int i = 0; i < m; i++)
    iv_array[i] = new int[n];

  return iv_array;
}

void remove_ivector(int **iv_array, int m)
{
  for (int i = 0; i < m; i++)
    delete[] iv_array[i];
  delete[] iv_array;
}

int **create_sorted_ivector(int n, int m)
{
  int **iv_array;

  iv_array = create_ivector(n, m);
  for (int i = 0; i < m; i++)
    for (int j = 0; j < n; j++)
      iv_array[i][j] = (i + j) / n;

  return iv_array;
}

int **create_reverse_sorted_ivector(int n, int m)
{
  int **iv_array;

  iv_array = create_ivector(n, m);
  for (int i = 0; i < m; i++)
    for (int j = 0; j < n; j++)
      iv_array[i][j] = ((m - i) + j) / n;

  return iv_array;
}

int **create_random_ivector(int n, int m, bool small)
{
  random_generator rg;
  int **iv_array;

  iv_array = create_ivector(n, m);
  for (int i = 0; i < m; i++)
    for (int j = 0; j < n; j++)
    {
      rg >> iv_array[i][j];
      if (small)
        iv_array[i][j] %= 100;
      else
        iv_array[i][j] %= 65536;
    }

  return iv_array;
}
