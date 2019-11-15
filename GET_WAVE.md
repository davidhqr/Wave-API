## GET Wave

### URL
/waves/:code

### Method
`GET`

### URL Params
None

### Data Params
None

### Success Response
**Code:** 200 OK\
**Content:**
```
{
    "code": "wv7Fd8ji5F",
    "text": "Hello from Postman!",
    "created_at": "2019-11-15T03:07:06.000Z"
}
```
```
{
    "code": "wv8fL3mz0f",
    "text": null,
    "created_at": "2019-11-15T03:16:03.000Z",
    "files": [
        "http://138.197.151.168:3000/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBYnM9IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--2958b8eef8dace3af5262ca170896350ea24d379/Dog_Pomeranian_Mobile.jpg?disposition=attachment"
    ]
}
```

### Error Response
**Code:** 404 NOT FOUND\
**Content:** None
