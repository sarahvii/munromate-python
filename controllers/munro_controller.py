from flask import render_template
from repositories import munro_repository
from flask import Blueprint
munros_blueprint = Blueprint("munros", __name__)

@munros_blueprint.route('/munros')
def munros():
    munros = munro_repository.select_all()
    return render_template('munros/index.html', title='Munros', all_munros = munros)

@munros_blueprint.route('/munros/<index>')
def single_munro(index):
    munros = munro_repository.select_all()
    selected_munro = munros[int(index)]
    return render_template('munros/munro.html', title='Munro', munro = selected_munro)

