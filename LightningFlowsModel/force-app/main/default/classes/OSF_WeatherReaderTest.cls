@isTest
public with sharing class OSF_WeatherReaderTest {
    @testSetup 
    private static void setup() {
        Account accountsList = new Account(Name = 'Test weather', BillingCity='London');
        insert accountsList;
    }

    @isTest
    private static void testWeather() {
        Account account = [SELECT ID, BillingCity FROM Account WHERE Name = 'Test weather'];
        
        // Set mock callout class 
        Test.startTest();
        Test.setMock(HttpCalloutMock.class, new OSF_WeatherCalloutMock()); 
        Test.stopTest();
        
        OSF_WeatherReaderResult weatherResult = OSF_WeatherReader.getWeatherInfo(new List<String>{'London'})[0];
        
        System.assertEquals('mist', weatherResult.description);
        System.assertEquals(7, weatherResult.temperature);


    }
    
}