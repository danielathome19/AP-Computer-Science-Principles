def main():  # run with 'python MSOE141.py' in the shell
  word = input("Enter a word: ")
  word = word.lower()
  dblcount = 0
  for lcv in range(0, len(word) - 1):
    if word[lcv] == word[lcv + 1]:
      dblcount += 1
  print(f"{word} contains {dblcount} double letters")
  pass


if __name__ == "__main__":
  main()
  