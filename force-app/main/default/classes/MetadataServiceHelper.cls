public class MetadataServiceHelper {
    public static MetadataService.CustomField createMasterDetailField(String name, String label, String referenceTo) {
        MetadataService.CustomField field = new MetadataService.CustomField();
        field.fullName = name;
        field.label = label;
        field.type_x = 'MasterDetail';
        field.referenceTo = referenceTo;
        field.relationshipLabel = label;
        field.relationshipName = name.replace('__c', '__r');
        field.writeRequiresMasterRead = false;
        return field;
    }

    public static MetadataService.CustomField createTextField(String name, String label, Integer length) {
        MetadataService.CustomField field = new MetadataService.CustomField();
        field.fullName = name;
        field.label = label;
        field.type_x = 'Text';
        field.length = length;
        field.unique = false;
        return field;
    }

    public static MetadataService.CustomField createURLField(String name, String label) {
        MetadataService.CustomField field = new MetadataService.CustomField();
        field.fullName = name;
        field.label = label;
        field.type_x = 'Url';
        return field;
    }

    public static MetadataService.CustomField createLongTextAreaField(String name, String label, Integer length) {
        MetadataService.CustomField field = new MetadataService.CustomField();
        field.fullName = name;
        field.label = label;
        field.type_x = 'LongTextArea';
        field.length = length;
        field.visibleLines = 3;
        return field;
    }

    public static MetadataService.CustomField createTextAreaField(String name, String label) {
        MetadataService.CustomField field = new MetadataService.CustomField();
        field.fullName = name;
        field.label = label;
        field.type_x = 'TextArea';
        return field;
    }

    public static MetadataService.CustomField createNumberField(String name, String label, Integer precision, Integer scale) {
        MetadataService.CustomField field = new MetadataService.CustomField();
        field.fullName = name;
        field.label = label;
        field.type_x = 'Number';
        field.precision = precision;
        field.scale = scale;
        return field;
    }

    public static MetadataService.CustomField createDateField(String name, String label) {
        MetadataService.CustomField field = new MetadataService.CustomField();
        field.fullName = name;
        field.label = label;
        field.type_x = 'Date';
        return field;
    }

    public static MetadataService.CustomField createDateTimeField(String name, String label) {
        MetadataService.CustomField field = new MetadataService.CustomField();
        field.fullName = name;
        field.label = label;
        field.type_x = 'DateTime';
        return field;
    }

    public static MetadataService.CustomField createPicklistField(String name, String label, List<String> values) {
        MetadataService.CustomField field = new MetadataService.CustomField();
        field.fullName = name;
        field.label = label;
        field.type_x = 'Picklist';
        
        MetadataService.ValueSet valueSet = new MetadataService.ValueSet();
        valueSet.restricted = true;
        
        MetadataService.ValueSetDefinition valueSetDef = new MetadataService.ValueSetDefinition();
        valueSetDef.sorted = false;
        valueSetDef.value = new List<MetadataService.CustomValue>();
        
        for(String val : values) {
            MetadataService.CustomValue customVal = new MetadataService.CustomValue();
            customVal.fullName = val;
            customVal.default_x = false;
            customVal.label = val;
            valueSetDef.value.add(customVal);
        }
        
        valueSet.valueSetDefinition = valueSetDef;
        field.valueSet = valueSet;
        return field;
    }

    public static MetadataService.CustomField createLookupField(String name, String label, String referenceTo) {
        MetadataService.CustomField field = new MetadataService.CustomField();
        field.fullName = name;
        field.label = label;
        field.type_x = 'Lookup';
        field.referenceTo = referenceTo;
        field.relationshipLabel = label;
        field.relationshipName = name.replace('__c', '__r');
        return field;
    }

    public static MetadataService.CustomField createCurrencyField(String name, String label) {
        MetadataService.CustomField field = new MetadataService.CustomField();
        field.fullName = name;
        field.label = label;
        field.type_x = 'Currency';
        return field;
    }
} 