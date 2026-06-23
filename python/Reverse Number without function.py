Number=int(input("Enter any Number:"))
rev=0
while Number>0:
  New_number=Number%10
  rev=rev*10+New_number
  Number=Number//10
print(f"Revese Number is:",rev)
