#!/usr/bin/python3
"""
Python script
"""

import urllib.request


if __name__ == '__main__':
    url = "https://intranet.hbtn.io/status"
    with urllib.request.urlopen(url) as openUrl:
        page = openUrl.read()
        print('Body response:')
        print('\t- type: {}'.format(type(page)))
        print('\t- content: {}'.format(page))
        print('\t- utf8 content: {}'.format(page.decode('utf8')))
