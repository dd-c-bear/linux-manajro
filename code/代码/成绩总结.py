name=input('请输入你的名字：')
if name==('dd'):
    print('欢迎,dd')
else :
    print('新的访客来了，欢迎')
s1=int(input('请输入去年成绩：'))
s2=int(input('请输入今年成绩：'))

if s2>s1:
    r=(s2-s1)/s1*100
    print('%s,你的成绩提高了%.1f%%'%(name,r))
elif s1==s2:
    print('%s,你的成绩很稳定。'%(name))
else:
    r=(s1-s2)/s1*100
    print('%s,你退步了%.1f%%'%(name,r))
print('总结完毕！')