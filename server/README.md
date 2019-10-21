# tOUItter, Backend

Shippio's technical assignment.
This is the server-side. Please head over [here](https://github.com/Steppico/touitter/tree/master/touitter_client) for the client side.

## Project setup

```
bundle install
```

### Migration

```
rails db:migrate
```

### Development

```
rails s
```

## How to start

The page will load at http://localhost:3000.

## NB

the mailer service will work only setting an ENV file, on the server side, to sendgrid's user and password.
Please check the email sent you to have them.

How to setup this ENV file:

1. create a file named "local_env.yml" in ~/config path.
2. insert the required data as such:
   SENDGRID_USER: "user"
   SENDGRID_PASS: "password"
