import os

from flask import Flask

def create_app(test_config=none):
    app = Flask(__name__, instance_relative_config=True)
    app.config.from_mapping(
        SECRET_KEY='dev',
        DATABASE=os.path.join(app.instance_path, 'flaskr.sqlite'),
    )

     try:
        os.makedirs(app.instance_path)
    except OSError:
        pass
    
    @app.route("/hello")
    def hello_world():
        return "<p>Hello, World!</p>"
