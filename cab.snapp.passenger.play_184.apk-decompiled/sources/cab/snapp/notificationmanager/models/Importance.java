package cab.snapp.notificationmanager.models;

public enum Importance {
    DEFAULT(3),
    HIGH(4),
    LOW(2),
    MAX(5),
    MIN(1),
    NONE(0),
    UNSPECIFIED(-1000);
    

    /* renamed from: a  reason: collision with root package name */
    private int f339a;

    private Importance(int i) {
        this.f339a = i;
    }

    public final int getValue() {
        return this.f339a;
    }
}
