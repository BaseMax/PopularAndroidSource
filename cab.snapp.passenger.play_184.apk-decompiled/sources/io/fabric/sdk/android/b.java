package io.fabric.sdk.android;

import android.util.Log;

public final class b implements l {

    /* renamed from: a  reason: collision with root package name */
    private int f6550a;

    public b(int i) {
        this.f6550a = i;
    }

    public b() {
        this.f6550a = 4;
    }

    public final boolean isLoggable(String str, int i) {
        return this.f6550a <= i;
    }

    public final int getLogLevel() {
        return this.f6550a;
    }

    public final void setLogLevel(int i) {
        this.f6550a = i;
    }

    public final void d(String str, String str2, Throwable th) {
        isLoggable(str, 3);
    }

    public final void v(String str, String str2, Throwable th) {
        isLoggable(str, 2);
    }

    public final void i(String str, String str2, Throwable th) {
        isLoggable(str, 4);
    }

    public final void w(String str, String str2, Throwable th) {
        isLoggable(str, 5);
    }

    public final void e(String str, String str2, Throwable th) {
        isLoggable(str, 6);
    }

    public final void d(String str, String str2) {
        d(str, str2, null);
    }

    public final void v(String str, String str2) {
        v(str, str2, null);
    }

    public final void i(String str, String str2) {
        i(str, str2, null);
    }

    public final void w(String str, String str2) {
        w(str, str2, null);
    }

    public final void e(String str, String str2) {
        e(str, str2, null);
    }

    public final void log(int i, String str, String str2) {
        log(i, str, str2, false);
    }

    public final void log(int i, String str, String str2, boolean z) {
        if (z || isLoggable(str, i)) {
            Log.println(i, str, str2);
        }
    }
}
