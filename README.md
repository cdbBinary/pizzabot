[![Build Status](https://travis-ci.org/DeweyBanks/pizzabot.svg?branch=updated)](https://travis-ci.org/DeweyBanks/pizzabot)
[![Coverage Status](https://coveralls.io/repos/github/DeweyBanks/pizzabot/badge.svg?branch=updated)](https://coveralls.io/github/DeweyBanks/pizzabot?branch=updated)
[![codecov](https://codecov.io/gh/DeweyBanks/pizzabot/branch/master/graph/badge.svg)](https://codecov.io/gh/DeweyBanks/pizzabot)
[![codebeat badge](https://codebeat.co/badges/9d19d76b-d5d0-4fcf-80aa-52eac85c2913)](https://codebeat.co/projects/github-com-deweybanks-pizzabot-updated)

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
