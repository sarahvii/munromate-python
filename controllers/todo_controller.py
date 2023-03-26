from flask import render_template, request, redirect
from models.todo import Todo
from repositories import todo_repository as todo_repository
from flask import Blueprint
todos_blueprint = Blueprint("todos", __name__)


# INDEX
# GET /'todos' -- THIS ROUTE IS UNNECESSARY
@todos_blueprint.route('/todos')
def todos():
    todos = todo_repository.select_all()
    return render_template('todos/index.html', title='Todos', todos = todos)

# SHOW ONE
# GET / 'todos/<index>'
@todos_blueprint.route('/todos/<index>')
def single_todo(index):
    todos = todo_repository.select_all()
    selected_todo = todos[int(index)]
    return render_template('todos/todo.html', todo = selected_todo)

# # SHOW 
# # GET /'hikers/<index>'
# @hikers_blueprint.route('/hikers/<index>')
# def single_hiker(index):
#     hikers = hiker_repository.select_all()
#     selected_hiker = hikers[int(index)]
#     return render_template('hikers/hiker.html', title='Hiker', hiker = selected_hiker)

# # NEW
# # GET '/hikers/new'
# # FORM TO ADD NEW HIKER / RETURNS A HTML FORM TO THE BROWSER
# @hikers_blueprint.route('/hikers/new', methods=['GET'])
# def new_hiker():
#     return render_template("hikers/new.html")

# # CREATE
# # POST '/hikers'
# @hikers_blueprint.route('/hikers', methods=['POST'])
# def create_hiker():
#     name = request.form['name']
#     age = request.form['age']
#     hiker = Hiker(name, age)
#     hiker_repository.save(hiker)
#     return redirect('/hikers')

# # The above works but redirects to /hikers
# # We want this to redirect to the individual hiker created. <index>

# # DELETE
# # POST '/hikers/<id>'
# @hikers_blueprint.route('/hikers/<id>/delete', methods=['POST'])
# def delete_hiker(id):
#     hiker_repository.delete(id)
#     return redirect('/hikers')