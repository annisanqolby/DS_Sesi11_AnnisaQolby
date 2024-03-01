@digital-skola @login
Feature: Swag Labs - Login
  Background: User on the login page
    Given annisa is on the login page

 @negative
  Scenario: As a locked_out_user, I should get error message
    When annisa login with "locked_out_user" credentials
    Then annisa should see error "Epic sadface: Sorry, this user has been locked out."

  Scenario: As a no_user, I should get error message
    When annisa login with "no_user" credentials
    Then annisa should see error "Epic sadface: Username and password do not match any user in this service"