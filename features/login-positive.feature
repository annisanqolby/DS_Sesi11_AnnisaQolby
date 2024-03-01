@digital-skola @login
Feature: Swag Labs - Login
  Background: User on the login page
    Given annisa is on the login page

@positive
  Scenario: As a standard_user, I want to log in successfully
    When annisa login with "standard_user" credentials
    Then annisa should see home page

   Scenario: As a problem_user, i want to login successfully
     When annisa login with "problem_user" credentials
     Then annisa should see problem page

   Scenario: As a visual_user, i want to login successfully
     When annisa login with "visual_user" credentials
     Then annisa should see visual User page