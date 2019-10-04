package com.mapbox.android.telemetry.a;

import com.mapbox.android.telemetry.ak;

public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final long f4938a;

    /* renamed from: b  reason: collision with root package name */
    private String f4939b;
    private long c;

    public f() {
        this(86400000);
    }

    public f(long j) {
        this.f4939b = null;
        this.f4938a = j;
    }

    @Deprecated
    public f(int i) {
        this.f4939b = null;
        this.f4938a = ((long) i) * 3600000;
    }

    public final long getInterval() {
        return this.f4938a;
    }

    /* access modifiers changed from: package-private */
    public final String a() {
        if (System.currentTimeMillis() - this.c >= this.f4938a || this.f4939b == null) {
            this.f4939b = ak.obtainUniversalUniqueIdentifier();
            this.c = System.currentTimeMillis();
        }
        return this.f4939b;
    }
}
