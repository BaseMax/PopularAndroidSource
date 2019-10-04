package b.b.f.a;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.widget.PopupWindow;
import b.b.f.a.t;
import b.i.k.C0260c;
import b.i.k.z;

/* compiled from: MenuPopupHelper */
public class s implements m {

    /* renamed from: a  reason: collision with root package name */
    public final Context f1920a;

    /* renamed from: b  reason: collision with root package name */
    public final k f1921b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f1922c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1923d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1924e;

    /* renamed from: f  reason: collision with root package name */
    public View f1925f;

    /* renamed from: g  reason: collision with root package name */
    public int f1926g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f1927h;

    /* renamed from: i  reason: collision with root package name */
    public t.a f1928i;

    /* renamed from: j  reason: collision with root package name */
    public q f1929j;

    /* renamed from: k  reason: collision with root package name */
    public PopupWindow.OnDismissListener f1930k;

    /* renamed from: l  reason: collision with root package name */
    public final PopupWindow.OnDismissListener f1931l;

    public s(Context context, k kVar, View view, boolean z, int i2) {
        this(context, kVar, view, z, i2, 0);
    }

    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.f1930k = onDismissListener;
    }

    public void b() {
        if (d()) {
            this.f1929j.dismiss();
        }
    }

    public q c() {
        if (this.f1929j == null) {
            this.f1929j = a();
        }
        return this.f1929j;
    }

    public boolean d() {
        q qVar = this.f1929j;
        return qVar != null && qVar.c();
    }

    public void e() {
        this.f1929j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f1930k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public void f() {
        if (!g()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public boolean g() {
        if (d()) {
            return true;
        }
        if (this.f1925f == null) {
            return false;
        }
        a(0, 0, false, false);
        return true;
    }

    public s(Context context, k kVar, View view, boolean z, int i2, int i3) {
        this.f1926g = 8388611;
        this.f1931l = new r(this);
        this.f1920a = context;
        this.f1921b = kVar;
        this.f1925f = view;
        this.f1922c = z;
        this.f1923d = i2;
        this.f1924e = i3;
    }

    public void a(View view) {
        this.f1925f = view;
    }

    public void a(boolean z) {
        this.f1927h = z;
        q qVar = this.f1929j;
        if (qVar != null) {
            qVar.b(z);
        }
    }

    public void a(int i2) {
        this.f1926g = i2;
    }

    public boolean a(int i2, int i3) {
        if (d()) {
            return true;
        }
        if (this.f1925f == null) {
            return false;
        }
        a(i2, i3, true, true);
        return true;
    }

    /* JADX WARNING: type inference failed for: r0v7, types: [b.b.f.a.q, b.b.f.a.t] */
    /* JADX WARNING: type inference failed for: r7v1, types: [b.b.f.a.z] */
    /* JADX WARNING: type inference failed for: r1v13, types: [b.b.f.a.h] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final b.b.f.a.q a() {
        /*
            r14 = this;
            android.content.Context r0 = r14.f1920a
            java.lang.String r1 = "window"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.view.WindowManager r0 = (android.view.WindowManager) r0
            android.view.Display r0 = r0.getDefaultDisplay()
            android.graphics.Point r1 = new android.graphics.Point
            r1.<init>()
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 17
            if (r2 < r3) goto L_0x001d
            r0.getRealSize(r1)
            goto L_0x0020
        L_0x001d:
            r0.getSize(r1)
        L_0x0020:
            int r0 = r1.x
            int r1 = r1.y
            int r0 = java.lang.Math.min(r0, r1)
            android.content.Context r1 = r14.f1920a
            android.content.res.Resources r1 = r1.getResources()
            int r2 = b.b.d.abc_cascading_menus_min_smallest_width
            int r1 = r1.getDimensionPixelSize(r2)
            if (r0 < r1) goto L_0x0038
            r0 = 1
            goto L_0x0039
        L_0x0038:
            r0 = 0
        L_0x0039:
            if (r0 == 0) goto L_0x004c
            b.b.f.a.h r0 = new b.b.f.a.h
            android.content.Context r2 = r14.f1920a
            android.view.View r3 = r14.f1925f
            int r4 = r14.f1923d
            int r5 = r14.f1924e
            boolean r6 = r14.f1922c
            r1 = r0
            r1.<init>(r2, r3, r4, r5, r6)
            goto L_0x005e
        L_0x004c:
            b.b.f.a.z r0 = new b.b.f.a.z
            android.content.Context r8 = r14.f1920a
            b.b.f.a.k r9 = r14.f1921b
            android.view.View r10 = r14.f1925f
            int r11 = r14.f1923d
            int r12 = r14.f1924e
            boolean r13 = r14.f1922c
            r7 = r0
            r7.<init>(r8, r9, r10, r11, r12, r13)
        L_0x005e:
            b.b.f.a.k r1 = r14.f1921b
            r0.a((b.b.f.a.k) r1)
            android.widget.PopupWindow$OnDismissListener r1 = r14.f1931l
            r0.a((android.widget.PopupWindow.OnDismissListener) r1)
            android.view.View r1 = r14.f1925f
            r0.a((android.view.View) r1)
            b.b.f.a.t$a r1 = r14.f1928i
            r0.a((b.b.f.a.t.a) r1)
            boolean r1 = r14.f1927h
            r0.b((boolean) r1)
            int r1 = r14.f1926g
            r0.a((int) r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.f.a.s.a():b.b.f.a.q");
    }

    public final void a(int i2, int i3, boolean z, boolean z2) {
        q c2 = c();
        c2.c(z2);
        if (z) {
            if ((C0260c.a(this.f1926g, z.m(this.f1925f)) & 7) == 5) {
                i2 -= this.f1925f.getWidth();
            }
            c2.b(i2);
            c2.c(i3);
            int i4 = (int) ((this.f1920a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            c2.a(new Rect(i2 - i4, i3 - i4, i2 + i4, i3 + i4));
        }
        c2.d();
    }

    public void a(t.a aVar) {
        this.f1928i = aVar;
        q qVar = this.f1929j;
        if (qVar != null) {
            qVar.a(aVar);
        }
    }
}
