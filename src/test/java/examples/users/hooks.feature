Feature: Hooks
   
   Background: hooks
   * def createJob = callonce read("../../helper/Dummy.feature")
   
   
   
  Scenario: First scenario
    * print 'this is first scenario'

  
  Scenario: Second scenarios
     * print 'this is second scenario'