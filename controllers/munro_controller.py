from flask import render_template
from flask import Blueprint
munros_blueprint = Blueprint("munros", __name__)

@munros_blueprint.route('/munros')
def index():
    return render_template('munros/index.html', title='Munros')