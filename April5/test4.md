HTTP/1.0 200 OK
Content-Type: application/json
Content-Length: 185
Server: Werkzeug/0.9.6 Python/2.7.3
Date: Tue, 28 Apr 2015 01:56:16 GMT

{
  "students": [
    "http://localhost:5000/students/1", 
    "http://localhost:5000/students/2", 
    "http://localhost:5000/students/3", 
    "http://localhost:5000/students/4"
  ]
}
HTTP/1.0 201 CREATED
Content-Type: application/json
Content-Length: 2
Location: http://localhost:5000/students/5
Server: Werkzeug/0.9.6 Python/2.7.3
Date: Tue, 28 Apr 2015 01:56:19 GMT

{}
HTTP/1.0 200 OK
Content-Type: application/json
Content-Length: 75
Server: Werkzeug/0.9.6 Python/2.7.3
Date: Tue, 28 Apr 2015 01:56:22 GMT

{
  "name": "Joe Jack", 
  "self_url": "http://localhost:5000/students/2"
}
HTTP/1.0 200 OK
Content-Type: application/json
Content-Length: 2
Server: Werkzeug/0.9.6 Python/2.7.3
Date: Tue, 28 Apr 2015 01:56:25 GMT

{}
