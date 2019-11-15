## Save Wave

### Description
Save a text Wave or file Wave.

### URL
`/waves`

### Method
`POST`

### Headers
`Content-Type = application/x-www-form-urlencoded`

### URL Parameters
`None`

### Data Parameters
#### Text Wave
`code = wv12345678`\
`text = Hello world`

OR

#### File Wave
`code = wv12345678`\
`files[] = [uploaded file]`

### Success Response
**Code:** `200 OK`

**Content:**

**Text Wave**
```
{
    "code": "wv12345678",
    "text": "Hello world",
    "created_at": "2019-11-15T03:41:06.000Z"
}
```

OR

**File Wave**
```
{
    "code": "wv12345678",
    "text": null,
    "created_at": "2019-11-15T03:41:58.000Z",
    "files": [
        "http://138.197.151.168:3000/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBYnc9IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--fbde7ad8c6230156475188df99a227c27b74be05/Dog_Pomeranian_Mobile.jpg?disposition=attachment"
    ]
}
```

### Error Response
**Code:** `400 BAD REQUEST`\
**Content:**
```
{
    "error": {
        "code": [
            "has already been taken"
        ]
    }
}
```

OR

**Code:** `400 BAD REQUEST`\
**Content:** `None`
