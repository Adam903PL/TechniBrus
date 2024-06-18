from flask import Flask, render_template, request, redirect, url_for, jsonify,session


app = Flask(__name__)
app.secret_key = 'Jakub Mazurek'



@app.route('/')
def index():
    return render_template('index.html')
