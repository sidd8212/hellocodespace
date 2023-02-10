# there are many built in function in python 
# https://docs.python.org/3/library/functions.html

# abs() returns the absolute value of a number
print(abs(-5))
print(abs(5))

# print function can be used to print multiple values
print('Hello', 'World', 'Python', 'Programming')

# len() returns the length of an object
print(len('Hello World'))
print(len([1, 2, 3, 4, 5]))

# type() returns the type of the object
print(type('Hello World'))
print(type(5))
print(type(5.5))
print(type([1, 2, 3, 4, 5]))
print(type((1, 2, 3, 4, 5)))
print(type({1, 2, 3, 4, 5}))
print(type({'a': 1, 'b': 2, 'c': 3}))

#format() returns a formatted representation of a value
print('Hello World'.format())
print('Hello {}'.format('World'))
print('Hello {0}'.format('World'))
print('Hello {0} {1}'.format('World', 'Python'))
print('Hello {0} {1} {0}'.format('World', 'Python'))

# globals() returns a dictionary of the current global symbol table
print(globals())

# sum() returns the sum of all items in an iterable
print(sum([1, 2, 3, 4, 5]))
# min() returns the smallest item in an iterable
print(min([1, 2, 3, 4, 5]))
# max() returns the largest item in an iterable
print(max([1, 2, 3, 4, 5]))

# sorted() returns a new sorted list from the items in iterable
print(sorted([5, 4, 3, 2, 1]))
# reversed() returns a reverse iterator
print(list(reversed([1, 2, 3, 4, 5])))
# ascii() returns a readable version of an object
print(ascii('Hello World'))
# bin() returns the binary version of a number
print(bin(32))

#list() returns a list
print(list('Hello World'))
print(list((1, '2', 3, 4, 5)))

#dict() returns a dictionary
print(dict(a=1, b=2, c=3))
print(dict([('a', 1), ('b', 2), ('c', 3)]))
print(dict(zip(['a', 'b', 'c'], [1, 2, 3])))
print(dict({'a': 1, 'b': 2, 'c': 3}))

#zip() returns an iterator, from two or more iterables
print(list(zip(['a', 'b', 'c'], [1, 2, 3])))
print(list(zip(['a', 'b', 'c'], [1, 2, 3], [4, 5, 6])))
print(list(zip(['a', 'b', 'c'], [1, 2, 3], [4, 5, 6], [7, 8, 9])))
print(list(zip(['a', 'b', 'c'], [1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12])))


#int() returns an integer number
print(int(5.5))
#float() returns a floating point number
print(float(5))
#char() returns a character
print(chr(97))
#ord() returns an integer representing the Unicode character
print(ord('a'))

#str() returns a string object
print(str(5))
#bool() returns a boolean value
print(bool(1))
#tuple() returns a tuple
print(tuple([1, 2, 3, 4, 5]))
#set() returns a set
print(set([1, 2, 3, 4, 5]))
#frozenset() returns a frozenset object
print(frozenset([1, 2, 3, 4, 5]))
#complex() returns a complex number
print(complex(5))
#bytes() returns a bytes object
print(bytes(5))
#bytearray() returns a bytearray object
print(bytearray(5))
#memoryview() returns a memoryview object
print(memoryview(bytes(5)))
