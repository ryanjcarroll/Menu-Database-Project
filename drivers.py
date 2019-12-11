import mysql.connector
import json

def application(env, start_response):
    """the main uWSGI application for displaying data from the MySQL database on a webpage"""
    start_response('200 OK',[('Content-Type', 'text/html')])

    #access the SQL database with credentials of user 'foo'
    creds = {'user':'foo',
             'database':'finalproject',
             'password':'Passwd123!',
             'auth_plugin':'mysql_native_password'}
    cnx = mysql.connector.connect(**creds)
    cursor = cnx.cursor(dictionary=True)
    
    testquery = "SELECT * from drivers;"
    
    if(env["REQUEST_METHOD"] == "GET"):
        print("get request established")
        input = env['QUERY_STRING']
        if input:
            id = input.split("=")[1]
            print("id = " + id)
            testquery = "SELECT * from drivers WHERE id = " + str(id) + ";"
              
    cursor.execute(testquery)
    testreturn = cursor.fetchall()
              
    html = json.dumps(testreturn)
              
    return html.encode()
