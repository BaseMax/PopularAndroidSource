package c.c.a.n.c.d.a;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b.i.b.a;
import b.i.k.E;
import b.i.l.e;
import c.c.a.c.h.d;
import c.c.a.d.b.i;
import com.farsitel.bazaar.R;
import com.google.android.material.appbar.AppBarLayout;
import h.f.b.j;
import java.lang.ref.WeakReference;
import kotlin.TypeCastException;

/* compiled from: DetailToolbarScrollListener.kt */
public final class f extends RecyclerView.n {

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference<TextView> f6360a;

    /* renamed from: b  reason: collision with root package name */
    public String f6361b = "";

    /* renamed from: c  reason: collision with root package name */
    public boolean f6362c;

    /* renamed from: d  reason: collision with root package name */
    public int f6363d;

    /* renamed from: e  reason: collision with root package name */
    public final int f6364e;

    /* renamed from: f  reason: collision with root package name */
    public final int f6365f;

    /* renamed from: g  reason: collision with root package name */
    public final ArgbEvaluator f6366g;

    /* renamed from: h  reason: collision with root package name */
    public final int f6367h;

    /* renamed from: i  reason: collision with root package name */
    public final int f6368i;

    /* renamed from: j  reason: collision with root package name */
    public final int f6369j;

    /* renamed from: k  reason: collision with root package name */
    public final int f6370k;

    /* renamed from: l  reason: collision with root package name */
    public final int f6371l;
    public final AlphaAnimation m;
    public final AlphaAnimation n;
    public boolean o;
    public boolean p;
    public final Toolbar q;
    public final AppBarLayout r;

    public f(Context context, Toolbar toolbar, AppBarLayout appBarLayout, TextView textView, int i2) {
        j.b(context, "context");
        j.b(appBarLayout, "appBarLayout");
        j.b(textView, "toolbarTitleTextView");
        this.q = toolbar;
        this.r = appBarLayout;
        this.f6360a = new WeakReference<>(textView);
        this.f6362c = i2 != 0;
        this.f6363d = i2;
        this.f6364e = d.b();
        this.f6365f = this.f6364e / 3;
        this.f6366g = new ArgbEvaluator();
        this.f6367h = i.a(4);
        this.f6368i = a.a(context, 17170445);
        this.f6369j = a.a(context, (int) R.color.white);
        this.f6370k = a.a(context, (int) R.color.white);
        this.f6371l = a.a(context, (int) R.color.c_icon_toolbar);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(700);
        alphaAnimation.setAnimationListener(new d(this));
        this.m = alphaAnimation;
        AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation2.setDuration(300);
        alphaAnimation2.setAnimationListener(new e(this));
        this.n = alphaAnimation2;
        Toolbar toolbar2 = this.q;
        if (toolbar2 != null) {
            toolbar2.setBackgroundColor(this.f6368i);
            a(this.q, this.f6370k);
        }
    }

    public final void a(String str) {
        j.b(str, "value");
        this.f6361b = str;
        TextView textView = (TextView) this.f6360a.get();
        if (textView != null) {
            textView.setText(str);
        }
    }

    public final int a() {
        return this.f6363d;
    }

    public void a(RecyclerView recyclerView, int i2, int i3) {
        j.b(recyclerView, "recyclerView");
        super.a(recyclerView, i2, i3);
        this.f6363d += i3;
        Toolbar toolbar = this.q;
        if (toolbar == null) {
            throw new IllegalStateException("Toolbar is null");
        } else if (this.f6363d > this.f6365f) {
            if (!this.o) {
                this.o = true;
                this.p = true;
                a(toolbar, this.f6369j, (float) this.f6367h);
                a(this.q, this.f6371l);
                a(this.m);
            }
        } else {
            RecyclerView.i layoutManager = recyclerView.getLayoutManager();
            if (layoutManager != null) {
                if (((LinearLayoutManager) layoutManager).G() == 0) {
                    this.f6363d = 0;
                }
                this.o = false;
                float max = ((float) Math.max(0, this.f6363d)) / ((float) this.f6365f);
                Object evaluate = this.f6366g.evaluate(max, Integer.valueOf(this.f6368i), Integer.valueOf(this.f6369j));
                if (evaluate != null) {
                    int intValue = ((Integer) evaluate).intValue();
                    Object evaluate2 = this.f6366g.evaluate(max, Integer.valueOf(this.f6370k), Integer.valueOf(this.f6371l));
                    if (evaluate2 != null) {
                        int intValue2 = ((Integer) evaluate2).intValue();
                        a(this.q, intValue, ((float) this.f6367h) * max);
                        a(this.q, intValue2);
                        if (this.p) {
                            a(this.n);
                            this.p = false;
                        }
                        return;
                    }
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
            }
            throw new TypeCastException("null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        }
    }

    public final void a(AlphaAnimation alphaAnimation) {
        TextView textView = (TextView) this.f6360a.get();
        if (textView != null) {
            textView.clearAnimation();
        }
        if (this.f6362c) {
            if (j.a((Object) alphaAnimation, (Object) this.m)) {
                TextView textView2 = (TextView) this.f6360a.get();
                if (textView2 != null) {
                    textView2.setAlpha(1.0f);
                }
            } else if (j.a((Object) alphaAnimation, (Object) this.n)) {
                TextView textView3 = (TextView) this.f6360a.get();
                if (textView3 != null) {
                    textView3.setAlpha(0.0f);
                }
            }
            this.f6362c = false;
            return;
        }
        TextView textView4 = (TextView) this.f6360a.get();
        if (textView4 != null) {
            textView4.startAnimation(alphaAnimation);
        }
    }

    public final void a(Toolbar toolbar, int i2, float f2) {
        toolbar.setBackgroundColor(i2);
        if (d.a(21)) {
            this.r.setElevation(f2);
        }
    }

    public final void a(ViewGroup viewGroup, int i2) {
        for (View next : E.a(viewGroup)) {
            if (next instanceof ViewGroup) {
                a((ViewGroup) next, i2);
            } else if (next instanceof AppCompatImageView) {
                e.a((ImageView) next, ColorStateList.valueOf(i2));
            }
        }
    }

    public final void a(int i2) {
        this.f6363d = i2;
    }
}
