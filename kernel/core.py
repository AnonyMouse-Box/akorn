def core():
  char = "the AKORN kernel"
  i = 0
  j = 0
  screensize = 0

  screensize = 80 * 25 * 2
  while j < screensize:
    vidptr[j] = ' '
    vidptr[j+1] = 0x07
    j += 2

  j = 0

  while str(j) != '\0'
    vidptr[i] = str(j)
    vidptr[i+1] = 0x07
    ++j
    i += 2

  return