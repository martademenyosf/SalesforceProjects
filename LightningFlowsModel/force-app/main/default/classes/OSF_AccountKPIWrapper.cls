/**********************************************************************
 * @Name         : OSF_AccountKPIWrapper
 * @Description  : Wrapper class for Account KPIs
 * @Created By   : Marta Demeny
 * @Created Date : 18 jun. 2022
 * @Modification Log: 
 ********************************************************************
 * Version		Developer		Date			Description
 *___________________________________________________________________
 *
 *********************************************************************/

public with sharing class OSF_AccountKPIWrapper {
    @AuraEnabled
    public Integer openCasesCount;

    @AuraEnabled
    public Integer casesCount;

    @AuraEnabled
    public Date customerSince;

    @AuraEnabled
    public Integer ordersCount;

    @AuraEnabled
    public Date birthDay;

    @AuraEnabled
    public Integer avarageOrderValue;
}
