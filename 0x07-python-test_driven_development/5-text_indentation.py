#!/usr/bin/python3
"""defines function to print text with 2 newlines after '.' '?' or ':' chars"""


def text_indentation(text):
    """prints text with 2 newlines after '.' '?' or ':' chars"""
    if type(text) is not str:
        raise TypeError("text must be a string")
    previous = ""
    for char in text:
        # leading whitespace
        if char == " " and char == text[0] and previous == "":
            previous = "\n"
            continue
        # whitespaces after newline
        if char == " " and previous == "\n":
            continue
        # matching character, print char, print newlines
        if char == "." or char == "?" or char == ":":
            print(char)
            print()
            previous = "\n"
        else:
            print(char, end="")
            previous = char
