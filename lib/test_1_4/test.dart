import 'dart:io';

void main() {
  testOne(101);

  // print(leapYear(1600));
  // print(leapYear(2000));
  // print(leapYear(1500));
  // print(leapYear(2400));
  // print(leapYear(2800));
  // print(leapYear(2010));

  // start(10);
  // star2(6);
  // prime(20);
}

void testOne(int num) {
  for (int i = 1; i < num; i++) {
    if (i % 15 == 0) {
      stdout.write("FizzBuzz" " ");
    } else if (i % 5 == 0) {
      stdout.write("Buzz" " ");
    } else if (i % 3 == 0) {
      stdout.write("Fizz" " ");
    } else {
      stdout.write("$i" " ");
    }
  }
  print('');
}

bool leapYear(int year) {
  return year % 4 == 0 && year % 100 == 0 && year % 400 == 0;
}

void star1(int num) {
  print('Enter number' + num.toString());
  for (int i = 1, j = num - 1; i <= num; i++, j--) {
    print((' ' * j) + ('*' * i));
  }
}

void star2(int num) {
  print('Enter number' + num.toString());
  for (int i = 1, j = num - 1, k = -1; i <= num; i++, j--, k += 2) {
    String spaceBeforeStar = ' ' * j;
    String firstStar = '*';
    String secondStar = i > 1 ? '*' : '';
    String spaceInsideStar = ' ' * k;
    print(spaceBeforeStar + firstStar + spaceInsideStar + secondStar);
  }
}

void prime(int number) {
  late List<int> score = [];
  for (int i = 2; i <= number; i++) {
    int c = 0;
    for (int j = 2; j < i; j++) {
      if (i % (j) == 0) {
        c++;
      }
    }
    if (c == 0) {
      score.add(i);
    }
  }
  stdout.write(score);
  print('');
}
