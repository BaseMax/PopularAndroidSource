package com.google.android.gms.common;

import java.lang.ref.WeakReference;

abstract class n extends l {

    /* renamed from: b  reason: collision with root package name */
    private static final WeakReference<byte[]> f2993b = new WeakReference<>(null);

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<byte[]> f2994a = f2993b;

    n(byte[] bArr) {
        super(bArr);
    }

    /* access modifiers changed from: package-private */
    public final byte[] a() {
        byte[] bArr;
        synchronized (this) {
            bArr = (byte[]) this.f2994a.get();
            if (bArr == null) {
                bArr = b();
                this.f2994a = new WeakReference<>(bArr);
            }
        }
        return bArr;
    }

    /* access modifiers changed from: protected */
    public abstract byte[] b();
}
