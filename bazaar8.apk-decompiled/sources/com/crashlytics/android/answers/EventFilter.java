package com.crashlytics.android.answers;

public interface EventFilter {
    boolean skipEvent(SessionEvent sessionEvent);
}
