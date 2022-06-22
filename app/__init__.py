from flask import Flask, render_template, request, json,  url_for, request, redirect
from app.map_app import map_app
from peewee import *
import folium
import os
import json
from dotenv import load_dotenv
load_dotenv()
app = Flask(__name__)

mydb = MYSQLDatabase(os.getenv("MYSQL_DATABASE"), user=os.getenv("MYSQL_USER"), password=os.getenv("MYSQL_PASSWORD"), host=os.getenv("MYSQL_HOST"), port=3306 )
print(mydb)
app.register_blueprint(map_app)
#dataFile = open("/root/project-22-sum-17-aleena-emily-zareen/app/static/data.json" , encoding = "utf-8")
dataFile = open("app/static/data.json" , encoding = "utf-8")
data = json.load(dataFile)

@app.route('/')
def index():    
    allUsers = data    
    return render_template('index.html', title="Aleena Tim", allUsers=allUsers)

@app.route('/aleena-tim-portfolio')
def aleena_portfolio():
    allUsers = data    
    return render_template('aleena-tim-portfolio.html', allUsers=allUsers)

@app.route('/hobbies')
def hobbies():    
    return render_template('hobbies.html')
 
if __name__ == "__main__":
    app.run(debug=True)
