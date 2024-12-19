public class MetadataService {
    public class CustomObject {
        public String fullName;
        public String label;
        public String pluralLabel;
        public CustomField nameField;
        public String deploymentStatus;
        public String sharingModel;
        public Boolean enableSharing;
        public Boolean enableBulkApi;
        public Boolean enableStreamingApi;
        public Boolean enableSearch;
        public List<CustomField> fields;
    }

    public class CustomField {
        public String fullName;
        public String label;
        public String type_x;
        public Integer length;
        public Boolean required;
        public String referenceTo;
        public String relationshipLabel;
        public String relationshipName;
        public String deleteConstraint;
        public ValueSet valueSet;
        public Integer precision;
        public Integer scale;
    }

    public class ValueSet {
        public Boolean restricted;
        public ValueSetDefinition valueSetDefinition;
    }

    public class ValueSetDefinition {
        public Boolean sorted;
        public List<CustomValue> value;
    }

    public class CustomValue {
        public String fullName;
        public Boolean default_x;
        public String label;
    }
} 