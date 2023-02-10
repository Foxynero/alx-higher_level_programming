#!/usr/bin/python3
""" module 1-my_list contains the class MyList """


class MyList(list):
    """ defines MyList class """

    def __init__(self):
        """ initializes new MyList object """
        pass

    def print_sorted(self):
        """ prints sorted list """
        print(sorted(self))
