class Todo:
    def __init__(self, hiker, munro, completed = False, id = None):
        self.hiker = hiker
        self.munro = munro
        self.completed = completed
        self.id = id


    def mark_complete(self):
        self.completed = True