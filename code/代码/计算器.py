L=input('输入数字,用","隔开:')     #得到一大串夹杂着,的字符串str
L=L.split(',')                    #用函数split分割字符串,以,为分割线
L = [int(L[i]) for i in range(len(L))] #for循环，把每个字符转成int值
for x in L:                            #逐个挑选偶数
    if x%2==0:                         #取余数
        print('|#|')
    else:
        L.remove(x)                    #用remove函数移除奇数
print(L)
s=0
for ss in L:                           #列表内数字相加
    s +=ss
    
print(s)