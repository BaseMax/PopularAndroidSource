package com.google.android.gms.internal;

import java.io.IOException;

class pb extends pa {

    /* renamed from: b  reason: collision with root package name */
    protected final byte[] f3434b;

    pb(byte[] bArr) {
        this.f3434b = bArr;
    }

    /* access modifiers changed from: protected */
    public final int a(int i, int i2, int i3) {
        return pu.a(i, this.f3434b, c() + i2, i3);
    }

    /* access modifiers changed from: package-private */
    public final void a(ot otVar) throws IOException {
        otVar.zzd(this.f3434b, c(), size());
    }

    /* access modifiers changed from: protected */
    public void a(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f3434b, i, bArr, i2, i3);
    }

    /* access modifiers changed from: package-private */
    public final boolean a(ou ouVar, int i, int i2) {
        if (i2 <= ouVar.size()) {
            int i3 = i + i2;
            if (i3 > ouVar.size()) {
                int size = ouVar.size();
                StringBuilder sb = new StringBuilder(59);
                sb.append("Ran off end of other: ");
                sb.append(i);
                sb.append(", ");
                sb.append(i2);
                sb.append(", ");
                sb.append(size);
                throw new IllegalArgumentException(sb.toString());
            } else if (!(ouVar instanceof pb)) {
                return ouVar.zzx(i, i3).equals(zzx(0, i2));
            } else {
                pb pbVar = (pb) ouVar;
                byte[] bArr = this.f3434b;
                byte[] bArr2 = pbVar.f3434b;
                int c = c() + i2;
                int c2 = c();
                int c3 = pbVar.c() + i;
                while (c2 < c) {
                    if (bArr[c2] != bArr2[c3]) {
                        return false;
                    }
                    c2++;
                    c3++;
                }
                return true;
            }
        } else {
            int size2 = size();
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Length too large: ");
            sb2.append(i2);
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    /* access modifiers changed from: protected */
    public int c() {
        return 0;
    }

    public int size() {
        return this.f3434b.length;
    }

    public final pd zzcvm() {
        return pd.a(this.f3434b, c(), size(), true);
    }

    public byte zzkn(int i) {
        return this.f3434b[i];
    }

    public final ou zzx(int i, int i2) {
        int b2 = b(i, i2, size());
        return b2 == 0 ? ou.zzpfg : new ox(this.f3434b, c() + i, b2);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ou) || size() != ((ou) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof pb)) {
            return obj.equals(this);
        }
        pb pbVar = (pb) obj;
        int i = this.f3427a;
        int i2 = pbVar.f3427a;
        if (i == 0 || i2 == 0 || i == i2) {
            return a(pbVar, 0, size());
        }
        return false;
    }
}
