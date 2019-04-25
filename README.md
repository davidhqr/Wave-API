## Wave-API

This is the Wave Backend API which is responsible for the creation and retrieval of Waves.

## Endpoints

**`GET` waves/:code** Retrieves a wave by its code (TODO: Full documentation in another .md file)\
**`POST` waves** Saves a wave including its code, text, and files (TODO: Full documentation in another .md file)

## Usage

### Development

To run the Wave API, execute the following commands:
1. `git clone git@github.com:davidhqr/Wave-API.git`
2. `bundle install`
3. `rails server`
4. `Navigate to http://localhost:3000`

### Production

This article was followed while deploying the API to `appserver`: [Deploying Ruby App To Production](https://www.phusionpassenger.com/library/walkthroughs/deploy/ruby/ownserver/nginx/oss/el7/deploy_app.html)

Notes:
- We are using `Phusion Passenger` as an integration with `Nginx`
- Currently, the API exists at `/var/www/wave-api` on `appserver`
- Use `systemctl status nginx` to check the status
- Production secrets are currently in the code. **Must be moved to secret environment variables before changing repo to public**
