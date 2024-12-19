public class ManufacturerSetup {
    public static void createManufacturerObject() {
        MetadataService.CustomObject mfrObj = new MetadataService.CustomObject();
        mfrObj.fullName = 'Manufacturer__c';
        mfrObj.label = 'メーカー';
        mfrObj.pluralLabel = 'メーカー';
        mfrObj.nameField = new MetadataService.CustomField();
        mfrObj.nameField.type_x = 'Text';
        mfrObj.nameField.label = 'メーカー名';
        mfrObj.deploymentStatus = 'Deployed';
        mfrObj.sharingModel = 'ReadWrite';

        MetadataService.CustomField[] fields = new List<MetadataService.CustomField>();
        
        fields.add(MetadataServiceHelper.createTextField('ManufacturerCode__c', 'メーカーコード', 50));
        fields.add(MetadataServiceHelper.createTextField('Email__c', 'メールアドレス', 255));
        fields.add(MetadataServiceHelper.createTextField('Phone__c', '電話番号', 20));
        fields.add(MetadataServiceHelper.createPicklistField('Status__c', 'ステータス', 
            new List<String>{'有効', '無効'}));

        mfrObj.fields = fields;
    }
} 