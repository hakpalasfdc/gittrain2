public with sharing class AccountController {
  @AuraEnabled(cacheable=true)
    public static List<Contact> getRelatedContacts(Id accountId) {
        return [
            SELECT Name, Id, Title, Email, Phone
            FROM Contact
            WHERE AccountId = '0013h000004bucsAAA'
            WITH SECURITY_ENFORCED
       ];
    }

    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts() {
        return [
            SELECT Name, Id, AnnualRevenue, Industry
            FROM Account
            WITH SECURITY_ENFORCED
            ORDER BY Name
        ];
    }
}