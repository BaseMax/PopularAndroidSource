package com.google.android.gms.internal;

import com.google.android.gms.analytics.f;

final class ay implements f {

    /* renamed from: a  reason: collision with root package name */
    private int f3075a = 2;

    /* renamed from: b  reason: collision with root package name */
    private boolean f3076b;

    ay() {
    }

    public final void error(Exception exc) {
    }

    public final void error(String str) {
    }

    public final int getLogLevel() {
        return this.f3075a;
    }

    public final void info(String str) {
    }

    public final void setLogLevel(int i) {
        this.f3075a = i;
        if (!this.f3076b) {
            bf.zzdvy.get();
            String str = bf.zzdvy.get();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 91);
            sb.append("Logger is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag.");
            sb.append(str);
            sb.append(" DEBUG");
            this.f3076b = true;
        }
    }

    public final void verbose(String str) {
    }

    public final void warn(String str) {
    }
}
