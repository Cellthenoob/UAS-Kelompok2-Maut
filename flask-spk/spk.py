from flask import Flask  , render_template,request,make_response,jsonify,url_for,redirect,Response
import numpy as np
import pandas as pd
import operator
import requests
from pyDecision.algorithm import maut_method
import json
from flask_cors import CORS


# Connect to the MySQL database



app = Flask(__name__)
CORS(app, resources={r"/*": {"origins": "http://127.0.0.1:8000"}}) 

@app.route("/test" , methods=['GET'])
def testing():
    return "hello"

@app.route("/post-rank" , methods=['POST'])
def postRank():
    
    #AHP menentukan Weight

    data = request.json['spk_tubes_datas']
    print(data)
    
    df = pd.DataFrame(data)
    nama = df["alternatif"]
    
    weights = [0.2,0.2,0.1,0.1,0.1,0.1,0.2]

    columns_of_interest = ['spesifikasi', 'harga', 'daya_tahan','desain','konsumen_energi','keamanan','fitur']
    dataset = df[columns_of_interest].values
    
    criterion_type = ['max', 'min', 'max','max', 'max', 'max', 'max']
    
    utility_functions = ['quad', 'quad', 'quad', 'quad', 'quad', 'quad', 'quad']
    # utility_functions = ['step', 'step', 'step', 'step', 'step', 'step', 'step']
    # utility_functions = ['log', 'log', 'log', 'log', 'log', 'log', 'log']
    # utility_functions = ['ln', 'ln', 'ln', 'ln', 'ln', 'ln', 'ln']
    # utility_functions = ['exp', 'exp', 'exp', 'exp', 'exp', 'exp', 'exp']
    
    step_size = 1

    # rank = maut_method(dataset,weights, criterion_type, utility_functions, step_size,graph = True)
    rank = maut_method(dataset,weights, criterion_type, utility_functions, step_size,graph = False, verbose = False)
    
    hasil = []
    
    for i in range(0, rank.shape[0]):
        hasil.append({
            "laptop_peringkat":nama[i],
            "alternative":'a' + str(i+1),
            "score":rank[i][1]
        })

    sorted_list = sorted(hasil, key=lambda x: x['score'], reverse=True)
   

    send_data = json.dumps(sorted_list)
    
    return send_data


if __name__ == "__main__":
    app.run()        
    
