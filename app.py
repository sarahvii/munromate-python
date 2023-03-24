from flask import Flask, render_template
from controllers import hiker_controller
from controllers import munro_controller
from controllers.munro_controller import munros_blueprint

app = Flask(__name__)

app.register_blueprint(munros_blueprint)

@app.route('/')
def home():
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)