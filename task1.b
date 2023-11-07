from itertools import permutation
def nextGreaterNumber(N):
    digits = list(str(N))
    n = len(digits)
    permuted_numbers = sorted(int(''.join(perm)) for perm in permutations(digits))
    original_index = permuted_numbers.index(N)
    if original_index == len(permuted_numbers) - 1:
        return -1
    return permuted_numbers[original_index + 1]
N = int(input("Enter a number: "))

result = nextGreaterNumber(N)

if result == -1:
    print("No greater number possible.")
else:
    print(f"The next greater number is: {result}")
