Feature: Sprout Social Twitter Component
  Scenario: Spout social users can respond to tweets.
    When I login to system
    And I access twitter on system
    And I send a tweet
    And I access the system message section
    And reply to my test tweet
    Then I will send a reply successfully