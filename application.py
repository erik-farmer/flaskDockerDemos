__author__ = 'erikfarmer'


from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello Dev Server Flask!!!'

if __name__ == '__main__':
    app.run()