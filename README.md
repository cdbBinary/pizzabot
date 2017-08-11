https://travis-ci.org/DeweyBanks/pizzabot.svg?branch=master
[![Coverage Status](https://coveralls.io/repos/github/DeweyBanks/pizzabot/badge.svg?branch=master)](https://coveralls.io/github/DeweyBanks/pizzabot?branch=master)


# Welcome to Pizzabot!
A Ruby app that gives directions and drops off pizzas.

## To Use
  - navigate to root of project
  - $ bundle install
  - format grid size and target locations into a string
    -example: "5x5 (1,4) (2, 3)"
  - To get directions and locations:
    $ ./pizzabot "5x5 (1,4) (2, 3)"
  - To run test suite:
    $ rspec


# This branch has been updated based on the feedback I got.

- method names could be improved
- failed to use errors to stop execution
