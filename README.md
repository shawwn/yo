# README

Current production server is at [http://yoyo.us-west-2.elasticbeanstalk.com](http://yoyo.us-west-2.elasticbeanstalk.com).

# Setup
`npm run setup`, then follow the [beanstalk guide](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/create_deploy_Ruby_rails.html).

# Testing
`npm run test`

To test the production response time, install [vegeta](https://github.com/tsenart/vegeta), then run:

`npm run attack`

# Deploy
`npm run test`. If all tests pass, `npm run deploy`.

# Monitoring
Use Elastic Beanstalk's monitoring facilities.

# API

[Swagger schema](http://yoyo.us-west-2.elasticbeanstalk.com/api-docs/v1/swagger.json)

[Api docs](http://yoyo.us-west-2.elasticbeanstalk.com/api-docs).

This app uses [rwswag](https://github.com/domaindrivendev/rswag). The
API is defined in `spec/integration/*_spec.rb` files. After modifying
these files, run `npm run doc` to re-generate the swagger API and
documentation.

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
