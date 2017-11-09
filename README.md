# Rails with AWS SES Example
This is a sample Rails project to send test emails using AWS SES in Sandbox mode.

## Installation
1. Clone this Rails app
1. Verify 2 emails in AWS Console
1. Create your AWS SES credentials
1. Replace the following environment variables in `/config/application.yml` to your own values
    1. `SES_USERNAME`
    1. `SES_PASSWORD`
    1. `FROM_EMAIL`
    1. `TO_EMAIL`

## Rspec Example
There is also an Rspec test to cover the testing side of sending emails in Rails. Simply run `$ rspec --format documentation` to see a test example.
