package b.b.a;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import b.b.a.C0190a;
import b.b.f;
import b.b.f.a.k;
import b.b.f.b;
import b.b.f.g;
import b.b.f.i;
import b.b.g.G;
import b.b.g.V;
import b.b.j;
import b.i.k.I;
import b.i.k.J;
import b.i.k.L;
import b.i.k.z;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* compiled from: WindowDecorActionBar */
public class M extends C0190a implements ActionBarOverlayLayout.a {

    /* renamed from: a  reason: collision with root package name */
    public static final Interpolator f1713a = new AccelerateInterpolator();

    /* renamed from: b  reason: collision with root package name */
    public static final Interpolator f1714b = new DecelerateInterpolator();
    public boolean A = true;
    public i B;
    public boolean C;
    public boolean D;
    public final J E = new J(this);
    public final J F = new K(this);
    public final L G = new L(this);

    /* renamed from: c  reason: collision with root package name */
    public Context f1715c;

    /* renamed from: d  reason: collision with root package name */
    public Context f1716d;

    /* renamed from: e  reason: collision with root package name */
    public Activity f1717e;

    /* renamed from: f  reason: collision with root package name */
    public Dialog f1718f;

    /* renamed from: g  reason: collision with root package name */
    public ActionBarOverlayLayout f1719g;

    /* renamed from: h  reason: collision with root package name */
    public ActionBarContainer f1720h;

    /* renamed from: i  reason: collision with root package name */
    public G f1721i;

    /* renamed from: j  reason: collision with root package name */
    public ActionBarContextView f1722j;

    /* renamed from: k  reason: collision with root package name */
    public View f1723k;

    /* renamed from: l  reason: collision with root package name */
    public V f1724l;
    public ArrayList<Object> m = new ArrayList<>();
    public int n = -1;
    public boolean o;
    public a p;
    public b q;
    public b.a r;
    public boolean s;
    public ArrayList<C0190a.b> t = new ArrayList<>();
    public boolean u;
    public int v = 0;
    public boolean w = true;
    public boolean x;
    public boolean y;
    public boolean z;

    /* compiled from: WindowDecorActionBar */
    public class a extends b implements k.a {

        /* renamed from: c  reason: collision with root package name */
        public final Context f1725c;

        /* renamed from: d  reason: collision with root package name */
        public final k f1726d;

        /* renamed from: e  reason: collision with root package name */
        public b.a f1727e;

        /* renamed from: f  reason: collision with root package name */
        public WeakReference<View> f1728f;

        public a(Context context, b.a aVar) {
            this.f1725c = context;
            this.f1727e = aVar;
            k kVar = new k(context);
            kVar.d(1);
            this.f1726d = kVar;
            this.f1726d.a((k.a) this);
        }

        public void a() {
            M m = M.this;
            if (m.p == this) {
                if (!M.a(m.x, m.y, false)) {
                    M m2 = M.this;
                    m2.q = this;
                    m2.r = this.f1727e;
                } else {
                    this.f1727e.a(this);
                }
                this.f1727e = null;
                M.this.e(false);
                M.this.f1722j.a();
                M.this.f1721i.l().sendAccessibilityEvent(32);
                M m3 = M.this;
                m3.f1719g.setHideOnContentScrollEnabled(m3.D);
                M.this.p = null;
            }
        }

        public void b(CharSequence charSequence) {
            M.this.f1722j.setTitle(charSequence);
        }

        public Menu c() {
            return this.f1726d;
        }

        public MenuInflater d() {
            return new g(this.f1725c);
        }

        public CharSequence e() {
            return M.this.f1722j.getSubtitle();
        }

        public CharSequence g() {
            return M.this.f1722j.getTitle();
        }

        public void i() {
            if (M.this.p == this) {
                this.f1726d.s();
                try {
                    this.f1727e.b(this, this.f1726d);
                } finally {
                    this.f1726d.r();
                }
            }
        }

        public boolean j() {
            return M.this.f1722j.c();
        }

        public boolean k() {
            this.f1726d.s();
            try {
                return this.f1727e.a((b) this, (Menu) this.f1726d);
            } finally {
                this.f1726d.r();
            }
        }

        public void b(int i2) {
            b((CharSequence) M.this.f1715c.getResources().getString(i2));
        }

        public View b() {
            WeakReference<View> weakReference = this.f1728f;
            if (weakReference != null) {
                return (View) weakReference.get();
            }
            return null;
        }

        public void a(View view) {
            M.this.f1722j.setCustomView(view);
            this.f1728f = new WeakReference<>(view);
        }

        public void a(CharSequence charSequence) {
            M.this.f1722j.setSubtitle(charSequence);
        }

        public void a(int i2) {
            a((CharSequence) M.this.f1715c.getResources().getString(i2));
        }

        public void a(boolean z) {
            super.a(z);
            M.this.f1722j.setTitleOptional(z);
        }

        public boolean a(k kVar, MenuItem menuItem) {
            b.a aVar = this.f1727e;
            if (aVar != null) {
                return aVar.a((b) this, menuItem);
            }
            return false;
        }

        public void a(k kVar) {
            if (this.f1727e != null) {
                i();
                M.this.f1722j.e();
            }
        }
    }

    public M(Activity activity, boolean z2) {
        this.f1717e = activity;
        View decorView = activity.getWindow().getDecorView();
        b(decorView);
        if (!z2) {
            this.f1723k = decorView.findViewById(16908290);
        }
    }

    public static boolean a(boolean z2, boolean z3, boolean z4) {
        if (z4) {
            return true;
        }
        return !z2 && !z3;
    }

    public final G a(View view) {
        if (view instanceof G) {
            return (G) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        sb.append(view != null ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb.toString());
    }

    public void b() {
    }

    public final void b(View view) {
        this.f1719g = (ActionBarOverlayLayout) view.findViewById(f.decor_content_parent);
        ActionBarOverlayLayout actionBarOverlayLayout = this.f1719g;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f1721i = a(view.findViewById(f.action_bar));
        this.f1722j = (ActionBarContextView) view.findViewById(f.action_context_bar);
        this.f1720h = (ActionBarContainer) view.findViewById(f.action_bar_container);
        G g2 = this.f1721i;
        if (g2 == null || this.f1722j == null || this.f1720h == null) {
            throw new IllegalStateException(M.class.getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f1715c = g2.b();
        boolean z2 = (this.f1721i.m() & 4) != 0;
        if (z2) {
            this.o = true;
        }
        b.b.f.a a2 = b.b.f.a.a(this.f1715c);
        k(a2.a() || z2);
        i(a2.f());
        TypedArray obtainStyledAttributes = this.f1715c.obtainStyledAttributes(null, j.ActionBar, b.b.a.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(j.ActionBar_hideOnContentScroll, false)) {
            j(true);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(j.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            a((float) dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    public void c() {
        if (!this.y) {
            this.y = true;
            l(true);
        }
    }

    public void d(boolean z2) {
        this.C = z2;
        if (!z2) {
            i iVar = this.B;
            if (iVar != null) {
                iVar.a();
            }
        }
    }

    public void e(boolean z2) {
        I i2;
        I i3;
        if (z2) {
            p();
        } else {
            n();
        }
        if (o()) {
            if (z2) {
                i2 = this.f1721i.a(4, 100);
                i3 = this.f1722j.a(0, 200);
            } else {
                i3 = this.f1721i.a(0, 200);
                i2 = this.f1722j.a(8, 100);
            }
            i iVar = new i();
            iVar.a(i2, i3);
            iVar.c();
        } else if (z2) {
            this.f1721i.c(4);
            this.f1722j.setVisibility(0);
        } else {
            this.f1721i.c(0);
            this.f1722j.setVisibility(8);
        }
    }

    public void f(boolean z2) {
        i iVar = this.B;
        if (iVar != null) {
            iVar.a();
        }
        if (this.v != 0 || (!this.C && !z2)) {
            this.E.b(null);
            return;
        }
        this.f1720h.setAlpha(1.0f);
        this.f1720h.setTransitioning(true);
        i iVar2 = new i();
        float f2 = (float) (-this.f1720h.getHeight());
        if (z2) {
            int[] iArr = {0, 0};
            this.f1720h.getLocationInWindow(iArr);
            f2 -= (float) iArr[1];
        }
        I a2 = z.a(this.f1720h);
        a2.b(f2);
        a2.a(this.G);
        iVar2.a(a2);
        if (this.w) {
            View view = this.f1723k;
            if (view != null) {
                I a3 = z.a(view);
                a3.b(f2);
                iVar2.a(a3);
            }
        }
        iVar2.a(f1713a);
        iVar2.a(250);
        iVar2.a(this.E);
        this.B = iVar2;
        iVar2.c();
    }

    public int g() {
        return this.f1721i.m();
    }

    public void h(boolean z2) {
        a(z2 ? 4 : 0, 4);
    }

    public final void i(boolean z2) {
        this.u = z2;
        if (!this.u) {
            this.f1721i.a((V) null);
            this.f1720h.setTabContainer(this.f1724l);
        } else {
            this.f1720h.setTabContainer(null);
            this.f1721i.a(this.f1724l);
        }
        boolean z3 = true;
        boolean z4 = m() == 2;
        V v2 = this.f1724l;
        if (v2 != null) {
            if (z4) {
                v2.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f1719g;
                if (actionBarOverlayLayout != null) {
                    z.G(actionBarOverlayLayout);
                }
            } else {
                v2.setVisibility(8);
            }
        }
        this.f1721i.b(!this.u && z4);
        ActionBarOverlayLayout actionBarOverlayLayout2 = this.f1719g;
        if (this.u || !z4) {
            z3 = false;
        }
        actionBarOverlayLayout2.setHasNonEmbeddedTabs(z3);
    }

    public void j(boolean z2) {
        if (!z2 || this.f1719g.j()) {
            this.D = z2;
            this.f1719g.setHideOnContentScrollEnabled(z2);
            return;
        }
        throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
    }

    public void k(boolean z2) {
        this.f1721i.a(z2);
    }

    public void l() {
        b.a aVar = this.r;
        if (aVar != null) {
            aVar.a(this.q);
            this.q = null;
            this.r = null;
        }
    }

    public int m() {
        return this.f1721i.k();
    }

    public final void n() {
        if (this.z) {
            this.z = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f1719g;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            l(false);
        }
    }

    public final boolean o() {
        return z.B(this.f1720h);
    }

    public final void p() {
        if (!this.z) {
            this.z = true;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f1719g;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(true);
            }
            l(false);
        }
    }

    public void g(boolean z2) {
        i iVar = this.B;
        if (iVar != null) {
            iVar.a();
        }
        this.f1720h.setVisibility(0);
        if (this.v != 0 || (!this.C && !z2)) {
            this.f1720h.setAlpha(1.0f);
            this.f1720h.setTranslationY(0.0f);
            if (this.w) {
                View view = this.f1723k;
                if (view != null) {
                    view.setTranslationY(0.0f);
                }
            }
            this.F.b(null);
        } else {
            this.f1720h.setTranslationY(0.0f);
            float f2 = (float) (-this.f1720h.getHeight());
            if (z2) {
                int[] iArr = {0, 0};
                this.f1720h.getLocationInWindow(iArr);
                f2 -= (float) iArr[1];
            }
            this.f1720h.setTranslationY(f2);
            i iVar2 = new i();
            I a2 = z.a(this.f1720h);
            a2.b(0.0f);
            a2.a(this.G);
            iVar2.a(a2);
            if (this.w) {
                View view2 = this.f1723k;
                if (view2 != null) {
                    view2.setTranslationY(f2);
                    I a3 = z.a(this.f1723k);
                    a3.b(0.0f);
                    iVar2.a(a3);
                }
            }
            iVar2.a(f1714b);
            iVar2.a(250);
            iVar2.a(this.F);
            this.B = iVar2;
            iVar2.c();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f1719g;
        if (actionBarOverlayLayout != null) {
            z.G(actionBarOverlayLayout);
        }
    }

    public Context h() {
        if (this.f1716d == null) {
            TypedValue typedValue = new TypedValue();
            this.f1715c.getTheme().resolveAttribute(b.b.a.actionBarWidgetTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                this.f1716d = new ContextThemeWrapper(this.f1715c, i2);
            } else {
                this.f1716d = this.f1715c;
            }
        }
        return this.f1716d;
    }

    public void c(boolean z2) {
        if (!this.o) {
            h(z2);
        }
    }

    public void d() {
        i iVar = this.B;
        if (iVar != null) {
            iVar.a();
            this.B = null;
        }
    }

    public final void l(boolean z2) {
        if (a(this.x, this.y, this.z)) {
            if (!this.A) {
                this.A = true;
                g(z2);
            }
        } else if (this.A) {
            this.A = false;
            f(z2);
        }
    }

    public void a(float f2) {
        z.a((View) this.f1720h, f2);
    }

    public void a(Configuration configuration) {
        i(b.b.f.a.a(this.f1715c).f());
    }

    public void a(int i2) {
        this.v = i2;
    }

    public void a(CharSequence charSequence) {
        this.f1721i.setWindowTitle(charSequence);
    }

    public void a(int i2, int i3) {
        int m2 = this.f1721i.m();
        if ((i3 & 4) != 0) {
            this.o = true;
        }
        this.f1721i.a((i2 & i3) | ((i3 ^ -1) & m2));
    }

    public b a(b.a aVar) {
        a aVar2 = this.p;
        if (aVar2 != null) {
            aVar2.a();
        }
        this.f1719g.setHideOnContentScrollEnabled(false);
        this.f1722j.d();
        a aVar3 = new a(this.f1722j.getContext(), aVar);
        if (!aVar3.k()) {
            return null;
        }
        this.p = aVar3;
        aVar3.i();
        this.f1722j.a(aVar3);
        e(true);
        this.f1722j.sendAccessibilityEvent(32);
        return aVar3;
    }

    public M(Dialog dialog) {
        this.f1718f = dialog;
        b(dialog.getWindow().getDecorView());
    }

    public void b(boolean z2) {
        if (z2 != this.s) {
            this.s = z2;
            int size = this.t.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.t.get(i2).onMenuVisibilityChanged(z2);
            }
        }
    }

    public boolean f() {
        G g2 = this.f1721i;
        if (g2 == null || !g2.i()) {
            return false;
        }
        this.f1721i.collapseActionView();
        return true;
    }

    public void a(boolean z2) {
        this.w = z2;
    }

    public void a() {
        if (this.y) {
            this.y = false;
            l(true);
        }
    }

    public boolean a(int i2, KeyEvent keyEvent) {
        a aVar = this.p;
        if (aVar == null) {
            return false;
        }
        Menu c2 = aVar.c();
        if (c2 == null) {
            return false;
        }
        boolean z2 = true;
        if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
            z2 = false;
        }
        c2.setQwertyMode(z2);
        return c2.performShortcut(i2, keyEvent, 0);
    }
}
