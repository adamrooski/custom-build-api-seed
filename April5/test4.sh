#!/bin/bash
#This script will test the 4 HTTP endpoints
#Adam Mejia
#filename: test4.sh
http GET http://localhost:5000/students/
http POST http://localhost:5000/students/ name="Jim Jon"
http GET http://localhost:5000/students/2
http PUT http://localhost:5000/students/2 name="Joe Jack"
