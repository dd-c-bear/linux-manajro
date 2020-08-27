def dd(n, a, b, c):
    if n == 1:
      print(a, '-->', c)
    else:
      dd(n - 1, a, c, b)
      print(a, '-->', c)
      dd(n - 1, b, a, c)
n=int(input('输入汉诺塔层数：'))
dd(int(n),'A','B','C')
