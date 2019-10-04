package com.mapbox.android.a.b;

public final class h {
    public static final int PRIORITY_BALANCED_POWER_ACCURACY = 1;
    public static final int PRIORITY_HIGH_ACCURACY = 0;
    public static final int PRIORITY_LOW_POWER = 2;
    public static final int PRIORITY_NO_POWER = 3;

    /* renamed from: a  reason: collision with root package name */
    private final long f4890a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4891b;
    private final float c;
    private final long d;
    private final long e;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final long f4892a;

        /* renamed from: b  reason: collision with root package name */
        int f4893b = 0;
        float c = 0.0f;
        long d = 0;
        long e = 0;

        public a(long j) {
            this.f4892a = j;
        }

        public final a setPriority(int i) {
            this.f4893b = i;
            return this;
        }

        public final a setDisplacement(float f) {
            this.c = f;
            return this;
        }

        public final a setMaxWaitTime(long j) {
            this.d = j;
            return this;
        }

        public final a setFastestInterval(long j) {
            this.e = j;
            return this;
        }

        public final h build() {
            return new h(this, (byte) 0);
        }
    }

    /* synthetic */ h(a aVar, byte b2) {
        this(aVar);
    }

    private h(a aVar) {
        this.f4890a = aVar.f4892a;
        this.f4891b = aVar.f4893b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
    }

    public final long getInterval() {
        return this.f4890a;
    }

    public final int getPriority() {
        return this.f4891b;
    }

    public final float getDisplacemnt() {
        return this.c;
    }

    public final long getMaxWaitTime() {
        return this.d;
    }

    public final long getFastestInterval() {
        return this.e;
    }
}
