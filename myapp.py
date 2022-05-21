#! /usr/bin/env python

from flask import Flask

app = Flask(__name__)

@app.route('/')
@app.route('/index')
def index():
    return "Hello, Nix!"

def run():
    app.run()

if __name__ == "__main__":
    run()
