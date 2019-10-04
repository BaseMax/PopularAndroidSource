package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zziu;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class Uc implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public Sc<?, ?> f10244a;

    /* renamed from: b  reason: collision with root package name */
    public Object f10245b;

    /* renamed from: c  reason: collision with root package name */
    public List<Yc> f10246c = new ArrayList();

    public final void a(Yc yc) {
        List<Yc> list = this.f10246c;
        if (list != null) {
            list.add(yc);
            return;
        }
        Object obj = this.f10245b;
        if (obj instanceof Wc) {
            byte[] bArr = yc.f10295b;
            Pc a2 = Pc.a(bArr, 0, bArr.length);
            int e2 = a2.e();
            if (e2 == bArr.length - Qc.b(e2)) {
                Wc a3 = ((Wc) this.f10245b).a(a2);
                this.f10244a = this.f10244a;
                this.f10245b = a3;
                this.f10246c = null;
                return;
            }
            throw zziu.a();
        } else if (obj instanceof Wc[]) {
            Collections.singletonList(yc);
            throw new NoSuchMethodError();
        } else if (obj instanceof Sb) {
            Collections.singletonList(yc);
            throw new NoSuchMethodError();
        } else if (obj instanceof Sb[]) {
            Collections.singletonList(yc);
            throw new NoSuchMethodError();
        } else {
            Collections.singletonList(yc);
            throw new NoSuchMethodError();
        }
    }

    public final int b() {
        if (this.f10245b == null) {
            int i2 = 0;
            for (Yc next : this.f10246c) {
                i2 += Qc.c(next.f10294a) + 0 + next.f10295b.length;
            }
            return i2;
        }
        throw new NoSuchMethodError();
    }

    /* renamed from: c */
    public final Uc clone() {
        Uc uc = new Uc();
        try {
            uc.f10244a = this.f10244a;
            if (this.f10246c == null) {
                uc.f10246c = null;
            } else {
                uc.f10246c.addAll(this.f10246c);
            }
            if (this.f10245b != null) {
                if (this.f10245b instanceof Wc) {
                    uc.f10245b = (Wc) ((Wc) this.f10245b).clone();
                } else if (this.f10245b instanceof byte[]) {
                    uc.f10245b = ((byte[]) this.f10245b).clone();
                } else {
                    int i2 = 0;
                    if (this.f10245b instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.f10245b;
                        byte[][] bArr2 = new byte[bArr.length][];
                        uc.f10245b = bArr2;
                        while (i2 < bArr.length) {
                            bArr2[i2] = (byte[]) bArr[i2].clone();
                            i2++;
                        }
                    } else if (this.f10245b instanceof boolean[]) {
                        uc.f10245b = ((boolean[]) this.f10245b).clone();
                    } else if (this.f10245b instanceof int[]) {
                        uc.f10245b = ((int[]) this.f10245b).clone();
                    } else if (this.f10245b instanceof long[]) {
                        uc.f10245b = ((long[]) this.f10245b).clone();
                    } else if (this.f10245b instanceof float[]) {
                        uc.f10245b = ((float[]) this.f10245b).clone();
                    } else if (this.f10245b instanceof double[]) {
                        uc.f10245b = ((double[]) this.f10245b).clone();
                    } else if (this.f10245b instanceof Wc[]) {
                        Wc[] wcArr = (Wc[]) this.f10245b;
                        Wc[] wcArr2 = new Wc[wcArr.length];
                        uc.f10245b = wcArr2;
                        while (i2 < wcArr.length) {
                            wcArr2[i2] = (Wc) wcArr[i2].clone();
                            i2++;
                        }
                    }
                }
            }
            return uc;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Uc)) {
            return false;
        }
        Uc uc = (Uc) obj;
        if (this.f10245b == null || uc.f10245b == null) {
            List<Yc> list = this.f10246c;
            if (list != null) {
                List<Yc> list2 = uc.f10246c;
                if (list2 != null) {
                    return list.equals(list2);
                }
            }
            try {
                return Arrays.equals(a(), uc.a());
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        } else {
            Sc<?, ?> sc = this.f10244a;
            if (sc != uc.f10244a) {
                return false;
            }
            if (!sc.f10220a.isArray()) {
                return this.f10245b.equals(uc.f10245b);
            }
            Object obj2 = this.f10245b;
            if (obj2 instanceof byte[]) {
                return Arrays.equals((byte[]) obj2, (byte[]) uc.f10245b);
            }
            if (obj2 instanceof int[]) {
                return Arrays.equals((int[]) obj2, (int[]) uc.f10245b);
            }
            if (obj2 instanceof long[]) {
                return Arrays.equals((long[]) obj2, (long[]) uc.f10245b);
            }
            if (obj2 instanceof float[]) {
                return Arrays.equals((float[]) obj2, (float[]) uc.f10245b);
            }
            if (obj2 instanceof double[]) {
                return Arrays.equals((double[]) obj2, (double[]) uc.f10245b);
            }
            if (obj2 instanceof boolean[]) {
                return Arrays.equals((boolean[]) obj2, (boolean[]) uc.f10245b);
            }
            return Arrays.deepEquals((Object[]) obj2, (Object[]) uc.f10245b);
        }
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(a()) + 527;
        } catch (IOException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public final void a(Qc qc) {
        if (this.f10245b == null) {
            for (Yc next : this.f10246c) {
                qc.e(next.f10294a);
                qc.b(next.f10295b);
            }
            return;
        }
        throw new NoSuchMethodError();
    }

    public final byte[] a() {
        byte[] bArr = new byte[b()];
        a(Qc.a(bArr));
        return bArr;
    }
}
