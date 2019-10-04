package com.google.android.gms.internal;

public enum zzfiy {
    DOUBLE(zzfjd.DOUBLE, 1),
    FLOAT(zzfjd.FLOAT, 5),
    INT64(zzfjd.LONG, 0),
    UINT64(zzfjd.LONG, 0),
    INT32(zzfjd.INT, 0),
    FIXED64(zzfjd.LONG, 1),
    FIXED32(zzfjd.INT, 5),
    BOOL(zzfjd.BOOLEAN, 0),
    STRING,
    GROUP,
    MESSAGE,
    BYTES,
    UINT32(zzfjd.INT, 0),
    ENUM(zzfjd.ENUM, 0),
    SFIXED32(zzfjd.INT, 5),
    SFIXED64(zzfjd.LONG, 1),
    SINT32(zzfjd.INT, 0),
    SINT64(zzfjd.LONG, 0);
    

    /* renamed from: a  reason: collision with root package name */
    private final zzfjd f3614a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3615b;

    private zzfiy(zzfjd zzfjd, int i) {
        this.f3614a = zzfjd;
        this.f3615b = i;
    }

    public final zzfjd zzdad() {
        return this.f3614a;
    }

    public final int zzdae() {
        return this.f3615b;
    }
}
