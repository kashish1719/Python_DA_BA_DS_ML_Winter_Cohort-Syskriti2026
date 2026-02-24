N = int(input("Enter a number N: "))
found = False

for x in range(1,N + 1):
    num = x
    digit_sum = 0 ; count_digit_3 = 0 ; contains_zero = False
    while num > 0:
        digit = num % 10
        digit_sum += digit
        if digit == 3:
            count_digit_3 += 1
        if digit == 0:
            contains_zero = True

        num //= 10
    if (digit_sum % 7 == 0) and (count_digit_3 == 2) and (not contains_zero):
        print("Smallest number is: ", x)
        found = True
        break
    
if not found:
    print(-1)