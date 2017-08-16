[![Build Status](https://travis-ci.org/DeweyBanks/pizzabot.svg?branch=updated)](https://travis-ci.org/DeweyBanks/pizzabot)
[![Coverage Status](https://coveralls.io/repos/github/DeweyBanks/pizzabot/badge.svg?branch=updated)](https://coveralls.io/github/DeweyBanks/pizzabot?branch=updated)
[![Test Coverage](https://codeclimate.com/github/codeclimate/codeclimate/badges/coverage.svg)](https://codeclimate.com/github/DeweyBanks/pizzabot/coverage)
[![codebeat badge](https://codebeat.co/badges/9d19d76b-d5d0-4fcf-80aa-52eac85c2913)](https://codebeat.co/projects/github-com-deweybanks-pizzabot-updated)

# Welcome to Pizzabot!
A Ruby app that gives directions and drops off pizzas.

## To Use
  - download or clone repo
  - navigate to root of project
  - $ bundle install
  - format grid size and target locations into a string
    -example: "5x5 (1,4) (2, 3)"
  - To get directions and locations:
    $ ./pizzabot "5x5 (1,4) (2, 3)"
  - To run test suite:
    $ rspec

## The Challenge

Instruct Pizzabot on how to deliver pizzas to all the houses in a neighborhood. In more specific terms, given a grid (where each point on the grid is one house) and a list of points representing houses in need of pizza delivery, return a list of instructions for getting Pizzabot to those locations and delivering. An instruction is one of: N: Move north S: Move south E: Move east W: Move west D: Drop pizza

Pizzabot always starts at the origin point, (0, 0). As with a Cartesian plane, this point lies at the most south-westerly point of the grid. Therefore, given the following input: $ ./pizzabot "5x5 (1, 3) (4, 4)" one correct solution would be: ENNNDEEEND

In other words: move east once and north thrice; drop a pizza; move east thrice and north once; drop a final pizza. If you'd prefer to avoid stdin, or work predominantly in a platform that makes it difficult to use, the equivalent solution expressed as an integration test is just fine. The API is entirely up to you, as long as the test exercises functionality that accepts and returns properly formatted strings: assertEqual(pizzabot("5x5 (1, 3) (4, 4)"), "ENNNDEEEND")

There are multiple correct ways to navigate between locations. We do not take optimality of route into account when grading: all correct solutions are good solutions.
