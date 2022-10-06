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
  int *preComputed = new int[r - l + 1];
  for (int i = 0; i <= r; i++)
  {
    preComputed[i] = ivector_length(A[i], n);
  }
  for (int j = l + 1; j <= r; j++)
  {
    key = A[j];
    keyPrecomputed = preComputed[j];
    i = j - 1;
    location = binarySearch(preComputed, keyPrecomputed, 0, i);
    // while ((i >= l) && (preComputed[i]> keyPrecomputed))
    while (i >= location)
    {
      A[i + 1] = A[i];
      preComputed[i + 1] = preComputed[i];
      i = i - 1;
    }

    A[i + 1] = key;
    preComputed[i + 1] = keyPrecomputed;
  }
}
void do_merge_sort(int **A, int *sortedPrecom, int **sortedArray, int *preComputed, int mid, int l, int r)
{
  int leftArrayIndex = l;
  int rigthArrayIndex = mid + 1;
  int mainArrayIndex = 0;

  // loop till either left or right index end is reached
  while (leftArrayIndex <= mid && rigthArrayIndex <= r)
  {
    if (preComputed[leftArrayIndex] <= preComputed[rigthArrayIndex])
    {
      sortedPrecom[mainArrayIndex] = preComputed[leftArrayIndex];
      sortedArray[mainArrayIndex] = A[leftArrayIndex];
      leftArrayIndex++;
      mainArrayIndex++;
    }
    else
    {
      sortedPrecom[mainArrayIndex] = preComputed[rigthArrayIndex];
      sortedArray[mainArrayIndex] = A[rigthArrayIndex];
      rigthArrayIndex++;
      mainArrayIndex++;
    }
    // if stuff is left out put it back to result
  }
  while (leftArrayIndex <= mid)
  {
    sortedPrecom[mainArrayIndex] = preComputed[leftArrayIndex];
    sortedArray[mainArrayIndex] = A[leftArrayIndex];
    leftArrayIndex++;
    mainArrayIndex++;
  }
  while (rigthArrayIndex <= r)
  {
    sortedPrecom[mainArrayIndex] = preComputed[rigthArrayIndex];
    sortedArray[mainArrayIndex] = A[rigthArrayIndex];
    rigthArrayIndex++;
    mainArrayIndex++;
  }

  for (int mainArrayIndex = 0, leftArrayIndex = l; leftArrayIndex <= r; leftArrayIndex++, mainArrayIndex++)
  {
    preComputed[leftArrayIndex] = sortedPrecom[mainArrayIndex];
    A[leftArrayIndex] = sortedArray[mainArrayIndex];
  }
}
void do_merge(int **A, int *sortedPrecom, int **sortedArray, int *preComputed, int p, int r)
{
  if (p < r)
  {
    int mid = (p + r) / 2;

    // divide
    do_merge(A, sortedPrecom, sortedArray, preComputed, p, mid);
    do_merge(A, sortedPrecom, sortedArray, preComputed, mid + 1, r);
    // conquer
    do_merge_sort(A, sortedPrecom, sortedArray, preComputed, mid, p, r);
  }
}

/*
 *   TO IMPLEMENT: Improved Merge Sort for problem 2.
 */
void merge_sort(int **A, int n, int p, int r)
{
  // start index is p =0
  // last index is r = m-1 ( where m is array size)

  // step 1 pre compute the array sizes
  auto *preComputed = new int[r + 1];
  for (int i = 0; i <= r; i++)
  {
    preComputed[i] = ivector_length(A[i], n);
  }

  auto *sortedPrecom = new int[r + 1];
  auto **sortedArray = new int *[r + 1];

  do_merge(A, sortedPrecom, sortedArray, preComputed, p, r);
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
