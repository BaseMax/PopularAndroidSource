package b.f;

/* compiled from: SparseArrayCompat */
public class j<E> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f2379a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public boolean f2380b;

    /* renamed from: c  reason: collision with root package name */
    public int[] f2381c;

    /* renamed from: d  reason: collision with root package name */
    public Object[] f2382d;

    /* renamed from: e  reason: collision with root package name */
    public int f2383e;

    public j() {
        this(10);
    }

    public E a(int i2) {
        return b(i2, null);
    }

    public E b(int i2, E e2) {
        int a2 = e.a(this.f2381c, this.f2383e, i2);
        if (a2 >= 0) {
            E[] eArr = this.f2382d;
            if (eArr[a2] != f2379a) {
                return eArr[a2];
            }
        }
        return e2;
    }

    public void c(int i2, E e2) {
        int a2 = e.a(this.f2381c, this.f2383e, i2);
        if (a2 >= 0) {
            this.f2382d[a2] = e2;
        } else {
            int i3 = a2 ^ -1;
            if (i3 < this.f2383e) {
                Object[] objArr = this.f2382d;
                if (objArr[i3] == f2379a) {
                    this.f2381c[i3] = i2;
                    objArr[i3] = e2;
                    return;
                }
            }
            if (this.f2380b && this.f2383e >= this.f2381c.length) {
                b();
                i3 = e.a(this.f2381c, this.f2383e, i2) ^ -1;
            }
            int i4 = this.f2383e;
            if (i4 >= this.f2381c.length) {
                int b2 = e.b(i4 + 1);
                int[] iArr = new int[b2];
                Object[] objArr2 = new Object[b2];
                int[] iArr2 = this.f2381c;
                System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
                Object[] objArr3 = this.f2382d;
                System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
                this.f2381c = iArr;
                this.f2382d = objArr2;
            }
            int i5 = this.f2383e;
            if (i5 - i3 != 0) {
                int[] iArr3 = this.f2381c;
                int i6 = i3 + 1;
                System.arraycopy(iArr3, i3, iArr3, i6, i5 - i3);
                Object[] objArr4 = this.f2382d;
                System.arraycopy(objArr4, i3, objArr4, i6, this.f2383e - i3);
            }
            this.f2381c[i3] = i2;
            this.f2382d[i3] = e2;
            this.f2383e++;
        }
    }

    public void d(int i2) {
        int a2 = e.a(this.f2381c, this.f2383e, i2);
        if (a2 >= 0) {
            Object[] objArr = this.f2382d;
            Object obj = objArr[a2];
            Object obj2 = f2379a;
            if (obj != obj2) {
                objArr[a2] = obj2;
                this.f2380b = true;
            }
        }
    }

    public void e(int i2) {
        Object[] objArr = this.f2382d;
        Object obj = objArr[i2];
        Object obj2 = f2379a;
        if (obj != obj2) {
            objArr[i2] = obj2;
            this.f2380b = true;
        }
    }

    public E f(int i2) {
        if (this.f2380b) {
            b();
        }
        return this.f2382d[i2];
    }

    public String toString() {
        if (c() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2383e * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f2383e; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(c(i2));
            sb.append('=');
            Object f2 = f(i2);
            if (f2 != this) {
                sb.append(f2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public j(int i2) {
        this.f2380b = false;
        if (i2 == 0) {
            this.f2381c = e.f2341a;
            this.f2382d = e.f2343c;
            return;
        }
        int b2 = e.b(i2);
        this.f2381c = new int[b2];
        this.f2382d = new Object[b2];
    }

    public int a(E e2) {
        if (this.f2380b) {
            b();
        }
        for (int i2 = 0; i2 < this.f2383e; i2++) {
            if (this.f2382d[i2] == e2) {
                return i2;
            }
        }
        return -1;
    }

    public j<E> clone() {
        try {
            j<E> jVar = (j) super.clone();
            jVar.f2381c = (int[]) this.f2381c.clone();
            jVar.f2382d = (Object[]) this.f2382d.clone();
            return jVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public final void b() {
        int i2 = this.f2383e;
        int[] iArr = this.f2381c;
        Object[] objArr = this.f2382d;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr[i4];
            if (obj != f2379a) {
                if (i4 != i3) {
                    iArr[i3] = iArr[i4];
                    objArr[i3] = obj;
                    objArr[i4] = null;
                }
                i3++;
            }
        }
        this.f2380b = false;
        this.f2383e = i3;
    }

    public void a() {
        int i2 = this.f2383e;
        Object[] objArr = this.f2382d;
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = null;
        }
        this.f2383e = 0;
        this.f2380b = false;
    }

    public void a(int i2, E e2) {
        int i3 = this.f2383e;
        if (i3 == 0 || i2 > this.f2381c[i3 - 1]) {
            if (this.f2380b && this.f2383e >= this.f2381c.length) {
                b();
            }
            int i4 = this.f2383e;
            if (i4 >= this.f2381c.length) {
                int b2 = e.b(i4 + 1);
                int[] iArr = new int[b2];
                Object[] objArr = new Object[b2];
                int[] iArr2 = this.f2381c;
                System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
                Object[] objArr2 = this.f2382d;
                System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
                this.f2381c = iArr;
                this.f2382d = objArr;
            }
            this.f2381c[i4] = i2;
            this.f2382d[i4] = e2;
            this.f2383e = i4 + 1;
            return;
        }
        c(i2, e2);
    }

    public int b(int i2) {
        if (this.f2380b) {
            b();
        }
        return e.a(this.f2381c, this.f2383e, i2);
    }

    public int c() {
        if (this.f2380b) {
            b();
        }
        return this.f2383e;
    }

    public int c(int i2) {
        if (this.f2380b) {
            b();
        }
        return this.f2381c[i2];
    }
}
