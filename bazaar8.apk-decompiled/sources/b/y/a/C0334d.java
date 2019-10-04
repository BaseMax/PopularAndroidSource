package b.y.a;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* renamed from: b.y.a.d  reason: case insensitive filesystem */
/* compiled from: ChildHelper */
public class C0334d {

    /* renamed from: a  reason: collision with root package name */
    public final b f3453a;

    /* renamed from: b  reason: collision with root package name */
    public final a f3454b = new a();

    /* renamed from: c  reason: collision with root package name */
    public final List<View> f3455c = new ArrayList();

    /* renamed from: b.y.a.d$a */
    /* compiled from: ChildHelper */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public long f3456a = 0;

        /* renamed from: b  reason: collision with root package name */
        public a f3457b;

        public final void a() {
            if (this.f3457b == null) {
                this.f3457b = new a();
            }
        }

        public void b() {
            this.f3456a = 0;
            a aVar = this.f3457b;
            if (aVar != null) {
                aVar.b();
            }
        }

        public boolean c(int i2) {
            if (i2 >= 64) {
                a();
                return this.f3457b.c(i2 - 64);
            }
            return (this.f3456a & (1 << i2)) != 0;
        }

        public boolean d(int i2) {
            if (i2 >= 64) {
                a();
                return this.f3457b.d(i2 - 64);
            }
            long j2 = 1 << i2;
            boolean z = (this.f3456a & j2) != 0;
            this.f3456a &= j2 ^ -1;
            long j3 = j2 - 1;
            long j4 = this.f3456a;
            this.f3456a = Long.rotateRight(j4 & (j3 ^ -1), 1) | (j4 & j3);
            a aVar = this.f3457b;
            if (aVar != null) {
                if (aVar.c(0)) {
                    e(63);
                }
                this.f3457b.d(0);
            }
            return z;
        }

        public void e(int i2) {
            if (i2 >= 64) {
                a();
                this.f3457b.e(i2 - 64);
                return;
            }
            this.f3456a |= 1 << i2;
        }

        public String toString() {
            if (this.f3457b == null) {
                return Long.toBinaryString(this.f3456a);
            }
            return this.f3457b.toString() + "xx" + Long.toBinaryString(this.f3456a);
        }

        public void a(int i2) {
            if (i2 >= 64) {
                a aVar = this.f3457b;
                if (aVar != null) {
                    aVar.a(i2 - 64);
                    return;
                }
                return;
            }
            this.f3456a &= (1 << i2) ^ -1;
        }

        public int b(int i2) {
            a aVar = this.f3457b;
            if (aVar == null) {
                if (i2 >= 64) {
                    return Long.bitCount(this.f3456a);
                }
                return Long.bitCount(this.f3456a & ((1 << i2) - 1));
            } else if (i2 < 64) {
                return Long.bitCount(this.f3456a & ((1 << i2) - 1));
            } else {
                return aVar.b(i2 - 64) + Long.bitCount(this.f3456a);
            }
        }

        public void a(int i2, boolean z) {
            if (i2 >= 64) {
                a();
                this.f3457b.a(i2 - 64, z);
                return;
            }
            boolean z2 = (this.f3456a & Long.MIN_VALUE) != 0;
            long j2 = (1 << i2) - 1;
            long j3 = this.f3456a;
            this.f3456a = ((j3 & (j2 ^ -1)) << 1) | (j3 & j2);
            if (z) {
                e(i2);
            } else {
                a(i2);
            }
            if (z2 || this.f3457b != null) {
                a();
                this.f3457b.a(0, z2);
            }
        }
    }

    /* renamed from: b.y.a.d$b */
    /* compiled from: ChildHelper */
    interface b {
        int a();

        View a(int i2);

        void a(View view);

        void a(View view, int i2);

        void a(View view, int i2, ViewGroup.LayoutParams layoutParams);

        int b(View view);

        void b();

        void b(int i2);

        RecyclerView.w c(View view);

        void c(int i2);

        void d(View view);
    }

    public C0334d(b bVar) {
        this.f3453a = bVar;
    }

    public void a(View view, boolean z) {
        a(view, -1, z);
    }

    public final void b(View view) {
        this.f3455c.add(view);
        this.f3453a.a(view);
    }

    public View c(int i2) {
        return this.f3453a.a(d(i2));
    }

    public final int d(int i2) {
        if (i2 < 0) {
            return -1;
        }
        int a2 = this.f3453a.a();
        int i3 = i2;
        while (i3 < a2) {
            int b2 = i2 - (i3 - this.f3454b.b(i3));
            if (b2 == 0) {
                while (this.f3454b.c(i3)) {
                    i3++;
                }
                return i3;
            }
            i3 += b2;
        }
        return -1;
    }

    public void e(View view) {
        int b2 = this.f3453a.b(view);
        if (b2 >= 0) {
            if (this.f3454b.d(b2)) {
                h(view);
            }
            this.f3453a.c(b2);
        }
    }

    public void f(int i2) {
        int d2 = d(i2);
        View a2 = this.f3453a.a(d2);
        if (a2 != null) {
            if (this.f3454b.d(d2)) {
                h(a2);
            }
            this.f3453a.c(d2);
        }
    }

    public void g(View view) {
        int b2 = this.f3453a.b(view);
        if (b2 < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        } else if (this.f3454b.c(b2)) {
            this.f3454b.a(b2);
            h(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    public final boolean h(View view) {
        if (!this.f3455c.remove(view)) {
            return false;
        }
        this.f3453a.d(view);
        return true;
    }

    public String toString() {
        return this.f3454b.toString() + ", hidden list:" + this.f3455c.size();
    }

    public void a(View view, int i2, boolean z) {
        int i3;
        if (i2 < 0) {
            i3 = this.f3453a.a();
        } else {
            i3 = d(i2);
        }
        this.f3454b.a(i3, z);
        if (z) {
            b(view);
        }
        this.f3453a.a(view, i3);
    }

    public View b(int i2) {
        int size = this.f3455c.size();
        for (int i3 = 0; i3 < size; i3++) {
            View view = this.f3455c.get(i3);
            RecyclerView.w c2 = this.f3453a.c(view);
            if (c2.j() == i2 && !c2.o() && !c2.q()) {
                return view;
            }
        }
        return null;
    }

    public void c() {
        this.f3454b.b();
        for (int size = this.f3455c.size() - 1; size >= 0; size--) {
            this.f3453a.d(this.f3455c.get(size));
            this.f3455c.remove(size);
        }
        this.f3453a.b();
    }

    public boolean d(View view) {
        return this.f3455c.contains(view);
    }

    public View e(int i2) {
        return this.f3453a.a(i2);
    }

    public boolean f(View view) {
        int b2 = this.f3453a.b(view);
        if (b2 == -1) {
            h(view);
            return true;
        } else if (!this.f3454b.c(b2)) {
            return false;
        } else {
            this.f3454b.d(b2);
            h(view);
            this.f3453a.c(b2);
            return true;
        }
    }

    public void a(View view, int i2, ViewGroup.LayoutParams layoutParams, boolean z) {
        int i3;
        if (i2 < 0) {
            i3 = this.f3453a.a();
        } else {
            i3 = d(i2);
        }
        this.f3454b.a(i3, z);
        if (z) {
            b(view);
        }
        this.f3453a.a(view, i3, layoutParams);
    }

    public int c(View view) {
        int b2 = this.f3453a.b(view);
        if (b2 != -1 && !this.f3454b.c(b2)) {
            return b2 - this.f3454b.b(b2);
        }
        return -1;
    }

    public int b() {
        return this.f3453a.a();
    }

    public int a() {
        return this.f3453a.a() - this.f3455c.size();
    }

    public void a(int i2) {
        int d2 = d(i2);
        this.f3454b.d(d2);
        this.f3453a.b(d2);
    }

    public void a(View view) {
        int b2 = this.f3453a.b(view);
        if (b2 >= 0) {
            this.f3454b.e(b2);
            b(view);
            return;
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }
}
