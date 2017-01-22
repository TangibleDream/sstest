Feature: Sprout Social Twitter Component
  Scenario: Spout social will reject any tweets without messages.
    When I login to system
    And I access twitter on system
    And I send an empty tweet
    Then I will get a reject message for missing a status