package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.hq;

public class hl extends hq {

    /* renamed from: a  reason: collision with root package name */
    public final long f6111a;

    /* renamed from: b  reason: collision with root package name */
    public final long f6112b;

    public hl(long j, float f, int i, int i2, long j2, int i3, boolean z, long j3, long j4) {
        super(j, f, i, i2, j2, i3, z);
        this.f6111a = j3;
        this.f6112b = j4;
    }

    public hq.a a() {
        return hq.a.BACKGROUND;
    }

    public String toString() {
        return "LocationBgCollectionConfig{updateTimeInterval=" + this.c + ", updateDistanceInterval=" + this.d + ", recordsCountToForceFlush=" + this.e + ", maxBatchSize=" + this.f + ", maxAgeToForceFlush=" + this.g + ", maxRecordsToStoreLocally=" + this.h + ", collectionEnabled=" + this.i + ", collectionDuration=" + this.f6111a + ", collectionInterval=" + this.f6112b + '}';
    }
}
