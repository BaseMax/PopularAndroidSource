package com.crashlytics.android.answers;

public class KeepAllEventFilter implements EventFilter {
    public boolean skipEvent(SessionEvent sessionEvent) {
        return false;
    }
}
