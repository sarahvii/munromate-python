from flask import Flask, render_template
from controllers import hiker_controller
from controllers import munro_controller

app = Flask(__name__)

if __name__ == '__main__':
    app.run(debug=True)

@app.route('/')
def home():
    return render_template('index.html')