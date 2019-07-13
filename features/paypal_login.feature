Feature: Login Paypal
  Scenario Outline: Login to payapal website wrong password
    Given I am on a paypal website
    #When I enter <username> and <password>
    And I validate the heading shows as " Send money to friends and family"
    And I should validate the link for favorite shops is "www.paypal.com/us/webapps/mpp/about-paypal-productscucu"
  #    Then I should see the error message page

    Examples:
    | username                | password |
    | rabbi72311@yahoo.com    | tttttt   |
    | zaid.usa007@gmail.com   | pass2    |