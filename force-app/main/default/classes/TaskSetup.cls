public class TaskSetup {
    public static void createTaskObject() {
        MetadataService.CustomObject taskObj = new MetadataService.CustomObject();
        taskObj.fullName = 'Task__c';
        taskObj.label = 'タスク';
        taskObj.pluralLabel = 'タスク';
        taskObj.nameField = new MetadataService.CustomField();
        taskObj.nameField.type_x = 'Text';
        taskObj.nameField.label = 'タスク名';
        taskObj.deploymentStatus = 'Deployed';
        taskObj.sharingModel = 'ReadWrite';

        MetadataService.CustomField[] fields = new List<MetadataService.CustomField>();
        
        fields.add(MetadataServiceHelper.createMasterDetailField('Campaign__c', 'キャンペーン', 'Campaign__c'));
        fields.add(MetadataServiceHelper.createDateTimeField('DueDate__c', '期限'));
        fields.add(MetadataServiceHelper.createPicklistField('Priority__c', '優先度', 
            new List<String>{'高', '中', '低'}));
        fields.add(MetadataServiceHelper.createPicklistField('Status__c', 'ステータス', 
            new List<String>{'未着手', '進行中', '完了', '中止'}));
        fields.add(MetadataServiceHelper.createLookupField('AssignedTo__c', '担当者', 'User'));
        fields.add(MetadataServiceHelper.createLongTextAreaField('Description__c', '詳細', 32768));

        taskObj.fields = fields;
    }
} 