package com.google.android.gms.internal.measurement;

public enum zzif {
    DOUBLE(zzik.DOUBLE, 1),
    FLOAT(zzik.FLOAT, 5),
    INT64(zzik.LONG, 0),
    UINT64(zzik.LONG, 0),
    INT32(zzik.INT, 0),
    FIXED64(zzik.LONG, 1),
    FIXED32(zzik.INT, 5),
    BOOL(zzik.BOOLEAN, 0),
    STRING(zzik.STRING, 2),
    GROUP(zzik.MESSAGE, 3),
    MESSAGE(zzik.MESSAGE, 2),
    BYTES(zzik.BYTE_STRING, 2),
    UINT32(zzik.INT, 0),
    ENUM(zzik.ENUM, 0),
    SFIXED32(zzik.INT, 5),
    SFIXED64(zzik.LONG, 1),
    SINT32(zzik.INT, 0),
    SINT64(zzik.LONG, 0);
    
    public final zzik zzamj;
    public final int zzamk;

    /* access modifiers changed from: public */
    zzif(zzik zzik, int i2) {
        this.zzamj = zzik;
        this.zzamk = i2;
    }

    public final zzik f() {
        return this.zzamj;
    }
}
