package com.raizlabs.android.dbflow.structure.b;

public abstract class d implements g {
    public void bindStringOrNull(int i, String str) {
        if (str != null) {
            bindString(i, str);
        } else {
            bindNull(i);
        }
    }

    public void bindNumber(int i, Number number) {
        bindNumberOrNull(i, number);
    }

    public void bindNumberOrNull(int i, Number number) {
        if (number != null) {
            bindLong(i, number.longValue());
        } else {
            bindNull(i);
        }
    }

    public void bindDoubleOrNull(int i, Double d) {
        if (d != null) {
            bindDouble(i, d.doubleValue());
        } else {
            bindNull(i);
        }
    }

    public void bindFloatOrNull(int i, Float f) {
        if (f != null) {
            bindDouble(i, (double) f.floatValue());
        } else {
            bindNull(i);
        }
    }

    public void bindBlobOrNull(int i, byte[] bArr) {
        if (bArr != null) {
            bindBlob(i, bArr);
        } else {
            bindNull(i);
        }
    }
}
