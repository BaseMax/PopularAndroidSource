package com.google.zxing.common;

import java.util.List;

public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f4313a;

    /* renamed from: b  reason: collision with root package name */
    private int f4314b;
    private final String c;
    private final List<byte[]> d;
    private final String e;
    private Integer f;
    private Integer g;
    private Object h;
    private final int i;
    private final int j;

    public d(byte[] bArr, String str, List<byte[]> list, String str2) {
        this(bArr, str, list, str2, -1, -1);
    }

    public d(byte[] bArr, String str, List<byte[]> list, String str2, int i2, int i3) {
        int i4;
        this.f4313a = bArr;
        if (bArr == null) {
            i4 = 0;
        } else {
            i4 = bArr.length * 8;
        }
        this.f4314b = i4;
        this.c = str;
        this.d = list;
        this.e = str2;
        this.i = i3;
        this.j = i2;
    }

    public final byte[] getRawBytes() {
        return this.f4313a;
    }

    public final int getNumBits() {
        return this.f4314b;
    }

    public final void setNumBits(int i2) {
        this.f4314b = i2;
    }

    public final String getText() {
        return this.c;
    }

    public final List<byte[]> getByteSegments() {
        return this.d;
    }

    public final String getECLevel() {
        return this.e;
    }

    public final Integer getErrorsCorrected() {
        return this.f;
    }

    public final void setErrorsCorrected(Integer num) {
        this.f = num;
    }

    public final Integer getErasures() {
        return this.g;
    }

    public final void setErasures(Integer num) {
        this.g = num;
    }

    public final Object getOther() {
        return this.h;
    }

    public final void setOther(Object obj) {
        this.h = obj;
    }

    public final boolean hasStructuredAppend() {
        return this.i >= 0 && this.j >= 0;
    }

    public final int getStructuredAppendParity() {
        return this.i;
    }

    public final int getStructuredAppendSequenceNumber() {
        return this.j;
    }
}
