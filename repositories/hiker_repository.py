from db.run_sql import run_sql
from models.hiker import Hiker
from models.todo import Todo
import repositories.munro_repository as munro_repository
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
def select(id):
    hiker = None
    sql = "SELECT * FROM hikers WHERE id = %s"
    values = [id]

    results = run_sql(sql, values)
    result = results[0]


    if result is not None:
        hiker = Hiker(result['name'], result['age'], result['id'])
        return hiker

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

# TODO LIST
def todos(hiker):
    todos = []
    sql = "SELECT todos.* FROM todos WHERE hiker_id = %s"
    values = [hiker.id]
    results = run_sql(sql, values)

    for row in results:
        hiker = select(row['hiker_id'])
        munro = munro_repository.select(row['munro_id'])
        todo = Todo(hiker, munro, row['id'])
        todos.append(todo)
    return todos

