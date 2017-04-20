# README

Deploy via [beanstalk](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/create_deploy_Ruby_rails.html).

Current production server is at [http://yoyo.us-west-2.elasticbeanstalk.com](http://yoyo.us-west-2.elasticbeanstalk.com).

# Testing
```
$ rails test
```

# API

## /yo
## /yo.json

### Request

```
GET /yo
GET /yo.json
```

```
# optional params
{
  name: "your name"
}
```

### Success response
```
# /yo
yo

# /yo?name=ed
yo ed

# /yo.json
{
    "code": 200,
    "status": "ok",
    "message": "yo"
}

# /yo.json?name=ed
{
    "code": 200,
    "status": "ok",
    "message": "yo ed"
}
```

### Error response
```
{
    "code": 500,
    "status": "error",
    "error": "Internal error"
}
```
