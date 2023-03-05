public with sharing class QB_Join implements QB_Part {
    private QB qb;
    private QBB qbb;

    public static QB_Join joinWithBinder(QBB qbb) {
        return new QB_Join(qbb);
    }

    private QB_Join(QBB qbb) {
        this.qbb = qbb;
    }

    // From

    public QB_Join of(sObjectType ofObject) {
        qb = new QB(ofObject);
        return this;
    }

    // Fields

    public QB_Join field(sObjectField field) {
        qb.fields.retrive(field);
        return this;
    }

    // Where

    public QB_Join whereAre(QB_ConditionsGroup conditions) {
        qb.conditions = conditions;
        return this;
    }

    // Helper

    public String build() {
        return qb.build();
    }
}