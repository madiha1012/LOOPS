import 'dart:math';

void main() {
  List<int> arr = [4, 6, 2, 4, 6, 4, 4, 4, 4];
  int n = arr.length;
  findMajoriy(arr, n);
}

void findMajoriy(List<int> arr, int n) {
  int maxCount = 0;
  int index = -1;
  for (int i = 0; i < n; i++) {
    int count = 0;
    for (int j = 0; j < n; j++) {
      if (arr[i] == arr[j]) {
        count++;
      }
    }
    if (count > maxCount) {
      maxCount = count;
      index = i;
    }
  }
  if (maxCount > n / 2)
    print(arr[index]);
  else
    print("No majority element");
}
