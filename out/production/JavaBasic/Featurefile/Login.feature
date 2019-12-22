Feature: Login
  Scenario: User should be able to login successfully with valid credentials
    Given user is on Login page
    When User type valid username "krutika.patel" and
    And user type valid password "Abc123"
    And user click on login button
    Then user should be able to log in
    And user is able to see successfull message on Homepage

    Scenario: User should not be able to login with empty Username and Valid Password
      Given user is on Login page
      When User type valid password "Abc123"
      And user click on login button
      Then user should not be able to login
      And error message should be displayed

      Scenario: User should not be able to login with Valid Username and empty Password
        Given user is on Login page
        When User type valid username "krutika.patel" and
        And user click on login button
        Then user should not be able to login
        And error message should be displayed

        Scenario: User should not be able to login with Invalid Username and Valid Password
          Given user is on Login Page
          When User type Invalid Username "kspatel" and
          And user type valid password "Abc123"
          And user click on login button
          Then user should not be able to login
          And error message should be displayed

          Scenario: User should not be able to login with Valid Username and Invalid Password
            Given user is on Login Page
            When User type Valid Username "krutika.patel" and
            And user type Invalid password "Abc"
            And user click on login button
            Then user should not be able to login
            And error message should be displayed

            Scenario: User should not be able to login with empty Username and Invalid Password
              Given user is on Login Page
              When user type Invalid password "Abc"
              And user click on login button
              Then user should not be able to login
              And error message should be displayed

              Scenario: User should not be able to login with Invalid Username and empty Password
                Given user is on Login Page
                When user type Invalid Username "kspatel"
                And user click on login button
                Then user should not be able to login
                And error message should be displayed

                Scenario: User should not be able to login with Invalid Username and Invalid Password
                  Given user is on Login Page
                  When user type Invalid Username "kspatel" and
                  And user type Invald password "Abc"
                  And user click on login button
                  Then user should not be able to login
                  And error message should be displayed

