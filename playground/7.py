class Kangaroo:
    def __init__(self):
        self.pouch_contents = []
    
    def put_in_punch(self, some_string):
        if some_string not in self.pouch_contents:
            self.pouch_contents.append(some_string)
        else:
            print('object already in pouch')
    
    def __str__(self):
        if self.pouch_contents == []:
            return ('The pouch is empty')
        else:
            return ('the pouch contains:' + \
                   python3 ok -q wwpd-car -u str(self.pouch_contents))
    