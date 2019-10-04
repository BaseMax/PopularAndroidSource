package b.b.f.a;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import b.b.d;
import b.b.f.a.t;
import b.b.g;
import b.b.g.P;

/* compiled from: StandardMenuPopup */
public final class z extends q implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, t, View.OnKeyListener {

    /* renamed from: b  reason: collision with root package name */
    public static final int f1935b = g.abc_popup_menu_item_layout;

    /* renamed from: c  reason: collision with root package name */
    public final Context f1936c;

    /* renamed from: d  reason: collision with root package name */
    public final k f1937d;

    /* renamed from: e  reason: collision with root package name */
    public final j f1938e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f1939f;

    /* renamed from: g  reason: collision with root package name */
    public final int f1940g;

    /* renamed from: h  reason: collision with root package name */
    public final int f1941h;

    /* renamed from: i  reason: collision with root package name */
    public final int f1942i;

    /* renamed from: j  reason: collision with root package name */
    public final P f1943j;

    /* renamed from: k  reason: collision with root package name */
    public final ViewTreeObserver.OnGlobalLayoutListener f1944k = new x(this);

    /* renamed from: l  reason: collision with root package name */
    public final View.OnAttachStateChangeListener f1945l = new y(this);
    public PopupWindow.OnDismissListener m;
    public View n;
    public View o;
    public t.a p;
    public ViewTreeObserver q;
    public boolean r;
    public boolean s;
    public int t;
    public int u = 0;
    public boolean v;

    public z(Context context, k kVar, View view, int i2, int i3, boolean z) {
        this.f1936c = context;
        this.f1937d = kVar;
        this.f1939f = z;
        this.f1938e = new j(kVar, LayoutInflater.from(context), this.f1939f, f1935b);
        this.f1941h = i2;
        this.f1942i = i3;
        Resources resources = context.getResources();
        this.f1940g = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(d.abc_config_prefDialogWidth));
        this.n = view;
        this.f1943j = new P(this.f1936c, null, this.f1941h, this.f1942i);
        kVar.a((t) this, context);
    }

    public void a(int i2) {
        this.u = i2;
    }

    public void a(Parcelable parcelable) {
    }

    public void a(k kVar) {
    }

    public boolean a() {
        return false;
    }

    public Parcelable b() {
        return null;
    }

    public void b(boolean z) {
        this.f1938e.a(z);
    }

    public boolean c() {
        return !this.r && this.f1943j.c();
    }

    public void d() {
        if (!h()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    public void dismiss() {
        if (c()) {
            this.f1943j.dismiss();
        }
    }

    public ListView f() {
        return this.f1943j.f();
    }

    public final boolean h() {
        if (c()) {
            return true;
        }
        if (!this.r) {
            View view = this.n;
            if (view != null) {
                this.o = view;
                this.f1943j.a((PopupWindow.OnDismissListener) this);
                this.f1943j.a((AdapterView.OnItemClickListener) this);
                this.f1943j.a(true);
                View view2 = this.o;
                boolean z = this.q == null;
                this.q = view2.getViewTreeObserver();
                if (z) {
                    this.q.addOnGlobalLayoutListener(this.f1944k);
                }
                view2.addOnAttachStateChangeListener(this.f1945l);
                this.f1943j.a(view2);
                this.f1943j.f(this.u);
                if (!this.s) {
                    this.t = q.a(this.f1938e, null, this.f1936c, this.f1940g);
                    this.s = true;
                }
                this.f1943j.e(this.t);
                this.f1943j.g(2);
                this.f1943j.a(g());
                this.f1943j.d();
                ListView f2 = this.f1943j.f();
                f2.setOnKeyListener(this);
                if (this.v && this.f1937d.h() != null) {
                    FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f1936c).inflate(g.abc_popup_menu_header_item_layout, f2, false);
                    TextView textView = (TextView) frameLayout.findViewById(16908310);
                    if (textView != null) {
                        textView.setText(this.f1937d.h());
                    }
                    frameLayout.setEnabled(false);
                    f2.addHeaderView(frameLayout, null, false);
                }
                this.f1943j.a((ListAdapter) this.f1938e);
                this.f1943j.d();
                return true;
            }
        }
        return false;
    }

    public void onDismiss() {
        this.r = true;
        this.f1937d.close();
        ViewTreeObserver viewTreeObserver = this.q;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.q = this.o.getViewTreeObserver();
            }
            this.q.removeGlobalOnLayoutListener(this.f1944k);
            this.q = null;
        }
        this.o.removeOnAttachStateChangeListener(this.f1945l);
        PopupWindow.OnDismissListener onDismissListener = this.m;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i2 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    public void a(boolean z) {
        this.s = false;
        j jVar = this.f1938e;
        if (jVar != null) {
            jVar.notifyDataSetChanged();
        }
    }

    public void b(int i2) {
        this.f1943j.a(i2);
    }

    public void c(int i2) {
        this.f1943j.b(i2);
    }

    public void c(boolean z) {
        this.v = z;
    }

    public void a(t.a aVar) {
        this.p = aVar;
    }

    public boolean a(A a2) {
        if (a2.hasVisibleItems()) {
            s sVar = new s(this.f1936c, a2, this.o, this.f1939f, this.f1941h, this.f1942i);
            sVar.a(this.p);
            sVar.a(q.b((k) a2));
            sVar.a(this.m);
            this.m = null;
            this.f1937d.a(false);
            int a3 = this.f1943j.a();
            int g2 = this.f1943j.g();
            if ((Gravity.getAbsoluteGravity(this.u, b.i.k.z.m(this.n)) & 7) == 5) {
                a3 += this.n.getWidth();
            }
            if (sVar.a(a3, g2)) {
                t.a aVar = this.p;
                if (aVar != null) {
                    aVar.a(a2);
                }
                return true;
            }
        }
        return false;
    }

    public void a(k kVar, boolean z) {
        if (kVar == this.f1937d) {
            dismiss();
            t.a aVar = this.p;
            if (aVar != null) {
                aVar.a(kVar, z);
            }
        }
    }

    public void a(View view) {
        this.n = view;
    }

    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.m = onDismissListener;
    }
}
