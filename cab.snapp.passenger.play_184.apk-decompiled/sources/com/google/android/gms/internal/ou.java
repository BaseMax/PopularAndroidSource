package com.google.android.gms.internal;

import androidx.appcompat.widget.ActivityChooserView;
import java.io.IOException;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import org.eclipse.paho.a.a.w;

public abstract class ou implements Serializable, Iterable<Byte> {

    /* renamed from: b  reason: collision with root package name */
    private static final oy f3426b;
    public static final ou zzpfg = new pb(pu.EMPTY_BYTE_ARRAY);

    /* renamed from: a  reason: collision with root package name */
    int f3427a = 0;

    static {
        boolean z;
        try {
            Class.forName("android.content.Context");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        f3426b = z ? new pc((byte) 0) : new ow((byte) 0);
    }

    ou() {
    }

    private static ou a(Iterator<ou> it, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(String.format("length (%s) must be >= 1", new Object[]{Integer.valueOf(i)}));
        } else if (i == 1) {
            return it.next();
        } else {
            int i2 = i >>> 1;
            ou a2 = a(it, i2);
            ou a3 = a(it, i - i2);
            if (ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED - a2.size() >= a3.size()) {
                return rb.a(a2, a3);
            }
            int size = a2.size();
            int size2 = a3.size();
            StringBuilder sb = new StringBuilder(53);
            sb.append("ByteString would be too long: ");
            sb.append(size);
            sb.append(w.SINGLE_LEVEL_WILDCARD);
            sb.append(size2);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    static ou a(byte[] bArr) {
        return new pb(bArr);
    }

    static oz a(int i) {
        return new oz(i, (byte) 0);
    }

    static void a(int i, int i2) {
        if (((i2 - (i + 1)) | i) >= 0) {
            return;
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(22);
            sb.append("Index < 0: ");
            sb.append(i);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("Index > length: ");
        sb2.append(i);
        sb2.append(", ");
        sb2.append(i2);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    static int b(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(32);
            sb.append("Beginning index: ");
            sb.append(i);
            sb.append(" < 0");
            throw new IndexOutOfBoundsException(sb.toString());
        } else if (i2 < i) {
            StringBuilder sb2 = new StringBuilder(66);
            sb2.append("Beginning index larger than ending index: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            throw new IndexOutOfBoundsException(sb2.toString());
        } else {
            StringBuilder sb3 = new StringBuilder(37);
            sb3.append("End index: ");
            sb3.append(i2);
            sb3.append(" >= ");
            sb3.append(i3);
            throw new IndexOutOfBoundsException(sb3.toString());
        }
    }

    public static ou zzaz(byte[] bArr) {
        return zze(bArr, 0, bArr.length);
    }

    public static ou zze(byte[] bArr, int i, int i2) {
        return new pb(f3426b.zzf(bArr, i, i2));
    }

    public static ou zzf(Iterable<ou> iterable) {
        int size = ((Collection) iterable).size();
        return size == 0 ? zzpfg : a(iterable.iterator(), size);
    }

    public static ou zztr(String str) {
        return new pb(str.getBytes(pu.f3459a));
    }

    /* access modifiers changed from: protected */
    public abstract int a();

    /* access modifiers changed from: protected */
    public abstract int a(int i, int i2, int i3);

    /* access modifiers changed from: package-private */
    public abstract void a(ot otVar) throws IOException;

    /* access modifiers changed from: protected */
    public abstract void a(byte[] bArr, int i, int i2, int i3);

    /* access modifiers changed from: protected */
    public abstract boolean b();

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.f3427a;
        if (i == 0) {
            int size = size();
            i = a(size, 0, size);
            if (i == 0) {
                i = 1;
            }
            this.f3427a = i;
        }
        return i;
    }

    public final boolean isEmpty() {
        return size() == 0;
    }

    public /* synthetic */ Iterator iterator() {
        return new ov(this);
    }

    public abstract int size();

    public final byte[] toByteArray() {
        int size = size();
        if (size == 0) {
            return pu.EMPTY_BYTE_ARRAY;
        }
        byte[] bArr = new byte[size];
        a(bArr, 0, 0, size);
        return bArr;
    }

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", new Object[]{Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size())});
    }

    public final void zza(byte[] bArr, int i, int i2, int i3) {
        b(i, i + i3, size());
        b(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            a(bArr, i, i2, i3);
        }
    }

    public abstract pd zzcvm();

    public abstract byte zzkn(int i);

    public abstract ou zzx(int i, int i2);
}
