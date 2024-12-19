public class AdGroupSetup {
    public static void createAdGroupObject() {
        MetadataService.CustomObject adGroupObj = new MetadataService.CustomObject();
        adGroupObj.fullName = 'AdGroup__c';
        adGroupObj.label = '広告グループ';
        adGroupObj.pluralLabel = '広告グループ';
        adGroupObj.nameField = new MetadataService.CustomField();
        adGroupObj.nameField.type_x = 'Text';
        adGroupObj.nameField.label = '広告グループ名';
        adGroupObj.deploymentStatus = 'Deployed';
        adGroupObj.sharingModel = 'ReadWrite';

        MetadataService.CustomField[] fields = new List<MetadataService.CustomField>();
        
        fields.add(MetadataServiceHelper.createMasterDetailField('Campaign__c', 'キャンペーン', 'Campaign__c'));
        fields.add(MetadataServiceHelper.createTextField('GroupCode__c', 'グループコード', 50));
        fields.add(MetadataServiceHelper.createCurrencyField('Budget__c', '予算'));
        fields.add(MetadataServiceHelper.createPicklistField('Status__c', 'ステータス', 
            new List<String>{'アクティブ', '一時停止', '終了'}));
        fields.add(MetadataServiceHelper.createTextAreaField('TargetingCriteria__c', 'ターゲティング条件'));
        fields.add(MetadataServiceHelper.createNumberField('MaxBid__c', '最大入札額', 18, 2));

        adGroupObj.fields = fields;
    }
} 