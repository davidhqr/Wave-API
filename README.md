# Wave-API

[![Contact](https://img.shields.io/badge/contact-%40davidhqr-blue)](https://github.com/davidhqr)
[![GitHub license](https://img.shields.io/github/license/davidhqr/Wave-API)](https://github.com/davidhqr/Wave-API)
[![GitHub issues](https://img.shields.io/github/issues/davidhqr/Wave-API)](https://github.com/davidhqr/Wave-API/issues)
[![GitHub stars](https://img.shields.io/github/stars/davidhqr/Wave-API)](https://github.com/davidhqr/Wave-API/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/davidhqr/Wave-API)](https://github.com/davidhqr/Wave-API/network)

## Overview

This is the Wave Backend API which is responsible for the creation and retrieval of Waves.

Wave Flutter (Android & iOS) App: https://github.com/davidhqr/Wave-App \
Wave React Web App: https://github.com/lindaayangg/Wave-Web

## Endpoints

**`GET` `/waves/:code`** [Retrieve a Wave by code](GET_WAVE.md)\
**`POST` `/waves`** [Save a wave](SAVE_WAVE.md)

Test the endpoints with Postman: https://www.getpostman.com/collections/739d155fdfb50f5c0773

## Database Tables

### waves
| Field      | Type         | Description                                     |
|------------|--------------|-------------------------------------------------|
| id         | BIGINT(20)   | Wave id                                         |
| code       | VARCHAR(255) | Wave code                                       |
| text       | VARCHAR(255) | Text contained in the Wave if it is a text Wave |
| created_at | DATETIME     | Date that the Wave was created                  |
| updated_at | DATETIME     | Date that the Wave was last updated             |

## Usage

### Development

To run the Wave API locally, execute the following commands:
1. Execute `git clone git@github.com:davidhqr/Wave-API.git`
2. Execute `bundle install`
3. Execute `rails server`
4. Navigate to http://localhost:3000

### Production

Live Production API: http://138.197.151.168:3000

To deploy the API on the server:
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
