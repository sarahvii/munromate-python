from flask import render_template
from repositories import munro_repository
from flask import Blueprint
munros_blueprint = Blueprint("munros", __name__)

@munros_blueprint.route('/munros')
def munros():
    munros = munro_repository.select_all()
    return render_template('munros/index.html', title='Munros', all_munros = munros)