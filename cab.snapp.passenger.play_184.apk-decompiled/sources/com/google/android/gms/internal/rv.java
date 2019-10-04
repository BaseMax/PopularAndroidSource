package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;

public final class rv {
    private static final rv d = new rv(0, new int[0], new Object[0], false);

    /* renamed from: a  reason: collision with root package name */
    int f3505a;

    /* renamed from: b  reason: collision with root package name */
    int[] f3506b;
    Object[] c;
    private int e;
    private boolean f;

    private rv() {
        this(0, new int[8], new Object[8], true);
    }

    private rv(int i, int[] iArr, Object[] objArr, boolean z) {
        this.e = -1;
        this.f3505a = i;
        this.f3506b = iArr;
        this.c = objArr;
        this.f = z;
    }

    static rv a(rv rvVar, rv rvVar2) {
        int i = rvVar.f3505a + rvVar2.f3505a;
        int[] copyOf = Arrays.copyOf(rvVar.f3506b, i);
        System.arraycopy(rvVar2.f3506b, 0, copyOf, rvVar.f3505a, rvVar2.f3505a);
        Object[] copyOf2 = Arrays.copyOf(rvVar.c, i);
        System.arraycopy(rvVar2.c, 0, copyOf2, rvVar.f3505a, rvVar2.f3505a);
        return new rv(i, copyOf, copyOf2, true);
    }

    public static rv zzczu() {
        return d;
    }

    /* access modifiers changed from: package-private */
    public final void a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f3505a; i2++) {
            qu.a(sb, i, String.valueOf(this.f3506b[i2] >>> 3), this.c[i2]);
        }
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof rv)) {
            return false;
        }
        rv rvVar = (rv) obj;
        int i = this.f3505a;
        if (i == rvVar.f3505a) {
            int[] iArr = this.f3506b;
            int[] iArr2 = rvVar.f3506b;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    z = true;
                    break;
                } else if (iArr[i2] != iArr2[i2]) {
                    z = false;
                    break;
                } else {
                    i2++;
                }
            }
            if (z) {
                Object[] objArr = this.c;
                Object[] objArr2 = rvVar.c;
                int i3 = this.f3505a;
                int i4 = 0;
                while (true) {
                    if (i4 >= i3) {
                        z2 = true;
                        break;
                    } else if (!objArr[i4].equals(objArr2[i4])) {
                        z2 = false;
                        break;
                    } else {
                        i4++;
                    }
                }
                return z2;
            }
        }
    }

    public final int hashCode() {
        return ((((this.f3505a + 527) * 31) + Arrays.hashCode(this.f3506b)) * 31) + Arrays.deepHashCode(this.c);
    }

    public final void zza(ph phVar) throws IOException {
        for (int i = 0; i < this.f3505a; i++) {
            int i2 = this.f3506b[i];
            int i3 = i2 >>> 3;
            int i4 = i2 & 7;
            if (i4 == 0) {
                phVar.zza(i3, ((Long) this.c[i]).longValue());
            } else if (i4 == 1) {
                phVar.zzb(i3, ((Long) this.c[i]).longValue());
            } else if (i4 == 2) {
                phVar.zza(i3, (ou) this.c[i]);
            } else if (i4 == 3) {
                phVar.zzz(i3, 3);
                ((rv) this.c[i]).zza(phVar);
                phVar.zzz(i3, 4);
            } else if (i4 == 5) {
                phVar.zzac(i3, ((Integer) this.c[i]).intValue());
            } else {
                throw py.f();
            }
        }
    }

    public final void zzbiy() {
        this.f = false;
    }

    public final int zzczw() {
        int i = this.e;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f3505a; i3++) {
            i2 += ph.zzd(this.f3506b[i3] >>> 3, (ou) this.c[i3]);
        }
        this.e = i2;
        return i2;
    }

    public final int zzho() {
        int i;
        int i2 = this.e;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f3505a; i4++) {
            int i5 = this.f3506b[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                i = ph.zzd(i6, ((Long) this.c[i4]).longValue());
            } else if (i7 == 1) {
                i = ph.zze(i6, ((Long) this.c[i4]).longValue());
            } else if (i7 == 2) {
                i = ph.zzc(i6, (ou) this.c[i4]);
            } else if (i7 == 3) {
                i = (ph.zzlg(i6) << 1) + ((rv) this.c[i4]).zzho();
            } else if (i7 == 5) {
                i = ph.zzaf(i6, ((Integer) this.c[i4]).intValue());
            } else {
                throw new IllegalStateException(py.f());
            }
            i3 += i;
        }
        this.e = i3;
        return i3;
    }
}
