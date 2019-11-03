## Wave-API

This is the Wave Backend API which is responsible for the creation and retrieval of Waves.

Wave Flutter App: https://github.com/davidhqr/Wave-App

## Endpoints

**`GET` waves/:code** Retrieves a wave by its code  
**`POST` waves** Saves a wave including its code, text, and files

## Usage

### Development

To run the Wave API locally, execute the following commands:
1. Execute `git clone git@github.com:davidhqr/Wave-API.git`
2. Execute `bundle install`
3. Execute `rails server`
4. Navigate to http://localhost:3000

### Production

Live Production API: http://138.197.151.168

This article was followed while deploying the API to `appserver`: [Deploying Ruby App To Production](https://www.phusionpassenger.com/library/walkthroughs/deploy/ruby/ownserver/nginx/oss/el7/deploy_app.html)

Notes:
- We are using `Phusion Passenger` as an integration with `Nginx`
- Currently, the API exists at `/var/www/wave-api` on `appserver`
- Use `systemctl status nginx` to check the status
