from db.run_sql import run_sql
from models.munro import Munro
from models.hiker import Hiker
from models.todo import Todo

import repositories.munro_repository as munro_repository
import repositories.hiker_repository as hiker_repository

def save(todo):
    sql = "INSERT INTO todos ( hiker_id, munro_id ) VALUES ( %s, %s) RETURNING id"
    values = [todo.hiker.id, todo.munro.id]
    results = run_sql( sql, values )
    todo.id = results[0]['id']
    return todo

def select_all():
    todos = []

    sql = "SELECT * FROM todos"
    results = run_sql(sql)

    for row in results:
        hiker = hiker_repository.select(row['hiker_id'])
        munro = munro_repository.select(row['munro_id'])
        todo = Todo(hiker, munro, row['id'])
        todos.append(todo)
    return todos
