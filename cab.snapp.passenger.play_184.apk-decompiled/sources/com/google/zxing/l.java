package com.google.zxing;

import java.util.EnumMap;
import java.util.Map;

public final class l {

    /* renamed from: a  reason: collision with root package name */
    private final String f4355a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f4356b;
    private final int c;
    private m[] d;
    private final BarcodeFormat e;
    private Map<ResultMetadataType, Object> f;
    private final long g;

    public l(String str, byte[] bArr, m[] mVarArr, BarcodeFormat barcodeFormat) {
        this(str, bArr, mVarArr, barcodeFormat, System.currentTimeMillis());
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public l(String str, byte[] bArr, m[] mVarArr, BarcodeFormat barcodeFormat, long j) {
        this(str, bArr, bArr == null ? 0 : bArr.length * 8, mVarArr, barcodeFormat, j);
    }

    public l(String str, byte[] bArr, int i, m[] mVarArr, BarcodeFormat barcodeFormat, long j) {
        this.f4355a = str;
        this.f4356b = bArr;
        this.c = i;
        this.d = mVarArr;
        this.e = barcodeFormat;
        this.f = null;
        this.g = j;
    }

    public final String getText() {
        return this.f4355a;
    }

    public final byte[] getRawBytes() {
        return this.f4356b;
    }

    public final int getNumBits() {
        return this.c;
    }

    public final m[] getResultPoints() {
        return this.d;
    }

    public final BarcodeFormat getBarcodeFormat() {
        return this.e;
    }

    public final Map<ResultMetadataType, Object> getResultMetadata() {
        return this.f;
    }

    public final void putMetadata(ResultMetadataType resultMetadataType, Object obj) {
        if (this.f == null) {
            this.f = new EnumMap(ResultMetadataType.class);
        }
        this.f.put(resultMetadataType, obj);
    }

    public final void putAllMetadata(Map<ResultMetadataType, Object> map) {
        if (map != null) {
            Map<ResultMetadataType, Object> map2 = this.f;
            if (map2 == null) {
                this.f = map;
                return;
            }
            map2.putAll(map);
        }
    }

    public final void addResultPoints(m[] mVarArr) {
        m[] mVarArr2 = this.d;
        if (mVarArr2 == null) {
            this.d = mVarArr;
            return;
        }
        if (mVarArr != null && mVarArr.length > 0) {
            m[] mVarArr3 = new m[(mVarArr2.length + mVarArr.length)];
            System.arraycopy(mVarArr2, 0, mVarArr3, 0, mVarArr2.length);
            System.arraycopy(mVarArr, 0, mVarArr3, mVarArr2.length, mVarArr.length);
            this.d = mVarArr3;
        }
    }

    public final long getTimestamp() {
        return this.g;
    }

    public final String toString() {
        return this.f4355a;
    }
}
