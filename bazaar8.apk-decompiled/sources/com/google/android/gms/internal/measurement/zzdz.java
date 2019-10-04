package com.google.android.gms.internal.measurement;

import c.e.a.b.g.f.C0864qb;
import c.e.a.b.g.f.Hc;
import c.e.a.b.g.f.Ka;
import java.nio.charset.Charset;

public class zzdz extends zzdy {
    public final byte[] zzacg;

    public zzdz(byte[] bArr) {
        if (bArr != null) {
            this.zzacg = bArr;
            return;
        }
        throw new NullPointerException();
    }

    public byte a(int i2) {
        return this.zzacg[i2];
    }

    public final boolean b() {
        int d2 = d();
        return Hc.a(this.zzacg, d2, size() + d2);
    }

    public int d() {
        return 0;
    }

    public byte e(int i2) {
        return this.zzacg[i2];
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdp) || size() != ((zzdp) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof zzdz)) {
            return obj.equals(this);
        }
        zzdz zzdz = (zzdz) obj;
        int c2 = c();
        int c3 = zzdz.c();
        if (c2 == 0 || c3 == 0 || c2 == c3) {
            return a((zzdp) zzdz, 0, size());
        }
        return false;
    }

    public int size() {
        return this.zzacg.length;
    }

    public final zzdp a(int i2, int i3) {
        int b2 = zzdp.b(0, i3, size());
        if (b2 == 0) {
            return zzdp.f13171a;
        }
        return new zzdu(this.zzacg, d(), b2);
    }

    public final void a(Ka ka) {
        ka.a(this.zzacg, d(), size());
    }

    public final String a(Charset charset) {
        return new String(this.zzacg, d(), size(), charset);
    }

    public final boolean a(zzdp zzdp, int i2, int i3) {
        if (i3 > zzdp.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i3);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        } else if (i3 > zzdp.size()) {
            int size2 = zzdp.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i3);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        } else if (!(zzdp instanceof zzdz)) {
            return zzdp.a(0, i3).equals(a(0, i3));
        } else {
            zzdz zzdz = (zzdz) zzdp;
            byte[] bArr = this.zzacg;
            byte[] bArr2 = zzdz.zzacg;
            int d2 = d() + i3;
            int d3 = d();
            int d4 = zzdz.d();
            while (d3 < d2) {
                if (bArr[d3] != bArr2[d4]) {
                    return false;
                }
                d3++;
                d4++;
            }
            return true;
        }
    }

    public final int a(int i2, int i3, int i4) {
        return C0864qb.a(i2, this.zzacg, d(), i4);
    }
}
