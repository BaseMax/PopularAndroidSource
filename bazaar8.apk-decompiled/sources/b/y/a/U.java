package b.y.a;

import android.view.View;

/* compiled from: ViewBoundsCheck */
public class U {

    /* renamed from: a  reason: collision with root package name */
    public final b f3422a;

    /* renamed from: b  reason: collision with root package name */
    public a f3423b = new a();

    /* compiled from: ViewBoundsCheck */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public int f3424a = 0;

        /* renamed from: b  reason: collision with root package name */
        public int f3425b;

        /* renamed from: c  reason: collision with root package name */
        public int f3426c;

        /* renamed from: d  reason: collision with root package name */
        public int f3427d;

        /* renamed from: e  reason: collision with root package name */
        public int f3428e;

        public int a(int i2, int i3) {
            if (i2 > i3) {
                return 1;
            }
            return i2 == i3 ? 2 : 4;
        }

        public void a(int i2, int i3, int i4, int i5) {
            this.f3425b = i2;
            this.f3426c = i3;
            this.f3427d = i4;
            this.f3428e = i5;
        }

        public void b() {
            this.f3424a = 0;
        }

        public void a(int i2) {
            this.f3424a = i2 | this.f3424a;
        }

        public boolean a() {
            int i2 = this.f3424a;
            if ((i2 & 7) != 0 && (i2 & (a(this.f3427d, this.f3425b) << 0)) == 0) {
                return false;
            }
            int i3 = this.f3424a;
            if ((i3 & 112) != 0 && (i3 & (a(this.f3427d, this.f3426c) << 4)) == 0) {
                return false;
            }
            int i4 = this.f3424a;
            if ((i4 & 1792) != 0 && (i4 & (a(this.f3428e, this.f3425b) << 8)) == 0) {
                return false;
            }
            int i5 = this.f3424a;
            if ((i5 & 28672) == 0 || (i5 & (a(this.f3428e, this.f3426c) << 12)) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: ViewBoundsCheck */
    interface b {
        int a();

        int a(View view);

        View a(int i2);

        int b();

        int b(View view);
    }

    public U(b bVar) {
        this.f3422a = bVar;
    }

    public View a(int i2, int i3, int i4, int i5) {
        int a2 = this.f3422a.a();
        int b2 = this.f3422a.b();
        int i6 = i3 > i2 ? 1 : -1;
        View view = null;
        while (i2 != i3) {
            View a3 = this.f3422a.a(i2);
            this.f3423b.a(a2, b2, this.f3422a.a(a3), this.f3422a.b(a3));
            if (i4 != 0) {
                this.f3423b.b();
                this.f3423b.a(i4);
                if (this.f3423b.a()) {
                    return a3;
                }
            }
            if (i5 != 0) {
                this.f3423b.b();
                this.f3423b.a(i5);
                if (this.f3423b.a()) {
                    view = a3;
                }
            }
            i2 += i6;
        }
        return view;
    }

    public boolean a(View view, int i2) {
        this.f3423b.a(this.f3422a.a(), this.f3422a.b(), this.f3422a.a(view), this.f3422a.b(view));
        if (i2 == 0) {
            return false;
        }
        this.f3423b.b();
        this.f3423b.a(i2);
        return this.f3423b.a();
    }
}
