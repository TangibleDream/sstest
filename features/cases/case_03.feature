Feature: Sprout Social Twitter Component
  Scenario: Spout social users can schedule tweets for future delivery.
    When I login to system
    And I access publishing
    And I schedule a future tweet
    Then I will see it as an upcoming message
    And If I wait for it to send
    And I access the system message section
    Then I will find my scheduled test tweet