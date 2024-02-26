@digital-skola @login
Feature: Swag Labs - Login
  Background: User on the login page
    Given annisa is on the login page

@positive
  Scenario: As a standard_user, I want to log in successfully
    When annisa login with "standard_user" credential
    Then annisa should see home page