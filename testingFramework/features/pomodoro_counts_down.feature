Feature: Pomodoros count down time

  Scenario:  Time remaining should count down in seconds
    Given  I have started a pomodoro
    When One second has gone by
    Then the time left should show "24:59"

  Scenario: Time remaining should count down minutes too
    Given I have started a pomodoro
    When One minute has gone by
    Then the time left should show "24:00"