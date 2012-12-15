Feature: Starting a pomodoro timer
  Scenario: Starting a pomodoro should set the time left to 25 minutes
    When I start a pomodoro
    Then the time left should show "25:00"