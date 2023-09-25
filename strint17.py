def frequent_char(s):
  alpha = "abcdefghijklmnopqrstuvwxyz"
  nums = [0] * 26

  for char in s:
    index = alpha.index(char)
    nums[index] += 1

  max_count = max(nums)
  max_char_index = nums.index(max_count)
  return alpha[max_char_index]

if __name__ == "__main__":
  mystr = input("Enter a string: ").lower()
  print(frequent_char(mystr))
