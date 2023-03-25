from flask import render_template
from repositories import hiker_repository
from flask import Blueprint
hikers_blueprint = Blueprint("hikers", __name__)


# SHOW
# GET /'hikers'
@hikers_blueprint.route('/hikers')
def hikers():
    hikers = hiker_repository.select_all()
    return render_template('hikers/index.html', title='Hikers', all_hikers = hikers)

# NEW
# GET '/hikers/new'
# FORM TO ADD NEW HIKER / RETURNS A HTML FORM TO THE BROWSER
@hikers_blueprint.route('/hikers/new', methods=['GET'])
def new_hiker():
    return render_template("hikers/new.html")

# CREATE
# POST '/hikers/'
# When the user submits the form we'll make a POST request to the CREATE route
# Receives the data from the form to insert into the database