from flask import Flask

# # flask --app <filepath> run
# flask  --app 055-flask-basics/01010-flaskbasicexample run
app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"