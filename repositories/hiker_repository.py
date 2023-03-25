from db.run_sql import run_sql
from models.hiker import Hiker

# SELECT ALL HIKERS

def select_all():
    hikers = []
    sql = "SELECT * FROM hikers"
    hiker_results = run_sql(sql)
    for row in hiker_results:
        hiker = Hiker(row['name'], row['age'], row['id'])
        hikers.append(hiker)
    return hikers

# SELECT ONE HIKER

# CREATE NEW HIKER
def save(hiker):
    sql= "INSERT INTO hikers (name, age) VALUES (%s, %s) RETURNING *"
    values = [hiker.name, hiker.age]
    results = run_sql(sql, values)
    id = results[0]['id']
    hiker.id = id
    return hiker

# DELETE HIKER
def delete(id):
    sql = "DELETE FROM hikers WHERE id = %s"
    values = [id]
    run_sql(sql, values)


# FORM WITH POST METHOD

