@digital-skola @login
Feature: Swag Labs - Login
  Background: User on the login page
    Given annisa is on the login page


 @negative
  Scenario: As a locked_out_user, I should get error message
    When annisa login with "locked_out_user" credential
    Then annisa should see error "Epic sadface: Sorry, this user has been locked out."