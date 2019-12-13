#!/usr/bin/python3

def main(l, h):
	c = 0
	for i in range(l,h):
		if check(i):
			c+=1
	return c

def check(n):
	return check_len(n) and check_adjacent(n) and check_decreasing(n)	

def check_len(n):
	return len(str(n)) == 6

def check_adjacent(n):
	s = str(n)
	for i in range(0, 5):
		if s[i]==s[i+1]:
			return True
	return False
	
def check_decreasing(n):
	s = str(n)
	for i in range(0, 5):
		if int(s[i]) > int(s[i+1]):
			return False
	return True

print(main(156218,652527))

