'''lst=[1,2,3,2,4,5,3,4,5,6,2,]
key=int(input("Enter the number:"))
count=0
for i in range(len(lst)):
  if lst[i]==key:
    count+=1
print(count)
'''


a=[1,2,4,9,3,0,-1,2,4,-1]
for i in range(len(a)):
  if -1==i:
    print(i)
