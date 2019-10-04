package com.raizlabs.android.dbflow.config;

public class FlowLog {
    public static final String TAG = FlowLog.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private static Level f5109a = Level.E;

    public enum Level {
        ;

        /* access modifiers changed from: package-private */
        public abstract void a(String str, String str2, Throwable th);
    }

    public static void setMinimumLoggingLevel(Level level) {
        f5109a = level;
    }

    public static void log(Level level, String str) {
        log(level, str, null);
    }

    public static void log(Level level, String str, Throwable th) {
        log(level, TAG, str, th);
    }

    public static void log(Level level, String str, String str2, Throwable th) {
        if (isEnabled(level)) {
            level.a(str, str2, th);
        }
    }

    public static boolean isEnabled(Level level) {
        return level.ordinal() >= f5109a.ordinal();
    }

    public static void logError(Throwable th) {
        log(Level.E, th);
    }

    public static void log(Level level, Throwable th) {
        log(level, TAG, "", th);
    }
}
