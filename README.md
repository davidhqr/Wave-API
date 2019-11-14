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

To deploy the product API on the server:
1. Execute `cd /var/www/wave-api`
1. Execute `git pull`
2. Execute `bundle install --deployment --without development test`
3. Execute `bundle exec rake assets:precompile db:migrate RAILS_ENV=production`
4. Execute `systemctl restart nginx`
5. Execute `systemctl status nginx` to check the status

This article was followed while deploying the API: [Deploying Ruby App To Production](https://www.phusionpassenger.com/library/walkthroughs/deploy/ruby/ownserver/nginx/oss/el7/deploy_app.html)

## Notes
- We are using Phusion Passenger as an integration with nginx
- To enable CORS, we added headers in the Passenger config for Wave
- Passenger config for Wave is located at `/etc/nginx/conf.d/wave-api.conf`
