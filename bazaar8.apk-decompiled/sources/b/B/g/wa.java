package b.b.g;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.Toolbar;
import b.b.b.a.a;
import b.b.e;
import b.b.f;
import b.b.f.a.k;
import b.b.f.a.t;
import b.b.h;
import b.b.j;
import b.i.k.I;
import b.i.k.J;
import b.i.k.z;

/* compiled from: ToolbarWidgetWrapper */
public class wa implements G {

    /* renamed from: a  reason: collision with root package name */
    public Toolbar f2250a;

    /* renamed from: b  reason: collision with root package name */
    public int f2251b;

    /* renamed from: c  reason: collision with root package name */
    public View f2252c;

    /* renamed from: d  reason: collision with root package name */
    public View f2253d;

    /* renamed from: e  reason: collision with root package name */
    public Drawable f2254e;

    /* renamed from: f  reason: collision with root package name */
    public Drawable f2255f;

    /* renamed from: g  reason: collision with root package name */
    public Drawable f2256g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f2257h;

    /* renamed from: i  reason: collision with root package name */
    public CharSequence f2258i;

    /* renamed from: j  reason: collision with root package name */
    public CharSequence f2259j;

    /* renamed from: k  reason: collision with root package name */
    public CharSequence f2260k;

    /* renamed from: l  reason: collision with root package name */
    public Window.Callback f2261l;
    public boolean m;
    public ActionMenuPresenter n;
    public int o;
    public int p;
    public Drawable q;

    public wa(Toolbar toolbar, boolean z) {
        this(toolbar, z, h.abc_action_bar_up_description, e.abc_ic_ab_back_material);
    }

    public void a(Drawable drawable) {
        this.f2255f = drawable;
        s();
    }

    public void a(boolean z) {
    }

    public Context b() {
        return this.f2250a.getContext();
    }

    public void c(CharSequence charSequence) {
        this.f2257h = true;
        d(charSequence);
    }

    public void collapseActionView() {
        this.f2250a.c();
    }

    public void d(int i2) {
        if (i2 != this.p) {
            this.p = i2;
            if (TextUtils.isEmpty(this.f2250a.getNavigationContentDescription())) {
                e(this.p);
            }
        }
    }

    public boolean e() {
        return this.f2250a.m();
    }

    public boolean f() {
        return this.f2250a.l();
    }

    public boolean g() {
        return this.f2250a.r();
    }

    public CharSequence getTitle() {
        return this.f2250a.getTitle();
    }

    public void h() {
        this.f2250a.d();
    }

    public boolean i() {
        return this.f2250a.k();
    }

    public Menu j() {
        return this.f2250a.getMenu();
    }

    public int k() {
        return this.o;
    }

    public ViewGroup l() {
        return this.f2250a;
    }

    public int m() {
        return this.f2251b;
    }

    public void n() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    public void o() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    public final int p() {
        if (this.f2250a.getNavigationIcon() == null) {
            return 11;
        }
        this.q = this.f2250a.getNavigationIcon();
        return 15;
    }

    public final void q() {
        if ((this.f2251b & 4) == 0) {
            return;
        }
        if (TextUtils.isEmpty(this.f2260k)) {
            this.f2250a.setNavigationContentDescription(this.p);
        } else {
            this.f2250a.setNavigationContentDescription(this.f2260k);
        }
    }

    public final void r() {
        if ((this.f2251b & 4) != 0) {
            Toolbar toolbar = this.f2250a;
            Drawable drawable = this.f2256g;
            if (drawable == null) {
                drawable = this.q;
            }
            toolbar.setNavigationIcon(drawable);
            return;
        }
        this.f2250a.setNavigationIcon((Drawable) null);
    }

    public final void s() {
        Drawable drawable;
        int i2 = this.f2251b;
        if ((i2 & 2) == 0) {
            drawable = null;
        } else if ((i2 & 1) != 0) {
            drawable = this.f2255f;
            if (drawable == null) {
                drawable = this.f2254e;
            }
        } else {
            drawable = this.f2254e;
        }
        this.f2250a.setLogo(drawable);
    }

    public void setIcon(int i2) {
        setIcon(i2 != 0 ? a.c(b(), i2) : null);
    }

    public void setWindowCallback(Window.Callback callback) {
        this.f2261l = callback;
    }

    public void setWindowTitle(CharSequence charSequence) {
        if (!this.f2257h) {
            d(charSequence);
        }
    }

    public wa(Toolbar toolbar, boolean z, int i2, int i3) {
        this.o = 0;
        this.p = 0;
        this.f2250a = toolbar;
        this.f2258i = toolbar.getTitle();
        this.f2259j = toolbar.getSubtitle();
        this.f2257h = this.f2258i != null;
        this.f2256g = toolbar.getNavigationIcon();
        pa a2 = pa.a(toolbar.getContext(), null, j.ActionBar, b.b.a.actionBarStyle, 0);
        this.q = a2.b(j.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence e2 = a2.e(j.ActionBar_title);
            if (!TextUtils.isEmpty(e2)) {
                c(e2);
            }
            CharSequence e3 = a2.e(j.ActionBar_subtitle);
            if (!TextUtils.isEmpty(e3)) {
                b(e3);
            }
            Drawable b2 = a2.b(j.ActionBar_logo);
            if (b2 != null) {
                a(b2);
            }
            Drawable b3 = a2.b(j.ActionBar_icon);
            if (b3 != null) {
                setIcon(b3);
            }
            if (this.f2256g == null) {
                Drawable drawable = this.q;
                if (drawable != null) {
                    b(drawable);
                }
            }
            a(a2.d(j.ActionBar_displayOptions, 0));
            int g2 = a2.g(j.ActionBar_customNavigationLayout, 0);
            if (g2 != 0) {
                a(LayoutInflater.from(this.f2250a.getContext()).inflate(g2, this.f2250a, false));
                a(this.f2251b | 16);
            }
            int f2 = a2.f(j.ActionBar_height, 0);
            if (f2 > 0) {
                ViewGroup.LayoutParams layoutParams = this.f2250a.getLayoutParams();
                layoutParams.height = f2;
                this.f2250a.setLayoutParams(layoutParams);
            }
            int b4 = a2.b(j.ActionBar_contentInsetStart, -1);
            int b5 = a2.b(j.ActionBar_contentInsetEnd, -1);
            if (b4 >= 0 || b5 >= 0) {
                this.f2250a.a(Math.max(b4, 0), Math.max(b5, 0));
            }
            int g3 = a2.g(j.ActionBar_titleTextStyle, 0);
            if (g3 != 0) {
                Toolbar toolbar2 = this.f2250a;
                toolbar2.b(toolbar2.getContext(), g3);
            }
            int g4 = a2.g(j.ActionBar_subtitleTextStyle, 0);
            if (g4 != 0) {
                Toolbar toolbar3 = this.f2250a;
                toolbar3.a(toolbar3.getContext(), g4);
            }
            int g5 = a2.g(j.ActionBar_popupTheme, 0);
            if (g5 != 0) {
                this.f2250a.setPopupTheme(g5);
            }
        } else {
            this.f2251b = p();
        }
        a2.a();
        d(i2);
        this.f2260k = this.f2250a.getNavigationContentDescription();
        this.f2250a.setNavigationOnClickListener(new ua(this));
    }

    public void b(CharSequence charSequence) {
        this.f2259j = charSequence;
        if ((this.f2251b & 8) != 0) {
            this.f2250a.setSubtitle(charSequence);
        }
    }

    public void e(int i2) {
        a((CharSequence) i2 == 0 ? null : b().getString(i2));
    }

    public void setIcon(Drawable drawable) {
        this.f2254e = drawable;
        s();
    }

    public boolean a() {
        return this.f2250a.n();
    }

    public void c() {
        this.m = true;
    }

    public void a(Menu menu, t.a aVar) {
        if (this.n == null) {
            this.n = new ActionMenuPresenter(this.f2250a.getContext());
            this.n.a(f.action_menu_presenter);
        }
        this.n.a(aVar);
        this.f2250a.a((k) menu, this.n);
    }

    public void c(int i2) {
        this.f2250a.setVisibility(i2);
    }

    public void b(int i2) {
        a(i2 != 0 ? a.c(b(), i2) : null);
    }

    public final void d(CharSequence charSequence) {
        this.f2258i = charSequence;
        if ((this.f2251b & 8) != 0) {
            this.f2250a.setTitle(charSequence);
        }
    }

    public void b(boolean z) {
        this.f2250a.setCollapsible(z);
    }

    public void b(Drawable drawable) {
        this.f2256g = drawable;
        r();
    }

    public boolean d() {
        return this.f2250a.b();
    }

    public void a(int i2) {
        int i3 = this.f2251b ^ i2;
        this.f2251b = i2;
        if (i3 != 0) {
            if ((i3 & 4) != 0) {
                if ((i2 & 4) != 0) {
                    q();
                }
                r();
            }
            if ((i3 & 3) != 0) {
                s();
            }
            if ((i3 & 8) != 0) {
                if ((i2 & 8) != 0) {
                    this.f2250a.setTitle(this.f2258i);
                    this.f2250a.setSubtitle(this.f2259j);
                } else {
                    this.f2250a.setTitle((CharSequence) null);
                    this.f2250a.setSubtitle((CharSequence) null);
                }
            }
            if ((i3 & 16) != 0) {
                View view = this.f2253d;
                if (view == null) {
                    return;
                }
                if ((i2 & 16) != 0) {
                    this.f2250a.addView(view);
                } else {
                    this.f2250a.removeView(view);
                }
            }
        }
    }

    public void a(V v) {
        View view = this.f2252c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f2250a;
            if (parent == toolbar) {
                toolbar.removeView(this.f2252c);
            }
        }
        this.f2252c = v;
        if (v != null && this.o == 2) {
            this.f2250a.addView(this.f2252c, 0);
            Toolbar.b bVar = (Toolbar.b) this.f2252c.getLayoutParams();
            bVar.width = -2;
            bVar.height = -2;
            bVar.f1730a = 8388691;
            v.setAllowCollapse(true);
        }
    }

    public void a(View view) {
        View view2 = this.f2253d;
        if (!(view2 == null || (this.f2251b & 16) == 0)) {
            this.f2250a.removeView(view2);
        }
        this.f2253d = view;
        if (view != null && (this.f2251b & 16) != 0) {
            this.f2250a.addView(this.f2253d);
        }
    }

    public I a(int i2, long j2) {
        I a2 = z.a(this.f2250a);
        a2.a(i2 == 0 ? 1.0f : 0.0f);
        a2.a(j2);
        a2.a((J) new va(this, i2));
        return a2;
    }

    public void a(CharSequence charSequence) {
        this.f2260k = charSequence;
        q();
    }

    public void a(t.a aVar, k.a aVar2) {
        this.f2250a.a(aVar, aVar2);
    }
}
