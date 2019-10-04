package org.eclipse.paho.a.a.a;

import org.eclipse.paho.a.a.r;

public final class m implements r {

    /* renamed from: a  reason: collision with root package name */
    private String f8766a = null;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f8767b = null;
    private int c = 0;
    private int d = 0;
    private byte[] e = null;
    private int f = 0;
    private int g = 0;

    public m(String str, byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        this.f8766a = str;
        this.f8767b = (byte[]) bArr.clone();
        this.c = i;
        this.d = i2;
        this.e = (byte[]) bArr2.clone();
        this.f = i3;
        this.g = i4;
    }

    public final String getKey() {
        return this.f8766a;
    }

    public final byte[] getHeaderBytes() {
        return this.f8767b;
    }

    public final int getHeaderLength() {
        return this.d;
    }

    public final int getHeaderOffset() {
        return this.c;
    }

    public final byte[] getPayloadBytes() {
        return this.e;
    }

    public final int getPayloadLength() {
        if (this.e == null) {
            return 0;
        }
        return this.g;
    }

    public final int getPayloadOffset() {
        return this.f;
    }
}
