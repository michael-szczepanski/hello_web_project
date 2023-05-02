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