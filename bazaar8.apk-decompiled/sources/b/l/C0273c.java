package b.l;

import java.util.ArrayList;
import java.util.List;

/* renamed from: b.l.c  reason: case insensitive filesystem */
/* compiled from: CallbackRegistry */
public class C0273c<C, T, A> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public List<C> f2938a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public long f2939b = 0;

    /* renamed from: c  reason: collision with root package name */
    public long[] f2940c;

    /* renamed from: d  reason: collision with root package name */
    public int f2941d;

    /* renamed from: e  reason: collision with root package name */
    public final a<C, T, A> f2942e;

    /* renamed from: b.l.c$a */
    /* compiled from: CallbackRegistry */
    public static abstract class a<C, T, A> {
        public abstract void a(C c2, T t, int i2, A a2);
    }

    public C0273c(a<C, T, A> aVar) {
        this.f2942e = aVar;
    }

    public synchronized void a(T t, int i2, A a2) {
        this.f2941d++;
        c(t, i2, a2);
        this.f2941d--;
        if (this.f2941d == 0) {
            if (this.f2940c != null) {
                for (int length = this.f2940c.length - 1; length >= 0; length--) {
                    long j2 = this.f2940c[length];
                    if (j2 != 0) {
                        a((length + 1) * 64, j2);
                        this.f2940c[length] = 0;
                    }
                }
            }
            if (this.f2939b != 0) {
                a(0, this.f2939b);
                this.f2939b = 0;
            }
        }
    }

    public final void b(T t, int i2, A a2) {
        a(t, i2, a2, 0, Math.min(64, this.f2938a.size()), this.f2939b);
    }

    public final void c(T t, int i2, A a2) {
        int size = this.f2938a.size();
        long[] jArr = this.f2940c;
        int length = jArr == null ? -1 : jArr.length - 1;
        a(t, i2, a2, length);
        a(t, i2, a2, (length + 2) * 64, size, 0);
    }

    public synchronized C0273c<C, T, A> clone() {
        C0273c<C, T, A> cVar;
        CloneNotSupportedException e2;
        try {
            cVar = (C0273c) super.clone();
            try {
                cVar.f2939b = 0;
                cVar.f2940c = null;
                cVar.f2941d = 0;
                cVar.f2938a = new ArrayList();
                int size = this.f2938a.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (!a(i2)) {
                        cVar.f2938a.add(this.f2938a.get(i2));
                    }
                }
            } catch (CloneNotSupportedException e3) {
                e2 = e3;
                e2.printStackTrace();
                return cVar;
            }
        } catch (CloneNotSupportedException e4) {
            CloneNotSupportedException cloneNotSupportedException = e4;
            cVar = null;
            e2 = cloneNotSupportedException;
            e2.printStackTrace();
            return cVar;
        }
        return cVar;
    }

    public synchronized void b(C c2) {
        if (this.f2941d == 0) {
            this.f2938a.remove(c2);
        } else {
            int lastIndexOf = this.f2938a.lastIndexOf(c2);
            if (lastIndexOf >= 0) {
                b(lastIndexOf);
            }
        }
    }

    public final void b(int i2) {
        if (i2 < 64) {
            this.f2939b = (1 << i2) | this.f2939b;
            return;
        }
        int i3 = (i2 / 64) - 1;
        long[] jArr = this.f2940c;
        if (jArr == null) {
            this.f2940c = new long[(this.f2938a.size() / 64)];
        } else if (jArr.length <= i3) {
            long[] jArr2 = new long[(this.f2938a.size() / 64)];
            long[] jArr3 = this.f2940c;
            System.arraycopy(jArr3, 0, jArr2, 0, jArr3.length);
            this.f2940c = jArr2;
        }
        long j2 = 1 << (i2 % 64);
        long[] jArr4 = this.f2940c;
        jArr4[i3] = j2 | jArr4[i3];
    }

    public final void a(T t, int i2, A a2, int i3) {
        if (i3 < 0) {
            b(t, i2, a2);
            return;
        }
        long j2 = this.f2940c[i3];
        int i4 = (i3 + 1) * 64;
        int min = Math.min(this.f2938a.size(), i4 + 64);
        a(t, i2, a2, i3 - 1);
        a(t, i2, a2, i4, min, j2);
    }

    public final void a(T t, int i2, A a2, int i3, int i4, long j2) {
        long j3 = 1;
        while (i3 < i4) {
            if ((j2 & j3) == 0) {
                this.f2942e.a(this.f2938a.get(i3), t, i2, a2);
            }
            j3 <<= 1;
            i3++;
        }
    }

    public synchronized void a(C c2) {
        if (c2 != null) {
            int lastIndexOf = this.f2938a.lastIndexOf(c2);
            if (lastIndexOf < 0 || a(lastIndexOf)) {
                this.f2938a.add(c2);
            }
        } else {
            throw new IllegalArgumentException("callback cannot be null");
        }
    }

    public final boolean a(int i2) {
        boolean z = true;
        if (i2 < 64) {
            if (((1 << i2) & this.f2939b) == 0) {
                z = false;
            }
            return z;
        }
        long[] jArr = this.f2940c;
        if (jArr == null) {
            return false;
        }
        int i3 = (i2 / 64) - 1;
        if (i3 >= jArr.length) {
            return false;
        }
        if (((1 << (i2 % 64)) & jArr[i3]) == 0) {
            z = false;
        }
        return z;
    }

    public final void a(int i2, long j2) {
        long j3 = Long.MIN_VALUE;
        for (int i3 = (i2 + 64) - 1; i3 >= i2; i3--) {
            if ((j2 & j3) != 0) {
                this.f2938a.remove(i3);
            }
            j3 >>>= 1;
        }
    }
}
