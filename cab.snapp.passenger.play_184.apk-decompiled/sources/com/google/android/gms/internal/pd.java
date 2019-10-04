package com.google.android.gms.internal;

import androidx.appcompat.widget.ActivityChooserView;
import java.io.IOException;
import java.io.InputStream;

public abstract class pd {
    private static volatile boolean e = true;

    /* renamed from: a  reason: collision with root package name */
    int f3435a;

    /* renamed from: b  reason: collision with root package name */
    int f3436b;
    int c;
    private boolean d;

    private pd() {
        this.f3436b = 100;
        this.c = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.d = false;
    }

    /* synthetic */ pd(byte b2) {
        this();
    }

    static pd a(byte[] bArr, int i, int i2, boolean z) {
        pe peVar = new pe(bArr, i, i2, z, (byte) 0);
        try {
            peVar.zzks(i2);
            return peVar;
        } catch (py e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static pd zzbb(byte[] bArr) {
        return a(bArr, 0, bArr.length, false);
    }

    public static long zzcs(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static pd zzg(byte[] bArr, int i, int i2) {
        return a(bArr, i, i2, false);
    }

    public static pd zzi(InputStream inputStream) {
        if (inputStream != null) {
            return new pf(inputStream, (byte) 0);
        }
        byte[] bArr = pu.EMPTY_BYTE_ARRAY;
        return a(bArr, 0, bArr.length, false);
    }

    public static int zzkv(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    /* access modifiers changed from: package-private */
    public abstract long a() throws IOException;

    public abstract double readDouble() throws IOException;

    public abstract float readFloat() throws IOException;

    public abstract String readString() throws IOException;

    public abstract <T extends ps<T, ?>> T zza(T t, pk pkVar) throws IOException;

    public abstract void zza(qs qsVar, pk pkVar) throws IOException;

    public abstract int zzcvt() throws IOException;

    public abstract long zzcvu() throws IOException;

    public abstract long zzcvv() throws IOException;

    public abstract int zzcvw() throws IOException;

    public abstract long zzcvx() throws IOException;

    public abstract int zzcvy() throws IOException;

    public abstract boolean zzcvz() throws IOException;

    public abstract String zzcwa() throws IOException;

    public abstract ou zzcwb() throws IOException;

    public abstract int zzcwc() throws IOException;

    public abstract int zzcwd() throws IOException;

    public abstract int zzcwe() throws IOException;

    public abstract long zzcwf() throws IOException;

    public abstract int zzcwg() throws IOException;

    public abstract long zzcwh() throws IOException;

    public abstract int zzcwi() throws IOException;

    public abstract int zzcwk();

    public abstract boolean zzcwl() throws IOException;

    public abstract int zzcwm();

    public abstract void zzkp(int i) throws py;

    public abstract boolean zzkq(int i) throws IOException;

    public final int zzkr(int i) {
        int i2 = this.c;
        this.c = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        return i2;
    }

    public abstract int zzks(int i) throws py;

    public abstract void zzkt(int i);

    public abstract void zzku(int i) throws IOException;
}
