from db.run_sql import run_sql
from models.munro import Munro
from models.hiker import Hiker
from models.todo import Todo
    
import repositories.munro_repository as munro_repository
import repositories.hiker_repository as hiker_repository

def save(todo):
    sql = "INSERT INTO todos ( hiker_id, munro_id, completed ) VALUES ( %s, %s, %s) RETURNING id"
    values = [todo.hiker.id, todo.munro.id, todo.completed]

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
        todo = Todo(hiker, munro, row['completed'], row['id'])
        todos.append(todo)
    return todos

def select(id):
    todo = None
    sql = "SELECT * FROM todos WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        hiker = hiker_repository.select(result['hiker_id'])
        munro = munro_repository.select(result['munro_id'])
        todo = Todo(hiker, munro, result['completed'], result['id'])
    return todo

def update(todo):
    sql = "UPDATE todos SET (hiker_id, munro_id, completed) = (%s, %s, %s) WHERE id = %s"
    values = [todo.hiker.id, todo.munro.id, todo.completed, todo.id]
    results = run_sql(sql, values)




# def save_todo(todo):
#     sql = "INSERT INTO todos ( hiker_id, munro_id ) VALUES ( %s, %s ) RETURNING id"
#     values = [todo.select_munro_id, todo.hiker_id]
#     results = run_sql( sql, values )
#     todo.id = results[0]['id']
#     return todo




# @hikers_blueprint.route('/hikers/<hiker_id>/todo', methods=['POST'])
# def select_munro_todo(hiker_id):
#     select_munro_id = request.form['selected_munro']
#     todo_repository.save_to_do(select_munro_id, hiker_id)
#     return redirect('/hikers/' + {{ id }} + '/todo')

