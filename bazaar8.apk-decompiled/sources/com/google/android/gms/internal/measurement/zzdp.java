package com.google.android.gms.internal.measurement;

import c.e.a.b.g.f.C0864qb;
import c.e.a.b.g.f.Ga;
import c.e.a.b.g.f.Ka;
import c.e.a.b.g.f.La;
import c.e.a.b.g.f.Ma;
import c.e.a.b.g.f.Oa;
import c.e.a.b.g.f.Pa;
import c.e.a.b.g.f.Ra;
import c.e.a.b.g.f.Ta;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;

public abstract class zzdp implements Serializable, Iterable<Byte> {

    /* renamed from: a  reason: collision with root package name */
    public static final zzdp f13171a = new zzdz(C0864qb.f10510c);

    /* renamed from: b  reason: collision with root package name */
    public static final Pa f13172b = (Ga.a() ? new Ta(null) : new Oa(null));

    /* renamed from: c  reason: collision with root package name */
    public static final Comparator<zzdp> f13173c = new Ma();
    public int zzaca = 0;

    public static int a(byte b2) {
        return b2 & 255;
    }

    public static zzdp a(byte[] bArr, int i2, int i3) {
        b(i2, i2 + i3, bArr.length);
        return new zzdz(f13172b.a(bArr, i2, i3));
    }

    public static int b(int i2, int i3, int i4) {
        int i5 = i3 - i2;
        if ((i2 | i3 | i5 | (i4 - i3)) >= 0) {
            return i5;
        }
        if (i2 < 0) {
            StringBuilder sb = new StringBuilder(32);
            sb.append("Beginning index: ");
            sb.append(i2);
            sb.append(" < 0");
            throw new IndexOutOfBoundsException(sb.toString());
        } else if (i3 < i2) {
            StringBuilder sb2 = new StringBuilder(66);
            sb2.append("Beginning index larger than ending index: ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(i3);
            throw new IndexOutOfBoundsException(sb2.toString());
        } else {
            StringBuilder sb3 = new StringBuilder(37);
            sb3.append("End index: ");
            sb3.append(i3);
            sb3.append(" >= ");
            sb3.append(i4);
            throw new IndexOutOfBoundsException(sb3.toString());
        }
    }

    public static Ra f(int i2) {
        return new Ra(i2, null);
    }

    public abstract byte a(int i2);

    public abstract int a(int i2, int i3, int i4);

    public abstract zzdp a(int i2, int i3);

    public abstract String a(Charset charset);

    public abstract void a(Ka ka);

    public abstract boolean b();

    public final int c() {
        return this.zzaca;
    }

    public abstract byte e(int i2);

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i2 = this.zzaca;
        if (i2 == 0) {
            int size = size();
            i2 = a(size, 0, size);
            if (i2 == 0) {
                i2 = 1;
            }
            this.zzaca = i2;
        }
        return i2;
    }

    public /* synthetic */ Iterator iterator() {
        return new La(this);
    }

    public abstract int size();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", new Object[]{Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size())});
    }

    public static zzdp a(byte[] bArr) {
        return new zzdz(bArr);
    }

    public static zzdp a(String str) {
        return new zzdz(str.getBytes(C0864qb.f10508a));
    }

    public final String a() {
        return size() == 0 ? "" : a(C0864qb.f10508a);
    }
}
