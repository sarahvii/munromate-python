from db.run_sql import run_sql
from models.hiker import Hiker

def select_all():
    hikers = []
    sql = "SELECT * FROM hikers"
    hiker_results = run_sql(sql)
    for row in hiker_results:
        hiker = Hiker(row['name'], row['age'], row['id'])
        hikers.append(hiker)
    return hikers
