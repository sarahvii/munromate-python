from flask import render_template, request, redirect
from models.hiker import Hiker
from models.todo import Todo
import repositories.hiker_repository as hiker_repository
import repositories.todo_repository as todo_repository
import repositories.munro_repository as munro_repository
from flask import Blueprint
hikers_blueprint = Blueprint("hikers", __name__)
import pdb


# SHOW
# GET /'hikers'
@hikers_blueprint.route('/hikers')
def hikers():
    hikers = hiker_repository.select_all()
    return render_template('hikers/index.html', title='Hikers', all_hikers = hikers)

# SHOW 
# GET /'hikers/<index>'
@hikers_blueprint.route('/hikers/<index>')
def single_hiker(index):
    selected_hiker = hiker_repository.select(index)
    return render_template('hikers/hiker.html', title='Hiker', hiker = selected_hiker)

# NEW
# GET '/hikers/new'
# FORM TO ADD NEW HIKER / RETURNS A HTML FORM TO THE BROWSER
@hikers_blueprint.route('/hikers/new', methods=['GET'])
def new_hiker():
    return render_template("hikers/new.html")

# CREATE
# POST '/hikers'
@hikers_blueprint.route('/hikers', methods=['POST'])
def create_hiker():
    name = request.form['name']
    age = request.form['age']
    hiker = Hiker(name, age)
    hiker_repository.save(hiker)
    return redirect('/hikers')

# The above works but redirects to /hikers
# We want this to redirect to the individual hiker created. <index>


# DELETE
# POST '/hikers/<id>'
@hikers_blueprint.route('/hikers/<id>/delete', methods=['POST'])
def delete_hiker(id):
    pdb.set_trace()
    hiker_repository.delete(id)
    return redirect('/hikers')

# GET ROUTE TO HIKER'S TODO
@hikers_blueprint.route('/hikers/<id>/todo', methods=["GET"])
def hiker_todo(id):
    hiker = hiker_repository.select(id)
    todos = hiker_repository.todos(hiker)
    munros = munro_repository.select_all()
    print(todos)
    return render_template('todos/todo.html', hiker = hiker, todos = todos, munros = munros)

# POST ROUTE TO HIKERS TODO
@hikers_blueprint.route('/hikers/<hiker_id>/todo', methods=['POST'])
def select_munro(hiker_id):
    munro_id = request.form['munro_id']
    hiker = hiker_repository.select(hiker_id)
    munro = munro_repository.select(munro_id)
    todo = Todo(hiker, munro)
    todo_repository.save(todo)
    return redirect(f"/hikers/{ hiker_id }/todo")

@hikers_blueprint.route('/hikers/<hiker_id>/todo/<todo_id>/completed', methods=['POST'])
def complete_todo(hiker_id, todo_id):
    todo_object = todo_repository.select(todo_id)
    todo_object.mark_complete()
    todo_repository.update(todo_object)
    return redirect(f"/hikers/{ hiker_id }/todo")

# def select_munro_todo(hiker_id):
#     select_munro_id = request.form['selected_munro']
#     todo_repository.save_to_do(select_munro_id, hiker_id)
#     return redirect('/hikers/' + {{ id }} + '/todo')