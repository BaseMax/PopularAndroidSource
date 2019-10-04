package b.y.a;

import androidx.recyclerview.widget.RecyclerView;
import b.i.j.e;
import b.i.j.f;
import b.y.a.A;
import java.util.ArrayList;
import java.util.List;

/* renamed from: b.y.a.a  reason: case insensitive filesystem */
/* compiled from: AdapterHelper */
public class C0331a implements A.a {

    /* renamed from: a  reason: collision with root package name */
    public e<b> f3435a;

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList<b> f3436b;

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList<b> f3437c;

    /* renamed from: d  reason: collision with root package name */
    public final C0046a f3438d;

    /* renamed from: e  reason: collision with root package name */
    public Runnable f3439e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f3440f;

    /* renamed from: g  reason: collision with root package name */
    public final A f3441g;

    /* renamed from: h  reason: collision with root package name */
    public int f3442h;

    /* renamed from: b.y.a.a$a  reason: collision with other inner class name */
    /* compiled from: AdapterHelper */
    interface C0046a {
        RecyclerView.w a(int i2);

        void a(int i2, int i3);

        void a(int i2, int i3, Object obj);

        void a(b bVar);

        void b(int i2, int i3);

        void b(b bVar);

        void c(int i2, int i3);

        void d(int i2, int i3);
    }

    /* renamed from: b.y.a.a$b */
    /* compiled from: AdapterHelper */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f3443a;

        /* renamed from: b  reason: collision with root package name */
        public int f3444b;

        /* renamed from: c  reason: collision with root package name */
        public Object f3445c;

        /* renamed from: d  reason: collision with root package name */
        public int f3446d;

        public b(int i2, int i3, int i4, Object obj) {
            this.f3443a = i2;
            this.f3444b = i3;
            this.f3446d = i4;
            this.f3445c = obj;
        }

        public String a() {
            int i2 = this.f3443a;
            if (i2 == 1) {
                return "add";
            }
            if (i2 == 2) {
                return "rm";
            }
            if (i2 != 4) {
                return i2 != 8 ? "??" : "mv";
            }
            return "up";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            int i2 = this.f3443a;
            if (i2 != bVar.f3443a) {
                return false;
            }
            if (i2 == 8 && Math.abs(this.f3446d - this.f3444b) == 1 && this.f3446d == bVar.f3444b && this.f3444b == bVar.f3446d) {
                return true;
            }
            if (this.f3446d != bVar.f3446d || this.f3444b != bVar.f3444b) {
                return false;
            }
            Object obj2 = this.f3445c;
            if (obj2 != null) {
                if (!obj2.equals(bVar.f3445c)) {
                    return false;
                }
            } else if (bVar.f3445c != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.f3443a * 31) + this.f3444b) * 31) + this.f3446d;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + a() + ",s:" + this.f3444b + "c:" + this.f3446d + ",p:" + this.f3445c + "]";
        }
    }

    public C0331a(C0046a aVar) {
        this(aVar, false);
    }

    public void a() {
        int size = this.f3437c.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f3438d.b(this.f3437c.get(i2));
        }
        a((List<b>) this.f3437c);
        this.f3442h = 0;
    }

    public final boolean b(int i2) {
        int size = this.f3437c.size();
        for (int i3 = 0; i3 < size; i3++) {
            b bVar = this.f3437c.get(i3);
            int i4 = bVar.f3443a;
            if (i4 == 8) {
                if (a(bVar.f3446d, i3 + 1) == i2) {
                    return true;
                }
            } else if (i4 == 1) {
                int i5 = bVar.f3444b;
                int i6 = bVar.f3446d + i5;
                while (i5 < i6) {
                    if (a(i5, i3 + 1) == i2) {
                        return true;
                    }
                    i5++;
                }
                continue;
            } else {
                continue;
            }
        }
        return false;
    }

    public final void c(b bVar) {
        g(bVar);
    }

    public final void d(b bVar) {
        char c2;
        boolean z;
        boolean z2;
        int i2 = bVar.f3444b;
        int i3 = bVar.f3446d + i2;
        int i4 = 0;
        char c3 = 65535;
        int i5 = i2;
        while (i5 < i3) {
            if (this.f3438d.a(i5) != null || b(i5)) {
                if (c3 == 0) {
                    f(a(2, i2, i4, null));
                    z2 = true;
                } else {
                    z2 = false;
                }
                c2 = 1;
            } else {
                if (c3 == 1) {
                    g(a(2, i2, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                c2 = 0;
            }
            if (z) {
                i5 -= i4;
                i3 -= i4;
                i4 = 1;
            } else {
                i4++;
            }
            i5++;
            c3 = c2;
        }
        if (i4 != bVar.f3446d) {
            a(bVar);
            bVar = a(2, i2, i4, null);
        }
        if (c3 == 0) {
            f(bVar);
        } else {
            g(bVar);
        }
    }

    public void e() {
        this.f3441g.b(this.f3436b);
        int size = this.f3436b.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f3436b.get(i2);
            int i3 = bVar.f3443a;
            if (i3 == 1) {
                b(bVar);
            } else if (i3 == 2) {
                d(bVar);
            } else if (i3 == 4) {
                e(bVar);
            } else if (i3 == 8) {
                c(bVar);
            }
            Runnable runnable = this.f3439e;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f3436b.clear();
    }

    public void f() {
        a((List<b>) this.f3436b);
        a((List<b>) this.f3437c);
        this.f3442h = 0;
    }

    public final void g(b bVar) {
        this.f3437c.add(bVar);
        int i2 = bVar.f3443a;
        if (i2 == 1) {
            this.f3438d.c(bVar.f3444b, bVar.f3446d);
        } else if (i2 == 2) {
            this.f3438d.b(bVar.f3444b, bVar.f3446d);
        } else if (i2 == 4) {
            this.f3438d.a(bVar.f3444b, bVar.f3446d, bVar.f3445c);
        } else if (i2 == 8) {
            this.f3438d.a(bVar.f3444b, bVar.f3446d);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }

    public C0331a(C0046a aVar, boolean z) {
        this.f3435a = new f(30);
        this.f3436b = new ArrayList<>();
        this.f3437c = new ArrayList<>();
        this.f3442h = 0;
        this.f3438d = aVar;
        this.f3440f = z;
        this.f3441g = new A(this);
    }

    public boolean c() {
        return this.f3436b.size() > 0;
    }

    public int c(int i2) {
        return a(i2, 0);
    }

    public boolean c(int i2, int i3) {
        boolean z = false;
        if (i3 < 1) {
            return false;
        }
        this.f3436b.add(a(2, i2, i3, null));
        this.f3442h |= 2;
        if (this.f3436b.size() == 1) {
            z = true;
        }
        return z;
    }

    public final void f(b bVar) {
        int i2;
        int i3 = bVar.f3443a;
        if (i3 == 1 || i3 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int d2 = d(bVar.f3444b, i3);
        int i4 = bVar.f3444b;
        int i5 = bVar.f3443a;
        if (i5 == 2) {
            i2 = 0;
        } else if (i5 == 4) {
            i2 = 1;
        } else {
            throw new IllegalArgumentException("op should be remove or update." + bVar);
        }
        int i6 = d2;
        int i7 = i4;
        int i8 = 1;
        for (int i9 = 1; i9 < bVar.f3446d; i9++) {
            int d3 = d(bVar.f3444b + (i2 * i9), bVar.f3443a);
            int i10 = bVar.f3443a;
            if (i10 == 2 ? d3 == i6 : i10 == 4 && d3 == i6 + 1) {
                i8++;
            } else {
                b a2 = a(bVar.f3443a, i6, i8, bVar.f3445c);
                a(a2, i7);
                a(a2);
                if (bVar.f3443a == 4) {
                    i7 += i8;
                }
                i6 = d3;
                i8 = 1;
            }
        }
        Object obj = bVar.f3445c;
        a(bVar);
        if (i8 > 0) {
            b a3 = a(bVar.f3443a, i6, i8, obj);
            a(a3, i7);
            a(a3);
        }
    }

    public void a(b bVar, int i2) {
        this.f3438d.a(bVar);
        int i3 = bVar.f3443a;
        if (i3 == 2) {
            this.f3438d.d(i2, bVar.f3446d);
        } else if (i3 == 4) {
            this.f3438d.a(i2, bVar.f3446d, bVar.f3445c);
        } else {
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
    }

    public final void b(b bVar) {
        g(bVar);
    }

    public boolean b(int i2, int i3) {
        boolean z = false;
        if (i3 < 1) {
            return false;
        }
        this.f3436b.add(a(1, i2, i3, null));
        this.f3442h |= 1;
        if (this.f3436b.size() == 1) {
            z = true;
        }
        return z;
    }

    public int a(int i2, int i3) {
        int size = this.f3437c.size();
        while (i3 < size) {
            b bVar = this.f3437c.get(i3);
            int i4 = bVar.f3443a;
            if (i4 == 8) {
                int i5 = bVar.f3444b;
                if (i5 == i2) {
                    i2 = bVar.f3446d;
                } else {
                    if (i5 < i2) {
                        i2--;
                    }
                    if (bVar.f3446d <= i2) {
                        i2++;
                    }
                }
            } else {
                int i6 = bVar.f3444b;
                if (i6 > i2) {
                    continue;
                } else if (i4 == 2) {
                    int i7 = bVar.f3446d;
                    if (i2 < i6 + i7) {
                        return -1;
                    }
                    i2 -= i7;
                } else if (i4 == 1) {
                    i2 += bVar.f3446d;
                }
            }
            i3++;
        }
        return i2;
    }

    public void b() {
        a();
        int size = this.f3436b.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f3436b.get(i2);
            int i3 = bVar.f3443a;
            if (i3 == 1) {
                this.f3438d.b(bVar);
                this.f3438d.c(bVar.f3444b, bVar.f3446d);
            } else if (i3 == 2) {
                this.f3438d.b(bVar);
                this.f3438d.d(bVar.f3444b, bVar.f3446d);
            } else if (i3 == 4) {
                this.f3438d.b(bVar);
                this.f3438d.a(bVar.f3444b, bVar.f3446d, bVar.f3445c);
            } else if (i3 == 8) {
                this.f3438d.b(bVar);
                this.f3438d.a(bVar.f3444b, bVar.f3446d);
            }
            Runnable runnable = this.f3439e;
            if (runnable != null) {
                runnable.run();
            }
        }
        a((List<b>) this.f3436b);
        this.f3442h = 0;
    }

    public final void e(b bVar) {
        int i2 = bVar.f3444b;
        int i3 = bVar.f3446d + i2;
        int i4 = i2;
        int i5 = 0;
        char c2 = 65535;
        while (i2 < i3) {
            if (this.f3438d.a(i2) != null || b(i2)) {
                if (c2 == 0) {
                    f(a(4, i4, i5, bVar.f3445c));
                    i4 = i2;
                    i5 = 0;
                }
                c2 = 1;
            } else {
                if (c2 == 1) {
                    g(a(4, i4, i5, bVar.f3445c));
                    i4 = i2;
                    i5 = 0;
                }
                c2 = 0;
            }
            i5++;
            i2++;
        }
        if (i5 != bVar.f3446d) {
            Object obj = bVar.f3445c;
            a(bVar);
            bVar = a(4, i4, i5, obj);
        }
        if (c2 == 0) {
            f(bVar);
        } else {
            g(bVar);
        }
    }

    public final int d(int i2, int i3) {
        for (int size = this.f3437c.size() - 1; size >= 0; size--) {
            b bVar = this.f3437c.get(size);
            int i4 = bVar.f3443a;
            if (i4 == 8) {
                int i5 = bVar.f3444b;
                int i6 = bVar.f3446d;
                if (i5 >= i6) {
                    int i7 = i6;
                    i6 = i5;
                    i5 = i7;
                }
                if (i2 < i5 || i2 > i6) {
                    int i8 = bVar.f3444b;
                    if (i2 < i8) {
                        if (i3 == 1) {
                            bVar.f3444b = i8 + 1;
                            bVar.f3446d++;
                        } else if (i3 == 2) {
                            bVar.f3444b = i8 - 1;
                            bVar.f3446d--;
                        }
                    }
                } else {
                    int i9 = bVar.f3444b;
                    if (i5 == i9) {
                        if (i3 == 1) {
                            bVar.f3446d++;
                        } else if (i3 == 2) {
                            bVar.f3446d--;
                        }
                        i2++;
                    } else {
                        if (i3 == 1) {
                            bVar.f3444b = i9 + 1;
                        } else if (i3 == 2) {
                            bVar.f3444b = i9 - 1;
                        }
                        i2--;
                    }
                }
            } else {
                int i10 = bVar.f3444b;
                if (i10 <= i2) {
                    if (i4 == 1) {
                        i2 -= bVar.f3446d;
                    } else if (i4 == 2) {
                        i2 += bVar.f3446d;
                    }
                } else if (i3 == 1) {
                    bVar.f3444b = i10 + 1;
                } else if (i3 == 2) {
                    bVar.f3444b = i10 - 1;
                }
            }
        }
        for (int size2 = this.f3437c.size() - 1; size2 >= 0; size2--) {
            b bVar2 = this.f3437c.get(size2);
            if (bVar2.f3443a == 8) {
                int i11 = bVar2.f3446d;
                if (i11 == bVar2.f3444b || i11 < 0) {
                    this.f3437c.remove(size2);
                    a(bVar2);
                }
            } else if (bVar2.f3446d <= 0) {
                this.f3437c.remove(size2);
                a(bVar2);
            }
        }
        return i2;
    }

    public boolean a(int i2, int i3, Object obj) {
        boolean z = false;
        if (i3 < 1) {
            return false;
        }
        this.f3436b.add(a(4, i2, i3, obj));
        this.f3442h |= 4;
        if (this.f3436b.size() == 1) {
            z = true;
        }
        return z;
    }

    public boolean a(int i2, int i3, int i4) {
        boolean z = false;
        if (i2 == i3) {
            return false;
        }
        if (i4 == 1) {
            this.f3436b.add(a(8, i2, i3, null));
            this.f3442h |= 8;
            if (this.f3436b.size() == 1) {
                z = true;
            }
            return z;
        }
        throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
    }

    public int a(int i2) {
        int size = this.f3436b.size();
        for (int i3 = 0; i3 < size; i3++) {
            b bVar = this.f3436b.get(i3);
            int i4 = bVar.f3443a;
            if (i4 != 1) {
                if (i4 == 2) {
                    int i5 = bVar.f3444b;
                    if (i5 <= i2) {
                        int i6 = bVar.f3446d;
                        if (i5 + i6 > i2) {
                            return -1;
                        }
                        i2 -= i6;
                    } else {
                        continue;
                    }
                } else if (i4 == 8) {
                    int i7 = bVar.f3444b;
                    if (i7 == i2) {
                        i2 = bVar.f3446d;
                    } else {
                        if (i7 < i2) {
                            i2--;
                        }
                        if (bVar.f3446d <= i2) {
                            i2++;
                        }
                    }
                }
            } else if (bVar.f3444b <= i2) {
                i2 += bVar.f3446d;
            }
        }
        return i2;
    }

    public b a(int i2, int i3, int i4, Object obj) {
        b a2 = this.f3435a.a();
        if (a2 == null) {
            return new b(i2, i3, i4, obj);
        }
        a2.f3443a = i2;
        a2.f3444b = i3;
        a2.f3446d = i4;
        a2.f3445c = obj;
        return a2;
    }

    public void a(b bVar) {
        if (!this.f3440f) {
            bVar.f3445c = null;
            this.f3435a.a(bVar);
        }
    }

    public boolean d(int i2) {
        return (i2 & this.f3442h) != 0;
    }

    public boolean d() {
        return !this.f3437c.isEmpty() && !this.f3436b.isEmpty();
    }

    public void a(List<b> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            a(list.get(i2));
        }
        list.clear();
    }
}
