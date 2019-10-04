package com.webengage.sdk.android;

public class Logger {
    public static final int DEBUG = 1;
    public static final int NORMAL = 0;
    public static final int QUIET = -1;
    public static final int SILENT = -2;
    public static final int VERBOSE = 2;
    private static int sLogLevel = -2;

    public static void d(String str, String str2) {
    }

    public static void e(String str, String str2) {
    }

    public static void e(String str, String str2, Throwable th) {
    }

    public static void i(String str, String str2) {
    }

    public static void setLogLevel(int i) {
        sLogLevel = i;
    }

    public static void v(String str, String str2) {
    }

    public static void w(String str, String str2) {
    }

    public static void w(String str, String str2, Throwable th) {
    }
}
