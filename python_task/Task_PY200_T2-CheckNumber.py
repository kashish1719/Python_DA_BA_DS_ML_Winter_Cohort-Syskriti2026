num = int(input("Enter a Integer number: "))

if num > 0:
    print(f"Your entered number {num} was positive.")
elif num < 0:
    print(f"Your entered number {num} was negative, however positive value of your number {num} is {abs(num)}.")
else:
    print(f"Your entered number {num} was zero.")