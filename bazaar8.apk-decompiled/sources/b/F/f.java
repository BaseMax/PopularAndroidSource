package b.f;

/* compiled from: LongSparseArray */
public class f<E> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f2344a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public boolean f2345b;

    /* renamed from: c  reason: collision with root package name */
    public long[] f2346c;

    /* renamed from: d  reason: collision with root package name */
    public Object[] f2347d;

    /* renamed from: e  reason: collision with root package name */
    public int f2348e;

    public f() {
        this(10);
    }

    @Deprecated
    public void a(long j2) {
        d(j2);
    }

    public E b(long j2) {
        return b(j2, null);
    }

    public void c(long j2, E e2) {
        int a2 = e.a(this.f2346c, this.f2348e, j2);
        if (a2 >= 0) {
            this.f2347d[a2] = e2;
        } else {
            int i2 = a2 ^ -1;
            if (i2 < this.f2348e) {
                Object[] objArr = this.f2347d;
                if (objArr[i2] == f2344a) {
                    this.f2346c[i2] = j2;
                    objArr[i2] = e2;
                    return;
                }
            }
            if (this.f2345b && this.f2348e >= this.f2346c.length) {
                b();
                i2 = e.a(this.f2346c, this.f2348e, j2) ^ -1;
            }
            int i3 = this.f2348e;
            if (i3 >= this.f2346c.length) {
                int c2 = e.c(i3 + 1);
                long[] jArr = new long[c2];
                Object[] objArr2 = new Object[c2];
                long[] jArr2 = this.f2346c;
                System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
                Object[] objArr3 = this.f2347d;
                System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
                this.f2346c = jArr;
                this.f2347d = objArr2;
            }
            int i4 = this.f2348e;
            if (i4 - i2 != 0) {
                long[] jArr3 = this.f2346c;
                int i5 = i2 + 1;
                System.arraycopy(jArr3, i2, jArr3, i5, i4 - i2);
                Object[] objArr4 = this.f2347d;
                System.arraycopy(objArr4, i2, objArr4, i5, this.f2348e - i2);
            }
            this.f2346c[i2] = j2;
            this.f2347d[i2] = e2;
            this.f2348e++;
        }
    }

    public void d(long j2) {
        int a2 = e.a(this.f2346c, this.f2348e, j2);
        if (a2 >= 0) {
            Object[] objArr = this.f2347d;
            Object obj = objArr[a2];
            Object obj2 = f2344a;
            if (obj != obj2) {
                objArr[a2] = obj2;
                this.f2345b = true;
            }
        }
    }

    public String toString() {
        if (c() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2348e * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f2348e; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(a(i2));
            sb.append('=');
            Object c2 = c(i2);
            if (c2 != this) {
                sb.append(c2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public f(int i2) {
        this.f2345b = false;
        if (i2 == 0) {
            this.f2346c = e.f2342b;
            this.f2347d = e.f2343c;
            return;
        }
        int c2 = e.c(i2);
        this.f2346c = new long[c2];
        this.f2347d = new Object[c2];
    }

    public long a(int i2) {
        if (this.f2345b) {
            b();
        }
        return this.f2346c[i2];
    }

    public E b(long j2, E e2) {
        int a2 = e.a(this.f2346c, this.f2348e, j2);
        if (a2 >= 0) {
            E[] eArr = this.f2347d;
            if (eArr[a2] != f2344a) {
                return eArr[a2];
            }
        }
        return e2;
    }

    public f<E> clone() {
        try {
            f<E> fVar = (f) super.clone();
            fVar.f2346c = (long[]) this.f2346c.clone();
            fVar.f2347d = (Object[]) this.f2347d.clone();
            return fVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public void a() {
        int i2 = this.f2348e;
        Object[] objArr = this.f2347d;
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = null;
        }
        this.f2348e = 0;
        this.f2345b = false;
    }

    public void b(int i2) {
        Object[] objArr = this.f2347d;
        Object obj = objArr[i2];
        Object obj2 = f2344a;
        if (obj != obj2) {
            objArr[i2] = obj2;
            this.f2345b = true;
        }
    }

    public final void b() {
        int i2 = this.f2348e;
        long[] jArr = this.f2346c;
        Object[] objArr = this.f2347d;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr[i4];
            if (obj != f2344a) {
                if (i4 != i3) {
                    jArr[i3] = jArr[i4];
                    objArr[i3] = obj;
                    objArr[i4] = null;
                }
                i3++;
            }
        }
        this.f2345b = false;
        this.f2348e = i3;
    }

    public void a(long j2, E e2) {
        int i2 = this.f2348e;
        if (i2 == 0 || j2 > this.f2346c[i2 - 1]) {
            if (this.f2345b && this.f2348e >= this.f2346c.length) {
                b();
            }
            int i3 = this.f2348e;
            if (i3 >= this.f2346c.length) {
                int c2 = e.c(i3 + 1);
                long[] jArr = new long[c2];
                Object[] objArr = new Object[c2];
                long[] jArr2 = this.f2346c;
                System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
                Object[] objArr2 = this.f2347d;
                System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
                this.f2346c = jArr;
                this.f2347d = objArr;
            }
            this.f2346c[i3] = j2;
            this.f2347d[i3] = e2;
            this.f2348e = i3 + 1;
            return;
        }
        c(j2, e2);
    }

    public int c() {
        if (this.f2345b) {
            b();
        }
        return this.f2348e;
    }

    public E c(int i2) {
        if (this.f2345b) {
            b();
        }
        return this.f2347d[i2];
    }

    public int c(long j2) {
        if (this.f2345b) {
            b();
        }
        return e.a(this.f2346c, this.f2348e, j2);
    }
}
