import requests
from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    categories = requests.get('http://127.0.0.1:5001/categories')
    categories = categories.json()

    news = requests.get('http://127.0.0.1:5001/news')
    news = news.json()
    return render_template('index.html', categories=categories, news=news)



@app.route('/hello')
def hello_world():
    return render_template('index.html')
