public class AdSetup {
    public static void createAdObject() {
        MetadataService.CustomObject adObj = new MetadataService.CustomObject();
        adObj.fullName = 'Ad__c';
        adObj.label = '広告';
        adObj.pluralLabel = '広告';
        adObj.nameField = new MetadataService.CustomField();
        adObj.nameField.type_x = 'Text';
        adObj.nameField.label = '広告名';
        adObj.deploymentStatus = 'Deployed';
        adObj.sharingModel = 'ReadWrite';

        MetadataService.CustomField[] fields = new List<MetadataService.CustomField>();
        
        fields.add(MetadataServiceHelper.createMasterDetailField('AdGroup__c', '広告グループ', 'AdGroup__c'));
        fields.add(MetadataServiceHelper.createTextField('AdCode__c', '広告コード', 50));
        fields.add(MetadataServiceHelper.createURLField('DestinationURL__c', 'リンク先URL'));
        fields.add(MetadataServiceHelper.createTextField('HeadLine__c', '見出し', 255));
        fields.add(MetadataServiceHelper.createLongTextAreaField('Description__c', '説明文', 32768));
        fields.add(MetadataServiceHelper.createTextField('MediaURL__c', 'メディアURL', 255));
        fields.add(MetadataServiceHelper.createPicklistField('MediaType__c', 'メディアタイプ', 
            new List<String>{'画像', '動画', 'テキスト'}));
        fields.add(MetadataServiceHelper.createNumberField('Impressions__c', 'インプレッション数', 18, 0));
        fields.add(MetadataServiceHelper.createNumberField('Clicks__c', 'クリック数', 18, 0));
        fields.add(MetadataServiceHelper.createNumberField('CTR__c', 'クリック率', 18, 2));

        adObj.fields = fields;
    }
} 