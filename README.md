
# ShowOff Technical Test : Ruby on Rails

This is an application built for the thechnical test set by http://showoff.ie/

## Getting started
### Set Environment Variables

This application make use of these Environment variables for working.

 1. `SHOWOFF_URL`
 2. `SHOWOFF_CLIENT_ID`
 3. `SHOWOFF_CLIENT_SECRET`

 For development you can use the `.env.example` file for reference.
 copy the `.env.example` file to `.env` add your variables in there.

You can either use docker to develop this or you can manually install ruby and run the app in the traditional way.

### Run using docker

first you have to install docker.
instructions on installing docker : https://docs.docker.com/machine/install-machine/

once its installed make sure you have added the `.env` file as instructed above. docker-compose make use of it to set the environment variables

```
# build all the necessary containers.
$ docker-compose build

# start the application
$ docker-compose up
```

### Run Manually
This application is made using Ruby on Rails. So first you need to install ruby version **2.6.3** to get started.

next install all the required gems via bundler
```
$ bundle install
```
If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```
## TESTS
This project uses `rspec` as the testing library

to run the test if you are using docker use this command

```
$ docker-compose run -e "RAILS_ENV=test" web rake spec
```

## Author
Julius Olatokunbo
itddd.julius@gmail.com
www.raiiar.com


