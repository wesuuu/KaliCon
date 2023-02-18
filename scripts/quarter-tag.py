import datetime
import sys

# maps the month to a tag version
month_tag_map = {
    1: '1',
    2: '1',
    3: '1',
    4: '2',
    5: '2',
    6: '2',
    7: '3',
    8: '3',
    9: '3',
    10: '4',
    11: '4',
    12: '4'
}


if __name__ == '__main__':
    now = datetime.datetime.now()

    try:
        tag = str(now.year) + '.' + month_tag_map[now.month]
        sys.stdout.write(tag)
        sys.stdout.flush()
        sys.exit(0)
    except Exception as e:
        sys.stderr.write(str(e))
        sys.stderr.flush()
        sys.exit(1)