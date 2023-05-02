## 1. Design the test signature
```plain

Method: GET
Path: /names
Query params: List of names separated by commas
```
## 2. Design the response
```plain
Status 200 OK
list of names separated by ", "
```

## 3. Write examples
```plain
Request:
GET /names?names=Mike

Expected response:
Mike

Request:
GET /names?names=Mike,Will

Expected response:
Mike, Will
```

## Challenge 

<!-- Test-drive a new route POST /sort-names which receives a list of names (as a comma-separated string) and return the same list, sorted in alphabetical order.

Here's a description of the expected behaviour:

# Request:
POST http://localhost:9292/sort-names

# With body parameters:
names=Joe,Alice,Zoe,Julia,Kieran

# Expected response (sorted list of names):
Alice,Joe,Julia,Kieran,Zoe -->

## 1. Design the test signature
```plain
Method: POST
Path: /sort-names
Body: a list of names as a comma-separated string

```
## 2. Design the response
```plain
Status 200 OK
an alphabetical list of names as a comma-separated string
```

## 3. Write examples

1.

Request:

POST /sort-names

params: Joe,Alice,Zoe,Julia,Kieran

Expected reponse:

Alice,Joe,Julia,Kieran,Zoe

2. 

Request:

POST /sort-names

params: Joe

Expected reponse:

Joe