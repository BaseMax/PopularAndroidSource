package com.facebook.b;

import android.os.Trace;

final class a {
    a() {
    }

    public static void beginTraceSection(String str) {
        Trace.beginSection(str);
    }

    public static void endSection() {
        Trace.endSection();
    }
}
