from flask import render_template, request, redirect
from models.hiker import Hiker
from repositories import hiker_repository as hiker_repository
from flask import Blueprint
hikers_blueprint = Blueprint("hikers", __name__)


# SHOW
# GET /'hikers'
@hikers_blueprint.route('/hikers')
def hikers():
    hikers = hiker_repository.select_all()
    return render_template('hikers/index.html', title='Hikers', all_hikers = hikers)

# SHOW 
# GET /'munros/<index>'
@hikers_blueprint.route('/hikers/<index>')
def single_hiker(index):
    hikers = hiker_repository.select_all()
    selected_hiker = hikers[int(index)]
    return render_template('hikers/hiker.html', title='Hiker', munro = selected_hiker)

# NEW
# GET '/hikers/new'
# FORM TO ADD NEW HIKER / RETURNS A HTML FORM TO THE BROWSER
@hikers_blueprint.route('/hikers/new', methods=['GET'])
def new_hiker():
    return render_template("hikers/new.html")

# CREATE
# POST '/hikers/'
@hikers_blueprint.route('/hikers', methods=['POST'])
def create_hiker():
    name = request.form['name']
    age = request.form['age']
    hiker = Hiker(name, age)
    hiker_repository.save(hiker)
    return redirect('/hikers')

# This works but redirects to /hikers
# We want this to redirect to the individual hiker created. <index>

