Feature: Sprout Social Twitter Component
  Scenario: Spout social users can send tweets through our system.
    When I login to system
    And I access twitter on system
    And I send a tweet
    And I access the system message section
    And I observe my sent tweets
    Then I will find my test tweet