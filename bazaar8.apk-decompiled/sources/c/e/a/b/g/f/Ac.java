package c.e.a.b.g.f;

import c.e.a.b.g.f.C0852nb;
import com.google.android.gms.internal.measurement.zzdp;
import com.google.android.gms.internal.measurement.zzeg;
import com.google.android.gms.internal.measurement.zzfh;
import java.util.Arrays;

public final class Ac {

    /* renamed from: a  reason: collision with root package name */
    public static final Ac f10132a = new Ac(0, new int[0], new Object[0], false);

    /* renamed from: b  reason: collision with root package name */
    public int f10133b;

    /* renamed from: c  reason: collision with root package name */
    public int[] f10134c;

    /* renamed from: d  reason: collision with root package name */
    public Object[] f10135d;

    /* renamed from: e  reason: collision with root package name */
    public int f10136e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f10137f;

    public Ac() {
        this(0, new int[8], new Object[8], true);
    }

    public static Ac a(Ac ac, Ac ac2) {
        int i2 = ac.f10133b + ac2.f10133b;
        int[] copyOf = Arrays.copyOf(ac.f10134c, i2);
        System.arraycopy(ac2.f10134c, 0, copyOf, ac.f10133b, ac2.f10133b);
        Object[] copyOf2 = Arrays.copyOf(ac.f10135d, i2);
        System.arraycopy(ac2.f10135d, 0, copyOf2, ac.f10133b, ac2.f10133b);
        return new Ac(i2, copyOf, copyOf2, true);
    }

    public static Ac c() {
        return f10132a;
    }

    public static Ac d() {
        return new Ac();
    }

    public final void b(Oc oc) {
        if (this.f10133b != 0) {
            if (oc.a() == C0852nb.e.f10483l) {
                for (int i2 = 0; i2 < this.f10133b; i2++) {
                    a(this.f10134c[i2], this.f10135d[i2], oc);
                }
                return;
            }
            for (int i3 = this.f10133b - 1; i3 >= 0; i3--) {
                a(this.f10134c[i3], this.f10135d[i3], oc);
            }
        }
    }

    public final int e() {
        int i2 = this.f10136e;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f10133b; i4++) {
            i3 += zzeg.d(this.f10134c[i4] >>> 3, (zzdp) this.f10135d[i4]);
        }
        this.f10136e = i3;
        return i3;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Ac)) {
            return false;
        }
        Ac ac = (Ac) obj;
        int i2 = this.f10133b;
        if (i2 == ac.f10133b) {
            int[] iArr = this.f10134c;
            int[] iArr2 = ac.f10134c;
            int i3 = 0;
            while (true) {
                if (i3 >= i2) {
                    z = true;
                    break;
                } else if (iArr[i3] != iArr2[i3]) {
                    z = false;
                    break;
                } else {
                    i3++;
                }
            }
            if (z) {
                Object[] objArr = this.f10135d;
                Object[] objArr2 = ac.f10135d;
                int i4 = this.f10133b;
                int i5 = 0;
                while (true) {
                    if (i5 >= i4) {
                        z2 = true;
                        break;
                    } else if (!objArr[i5].equals(objArr2[i5])) {
                        z2 = false;
                        break;
                    } else {
                        i5++;
                    }
                }
                return z2;
            }
        }
    }

    public final int hashCode() {
        int i2 = this.f10133b;
        int i3 = (i2 + 527) * 31;
        int[] iArr = this.f10134c;
        int i4 = 17;
        int i5 = 17;
        for (int i6 = 0; i6 < i2; i6++) {
            i5 = (i5 * 31) + iArr[i6];
        }
        int i7 = (i3 + i5) * 31;
        Object[] objArr = this.f10135d;
        int i8 = this.f10133b;
        for (int i9 = 0; i9 < i8; i9++) {
            i4 = (i4 * 31) + objArr[i9].hashCode();
        }
        return i7 + i4;
    }

    public Ac(int i2, int[] iArr, Object[] objArr, boolean z) {
        this.f10136e = -1;
        this.f10133b = i2;
        this.f10134c = iArr;
        this.f10135d = objArr;
        this.f10137f = z;
    }

    public final void a() {
        this.f10137f = false;
    }

    public final int b() {
        int i2;
        int i3 = this.f10136e;
        if (i3 != -1) {
            return i3;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.f10133b; i5++) {
            int i6 = this.f10134c[i5];
            int i7 = i6 >>> 3;
            int i8 = i6 & 7;
            if (i8 == 0) {
                i2 = zzeg.e(i7, ((Long) this.f10135d[i5]).longValue());
            } else if (i8 == 1) {
                i2 = zzeg.g(i7, ((Long) this.f10135d[i5]).longValue());
            } else if (i8 == 2) {
                i2 = zzeg.c(i7, (zzdp) this.f10135d[i5]);
            } else if (i8 == 3) {
                i2 = (zzeg.e(i7) << 1) + ((Ac) this.f10135d[i5]).b();
            } else if (i8 == 5) {
                i2 = zzeg.i(i7, ((Integer) this.f10135d[i5]).intValue());
            } else {
                throw new IllegalStateException(zzfh.f());
            }
            i4 += i2;
        }
        this.f10136e = i4;
        return i4;
    }

    public final void a(Oc oc) {
        if (oc.a() == C0852nb.e.m) {
            for (int i2 = this.f10133b - 1; i2 >= 0; i2--) {
                oc.a(this.f10134c[i2] >>> 3, this.f10135d[i2]);
            }
            return;
        }
        for (int i3 = 0; i3 < this.f10133b; i3++) {
            oc.a(this.f10134c[i3] >>> 3, this.f10135d[i3]);
        }
    }

    public static void a(int i2, Object obj, Oc oc) {
        int i3 = i2 >>> 3;
        int i4 = i2 & 7;
        if (i4 == 0) {
            oc.d(i3, ((Long) obj).longValue());
        } else if (i4 == 1) {
            oc.c(i3, ((Long) obj).longValue());
        } else if (i4 == 2) {
            oc.a(i3, (zzdp) obj);
        } else if (i4 != 3) {
            if (i4 == 5) {
                oc.c(i3, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(zzfh.f());
        } else if (oc.a() == C0852nb.e.f10483l) {
            oc.a(i3);
            ((Ac) obj).b(oc);
            oc.b(i3);
        } else {
            oc.b(i3);
            ((Ac) obj).b(oc);
            oc.a(i3);
        }
    }

    public final void a(StringBuilder sb, int i2) {
        for (int i3 = 0; i3 < this.f10133b; i3++) {
            Vb.a(sb, i2, String.valueOf(this.f10134c[i3] >>> 3), this.f10135d[i3]);
        }
    }

    public final void a(int i2, Object obj) {
        if (this.f10137f) {
            int i3 = this.f10133b;
            if (i3 == this.f10134c.length) {
                int i4 = this.f10133b + (i3 < 4 ? 8 : i3 >> 1);
                this.f10134c = Arrays.copyOf(this.f10134c, i4);
                this.f10135d = Arrays.copyOf(this.f10135d, i4);
            }
            int[] iArr = this.f10134c;
            int i5 = this.f10133b;
            iArr[i5] = i2;
            this.f10135d[i5] = obj;
            this.f10133b = i5 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }
}
