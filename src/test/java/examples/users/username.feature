
Feature: Use generated data

  Background: test data generator
#The below line is added to karate.config
#IF not added there, can be added within the feature file, 
#config.faker = Java.type('com.github.javafaker.Faker') 
   * def fakerObj =  new faker()
* def fName = fakerObj.name().firstName()
* def lName = fakerObj.name().lastName()
* def mailId = fName+'.'+lName+'@test.com'
   
   
  Scenario: use data generater function
    * print fName
    * print mailId
  