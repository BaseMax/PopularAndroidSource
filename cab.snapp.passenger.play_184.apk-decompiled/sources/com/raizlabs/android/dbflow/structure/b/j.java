package com.raizlabs.android.dbflow.structure.b;

import android.database.Cursor;
import android.database.CursorWrapper;

public final class j extends CursorWrapper {

    /* renamed from: a  reason: collision with root package name */
    private Cursor f5234a;

    public static j from(Cursor cursor) {
        if (cursor instanceof j) {
            return (j) cursor;
        }
        return new j(cursor);
    }

    private j(Cursor cursor) {
        super(cursor);
        this.f5234a = cursor;
    }

    public final Cursor getWrappedCursor() {
        return this.f5234a;
    }

    public final String getStringOrDefault(int i, String str) {
        return (i == -1 || this.f5234a.isNull(i)) ? str : this.f5234a.getString(i);
    }

    public final String getStringOrDefault(String str) {
        return getStringOrDefault(this.f5234a.getColumnIndex(str));
    }

    public final String getStringOrDefault(int i) {
        if (i == -1 || this.f5234a.isNull(i)) {
            return null;
        }
        return this.f5234a.getString(i);
    }

    public final String getStringOrDefault(String str, String str2) {
        return getStringOrDefault(this.f5234a.getColumnIndex(str), str2);
    }

    public final int getIntOrDefault(String str) {
        return getIntOrDefault(this.f5234a.getColumnIndex(str));
    }

    public final int getIntOrDefault(int i) {
        if (i == -1 || this.f5234a.isNull(i)) {
            return 0;
        }
        return this.f5234a.getInt(i);
    }

    public final int getIntOrDefault(int i, int i2) {
        return (i == -1 || this.f5234a.isNull(i)) ? i2 : this.f5234a.getInt(i);
    }

    public final int getIntOrDefault(String str, int i) {
        return getIntOrDefault(this.f5234a.getColumnIndex(str), i);
    }

    public final Integer getIntOrDefault(int i, Integer num) {
        return (i == -1 || this.f5234a.isNull(i)) ? num : Integer.valueOf(this.f5234a.getInt(i));
    }

    public final Integer getIntOrDefault(String str, Integer num) {
        return getIntOrDefault(this.f5234a.getColumnIndex(str), num);
    }

    public final double getDoubleOrDefault(int i, double d) {
        return (i == -1 || this.f5234a.isNull(i)) ? d : this.f5234a.getDouble(i);
    }

    public final double getDoubleOrDefault(String str) {
        return getDoubleOrDefault(this.f5234a.getColumnIndex(str));
    }

    public final double getDoubleOrDefault(int i) {
        if (i == -1 || this.f5234a.isNull(i)) {
            return 0.0d;
        }
        return this.f5234a.getDouble(i);
    }

    public final double getDoubleOrDefault(String str, double d) {
        return getDoubleOrDefault(this.f5234a.getColumnIndex(str), d);
    }

    public final Double getDoubleOrDefault(int i, Double d) {
        return (i == -1 || this.f5234a.isNull(i)) ? d : Double.valueOf(this.f5234a.getDouble(i));
    }

    public final Double getDoubleOrDefault(String str, Double d) {
        return getDoubleOrDefault(this.f5234a.getColumnIndex(str), d);
    }

    public final float getFloatOrDefault(int i, float f) {
        return (i == -1 || this.f5234a.isNull(i)) ? f : this.f5234a.getFloat(i);
    }

    public final float getFloatOrDefault(String str) {
        return getFloatOrDefault(this.f5234a.getColumnIndex(str));
    }

    public final float getFloatOrDefault(int i) {
        if (i == -1 || this.f5234a.isNull(i)) {
            return 0.0f;
        }
        return this.f5234a.getFloat(i);
    }

    public final float getFloatOrDefault(String str, float f) {
        return getFloatOrDefault(this.f5234a.getColumnIndex(str), f);
    }

    public final Float getFloatOrDefault(int i, Float f) {
        return (i == -1 || this.f5234a.isNull(i)) ? f : Float.valueOf(this.f5234a.getFloat(i));
    }

    public final Float getFloatOrDefault(String str, Float f) {
        return getFloatOrDefault(this.f5234a.getColumnIndex(str), f);
    }

    public final long getLongOrDefault(int i, long j) {
        return (i == -1 || this.f5234a.isNull(i)) ? j : this.f5234a.getLong(i);
    }

    public final long getLongOrDefault(String str) {
        return getLongOrDefault(this.f5234a.getColumnIndex(str));
    }

    public final long getLongOrDefault(int i) {
        if (i == -1 || this.f5234a.isNull(i)) {
            return 0;
        }
        return this.f5234a.getLong(i);
    }

    public final long getLongOrDefault(String str, long j) {
        return getLongOrDefault(this.f5234a.getColumnIndex(str), j);
    }

    public final Long getLongOrDefault(int i, Long l) {
        return (i == -1 || this.f5234a.isNull(i)) ? l : Long.valueOf(this.f5234a.getLong(i));
    }

    public final Long getLongOrDefault(String str, Long l) {
        return getLongOrDefault(this.f5234a.getColumnIndex(str), l);
    }

    public final short getShortOrDefault(int i, short s) {
        return (i == -1 || this.f5234a.isNull(i)) ? s : this.f5234a.getShort(i);
    }

    public final short getShortOrDefault(String str) {
        return getShortOrDefault(this.f5234a.getColumnIndex(str));
    }

    public final short getShortOrDefault(int i) {
        if (i == -1 || this.f5234a.isNull(i)) {
            return 0;
        }
        return this.f5234a.getShort(i);
    }

    public final short getShortOrDefault(String str, short s) {
        return getShortOrDefault(this.f5234a.getColumnIndex(str), s);
    }

    public final Short getShortOrDefault(int i, Short sh) {
        return (i == -1 || this.f5234a.isNull(i)) ? sh : Short.valueOf(this.f5234a.getShort(i));
    }

    public final Short getShortOrDefault(String str, Short sh) {
        return getShortOrDefault(this.f5234a.getColumnIndex(str), sh);
    }

    public final byte[] getBlobOrDefault(String str) {
        return getBlobOrDefault(this.f5234a.getColumnIndex(str));
    }

    public final byte[] getBlobOrDefault(int i) {
        if (i == -1 || this.f5234a.isNull(i)) {
            return null;
        }
        return this.f5234a.getBlob(i);
    }

    public final byte[] getBlobOrDefault(int i, byte[] bArr) {
        return (i == -1 || this.f5234a.isNull(i)) ? bArr : this.f5234a.getBlob(i);
    }

    public final byte[] getBlobOrDefault(String str, byte[] bArr) {
        return getBlobOrDefault(this.f5234a.getColumnIndex(str), bArr);
    }

    public final boolean getBooleanOrDefault(int i, boolean z) {
        return (i == -1 || this.f5234a.isNull(i)) ? z : getBoolean(i);
    }

    public final boolean getBooleanOrDefault(String str) {
        return getBooleanOrDefault(this.f5234a.getColumnIndex(str));
    }

    public final boolean getBooleanOrDefault(int i) {
        if (i == -1 || this.f5234a.isNull(i)) {
            return false;
        }
        return getBoolean(i);
    }

    public final boolean getBooleanOrDefault(String str, boolean z) {
        return getBooleanOrDefault(this.f5234a.getColumnIndex(str), z);
    }

    public final boolean getBoolean(int i) {
        return this.f5234a.getInt(i) == 1;
    }
}
