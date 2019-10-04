package io.fabric.sdk.android.services.concurrency;

import e.a.a.a.a.c.m;

public enum Priority {
    LOW,
    NORMAL,
    HIGH,
    IMMEDIATE;

    public static <Y> int a(m mVar, Y y) {
        Priority priority;
        if (y instanceof m) {
            priority = ((m) y).getPriority();
        } else {
            priority = NORMAL;
        }
        return priority.ordinal() - mVar.getPriority().ordinal();
    }
}
