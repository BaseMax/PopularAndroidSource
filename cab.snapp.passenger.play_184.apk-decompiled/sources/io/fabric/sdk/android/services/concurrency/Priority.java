package io.fabric.sdk.android.services.concurrency;

public enum Priority {
    LOW,
    NORMAL,
    HIGH,
    IMMEDIATE;

    static <Y> int a(g gVar, Y y) {
        Priority priority;
        if (y instanceof g) {
            priority = ((g) y).getPriority();
        } else {
            priority = NORMAL;
        }
        return priority.ordinal() - gVar.getPriority().ordinal();
    }
}
