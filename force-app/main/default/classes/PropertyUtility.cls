public class PropertyUtility {
    public static void newListedProperties (){
    List<Property__c> newPropList = [Select name, Broker__r.email__c,days_on_market__c from property__c
                        where days_on_market__c <=30];
        for (Property__c prop:newPropList){
            
            String propEmail = prop.name + ':' + prop.broker__r.email__c;
            System.debug(propEmail);
        }
    }

}