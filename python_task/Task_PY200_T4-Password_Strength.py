password = input("Enter a password: ")
n = len(password)
digit = upperCase = lowerCase = False

for ch in password:
    if ch >= '0' and ch <= '9':
        digit = True
    elif ch >= 'A' and ch <= 'Z':
        upperCase = True
    elif ch >= 'a' and ch <='z':
        lowerCase = True

if n > 8 and digit and upperCase and lowerCase:
    print("STRONG")
else:
    print("WEAK")