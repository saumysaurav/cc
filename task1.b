def nextGreaterNumber(N):
    digits = list(str(N))
    n = len(digits)
    i = n - 2
    while i >= 0 and digits[i] >= digits[i + 1]:
        i -= 1
    if i == -1:
        return -1
    j = n - 1
    while digits[j] <= digits[i]:
        j -= 1
    digits[i], digits[j] = digits[j], digits[i]
    digits[i + 1:] = sorted(digits[i + 1:])
    return int("".join(digits))

# Get user input for N
N = int(input("Enter a number: "))

result = nextGreaterNumber(N)

if result == -1:
    print("No greater number possible.")
else:
    print(f"The next greater number is: {result}")
