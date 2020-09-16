name=input('请输入姓名:')
print('欢迎，',name)
hight=float(input('请输入身高(m)：'))
weight=int(input('请输入体重(kg)：'))
bmi=weight/(hight**2)
if bmi<18.5:
    print('过轻，BMI为%.1f,小心被风吹走了！'%(bmi))
elif 18.5<=bmi<=25:
    print('你很正常，BMI为%.1f。'%(bmi))
elif 25<bmi<=28:
    print('过重，BMI为%.1f,需要减肥了！'%(bmi))
elif 28<bmi<=32:
    print('肥胖,BMI为%.1f,每天锻炼吧！'%(bmi))
else:
    print('你可能是头?')
print('谢谢使用')

