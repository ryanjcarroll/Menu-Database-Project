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
    
    testquery = "SELECT * from menuItems;"

    cursor.execute(testquery)
    testreturn = cursor.fetchall()

    html = json.dumps(testreturn)
    
    return html.encode()
