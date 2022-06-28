public with sharing class OSF_UpdateWeatherInfoForAccounts implements Schedulable {

    public void execute(SchedulableContext ctx) {
        Database.executeBatch(new OSF_UpdateAccountsBatch());
    }

}