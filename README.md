The app has been implemented using following technologies
  * Ruby 2.5.1
  * Ruby on Rails 5.2.2
  * React 16.6.3
  * PostgreSQL 10.6

The app has been deployed to Heroku. Try it [here](https://github-fetching-app.herokuapp.com/)

If you want to run it localy, execute commands listed below:
  * run `bundle && yarn` from project dir
  * now you need to set up github app credentials(`app_id` && `app_secret`).
    - In case you have my `master.key`, just place in under `config/` dir
    - In other cases you need to delete `config/credentials.yml.enc` file, then run `rails credentials:edit` and set you own credentials
  * run `rails db:setup`
  * run `rails s`
  * open `localhost:3000`

Here we go:)
