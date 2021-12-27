import mysql.connector
import googlemaps
import csv
from datetime import datetime
import pymysql.cursors
import requests
# Connect to the database
from googlemaps.geocoding import reverse_geocode

mydb = pymysql.connect(host='localhost',
                             user='root',
                             password='Camille_Legz',
                             database='student',
                             cursorclass=pymysql.cursors.DictCursor)




headers = {
    'apiKey': ""
}
mycursor = mydb.cursor()
mycursor.execute("SELECT id, latitude, longitude FROM student.stations")
list1 = []
lat = []
lon = []
mystations= []
while True:

    list = mycursor.fetchone()
    if not list:
        break
    url = "https://api.myptv.com/geocoding/v1/locations/by-position/"+str(list['latitude'])+"/"+str(list['longitude'])+"?language=en"
    lat.append(list['latitude'])
    lon.append(list['longitude'])

    response = requests.request("GET", url, headers=headers)
    #print(str(response.json()).split("postalCode': '")[1][0:5])
    #list1.append(str(response.json()).split("postalCode': '")[1][0:5])
    mystations.append((str(response.json()).split("postalCode': '")[1][0:5], str(list['id'])))
print(mystations)
cursor = mydb.cursor()
cursor.executemany("UPDATE stations SET zipcodes = %s WHERE id = %s", mystations)
mydb.commit()
