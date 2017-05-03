[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

## Projet Objective
Build and test my custom API. Create a working application with two backend resources (on postgres) having a (one-to-many) relationship, using the cusom API. The API will be hosted on a heroku account.

 ### Mission accepted!

API-Repo: https://github.com/kqngo/burger-joint-api
Heroku: https://burger-joint-p2.herokuapp.com/

Client-repo: https://github.com/kqngo/burger-joint-client
Applicaiton: https://kqngo.github.io/burger-joint-client/

### My ERD
![p2_erd](https://cloud.githubusercontent.com/assets/26236941/25646407/0f7e9dfe-2f86-11e7-92bf-1987a2c8e9e8.JPG)

## Rails-API
My custom API derives from General Assembly's rails-api. It can be [Download] and installed. Please note that the dependencies and Gemfile have been pre-installed during install-fest, which was part of WDI's orientation.

## Installation
1.  [Download](../../archive/master.zip) this template.
2.  Unzip and rename the template directory.
3.  Empty [`README.md`](README.md) and fill with your own content.
4.  Move into the new project and `git init`.
5.  Install dependencies with `bundle install`.
6.  Rename your app module in `config/application.rb` (change
    `RailsApiTemplate`).
7.  Rename your project database in `config/database.yml` (change
    `'rails-api-template'`).
8.  Create a `.env` for sensitive settings (`touch .env`).
9.  Generate new `development` and `test` secrets (`bundle exec rake secret`).
10.  Store them in `.env` with keys `SECRET_KEY_BASE_<DEVELOPMENT|TEST>`
    respectively.
11.  In order to make requests to your deployed API, you will need to set
    `SECRET_KEY_BASE` in the environment of the production API (using `heroku
    config:set` or the Heroku dashboard).
12.  In order to make requests from your deployed client application, you will
    need to set `CLIENT_ORIGIN` in the environment of the production API (e.g.
    `heroku config:set CLIENT_ORIGIN https://<github-username>.github.io`).
13.  Setup your database with `bin/rake db:nuke_pave` or `bundle exec rake
    db:nuke_pave`.
14.  Run the API server with `bin/rails server` or `bundle exec rails server`.

### Authentication
| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |


### Resources
#### Rails-Heroku Setup Guide
https://github.com/ga-wdi-boston/rails-heroku-setup-guide

#### Deploy to heroku
```
git checkout master
git merge my-feature # merge your working code
git push # update GitHub
git push heroku master # update heroku
```


### Reset Database without dropping

Helpful command to get you out of a bind.

**locally**

```sh
bin/rake db:migrate VERSION=0
bin/rake db:migrate db:seed db:examples
```

**heroku**

```sh
heroku run rake db:migrate VERSION=0
heroku run rake db:migrate db:seed db:examples
```
## Heroku Command Reference

A full list of Heroku commands can be access by running `heroku --help`; below
are some of the more common ones.

|                Commands                |                                                 Behavior                                                 |
| -------------------------------------- | -------------------------------------------------------------------------------------------------------- |
|           `heroku apps:info`           |                                  Get info about ALL of our Heroku apps.                                  |
| `heroku apps:info --app {name_of_app}` |                                  Get info about a specific Heroku app.                                   |
| `heroku apps:open --app {name_of_app}` |            Open any given Heroku app (other than the one we're currently working with.)             |
|             `heroku logs`              |                                   Logs from the currently running app.                                   |
|              `heroku ps`               |                              Processes running in your heroku application.                               |
|           `heroku releases`            |      Each time you deploy to heroku you are creating a "release". This command shows all releases.       |
|            `heroku pg:info`            | Access Postgres from within Heroku and show the heroku plan, connections, pg version, data size, tables. |
|            `heroku pg:psql`            |                                      ... and open a `psql` console.                                      |
|            `heroku run ...`            |                                    Run a program from within Heroku.                                     |
|            `heroku config`             |                           Environmental variables in your current Heroku app.                            |
|            `heroku config:set SECRET_KEY_BASE=$(rake secret)`            |                                    Set Secret Key                                     |
|            `heroku config:set SECRET_TOKEN=$(rake secret)`            |                                    Set TOKEN                                     |
|            `heroku config:set CLIENT_ORIGIN=https://yourgithubname.github.io`            |                                    Set CLIENT_ORIGIN                                     |
|            `heroku apps:rename newname (optional)`            |                                    Rename heroku app name (entirely optional)                                     |
|            `heroku restart`            |                                    restart heroku                                     |
|            `heroku open`            |                                    Open your heroku app in default browser                                     |
|            `heroku --help`            |                                    Displays a heroku CLI usage summary.                                     |

## Heroku Troubleshooting

These are the commands required for deploying to heroku with rails. If your heroku deployment isn't working as expected, review these steps carefully.
- `heroku create`
- `git push heroku master`
- `heroku run rake db:migrate`
- `heroku run rake db:seed`
- `heroku config:set SECRET_KEY_BASE=$(rake secret)`
- `heroku config:set SECRET_TOKEN=$(rake secret)`
- `heroku config:set CLIENT_ORIGIN=https://yourgithubname.github.io`
- `heroku apps:rename newname` (optional)
- `heroku restart`
- `heroku open`
-
## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
