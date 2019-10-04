package com.google.android.gms.internal;

import java.io.IOException;

public abstract class sx {

    /* renamed from: b  reason: collision with root package name */
    protected volatile int f3528b = -1;

    private static <T extends sx> T a(T t, byte[] bArr, int i) throws sw {
        try {
            so zzn = so.zzn(bArr, 0, i);
            t.zza(zzn);
            zzn.zzkp(0);
            return t;
        } catch (sw e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e2);
        }
    }

    public static final <T extends sx> T zza(T t, byte[] bArr) throws sw {
        return a(t, bArr, bArr.length);
    }

    public static final byte[] zzc(sx sxVar) {
        byte[] bArr = new byte[sxVar.zzho()];
        try {
            sp zzo = sp.zzo(bArr, 0, bArr.length);
            sxVar.zza(zzo);
            zzo.zzcwt();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    /* access modifiers changed from: protected */
    public int a() {
        return 0;
    }

    public String toString() {
        return sy.zzd(this);
    }

    public abstract sx zza(so soVar) throws IOException;

    public void zza(sp spVar) throws IOException {
    }

    /* renamed from: zzdag */
    public sx clone() throws CloneNotSupportedException {
        return (sx) super.clone();
    }

    public final int zzdam() {
        if (this.f3528b < 0) {
            zzho();
        }
        return this.f3528b;
    }

    public final int zzho() {
        int a2 = a();
        this.f3528b = a2;
        return a2;
    }
}
