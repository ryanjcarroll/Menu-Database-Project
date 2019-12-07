import mysql.connector
import json

def application(env, start_response):
    """the main uWSGI application for displaying data from the MySQL database on a webpage"""
    start_response('200 OK',[('Content-Type', 'text/html')])

    html = ""

    #access the SQL database with credentials of user 'foo'
    creds = {'user':'foo',
             'database':'finalproject',
             'password':'Passwd123!',
             'auth_plugin':'mysql_native_password'}
    cnx = mysql.connector.connect(**creds)
    cursor = cnx.cursor(dictionary=True)
    
    testquery = "SELECT * from menuItem WHERE restaurantId = 2;"

    cursor.execute(testquery)
    testreturn = cursor.fetchall()
    
    loaded = json.dumps(testreturn)

    html = loaded
    return html.encode()
