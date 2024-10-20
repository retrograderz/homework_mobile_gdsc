void main() {
  List<int> numbers = [10,5,7,1,2,9,4,3,6,8];

  // 1. tim vi tri phan tu lon thu 3
  List<int> sorted = List.from(numbers)
..sort((a, b) => b.compareTo(a));

  int res1 = sorted[2];
  print(numbers.indexOf(res1));

  // 2. loc ra ptu > 4 theo thu tu ban dau
  List<int> res2 = numbers.where((a) => a > 4).toList();
  print(res2);

  // 3. thay the so le lon nhat = tong danh sach
  int maxodd = numbers.where((a) => a.isOdd).reduce((a, b) => a>b ? a : b);
  int sum = numbers.reduce((a, b) => a + b);
  numbers[numbers.indexOf(maxodd)] = sum;
  print(numbers);

}