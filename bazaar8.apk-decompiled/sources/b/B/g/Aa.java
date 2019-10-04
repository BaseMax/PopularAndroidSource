package b.b.g;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import b.i.k.A;
import b.i.k.z;

/* compiled from: TooltipCompatHandler */
public class Aa implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public static Aa f1997a;

    /* renamed from: b  reason: collision with root package name */
    public static Aa f1998b;

    /* renamed from: c  reason: collision with root package name */
    public final View f1999c;

    /* renamed from: d  reason: collision with root package name */
    public final CharSequence f2000d;

    /* renamed from: e  reason: collision with root package name */
    public final int f2001e;

    /* renamed from: f  reason: collision with root package name */
    public final Runnable f2002f = new ya(this);

    /* renamed from: g  reason: collision with root package name */
    public final Runnable f2003g = new za(this);

    /* renamed from: h  reason: collision with root package name */
    public int f2004h;

    /* renamed from: i  reason: collision with root package name */
    public int f2005i;

    /* renamed from: j  reason: collision with root package name */
    public Ba f2006j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f2007k;

    public Aa(View view, CharSequence charSequence) {
        this.f1999c = view;
        this.f2000d = charSequence;
        this.f2001e = A.a(ViewConfiguration.get(this.f1999c.getContext()));
        b();
        this.f1999c.setOnLongClickListener(this);
        this.f1999c.setOnHoverListener(this);
    }

    public static void a(View view, CharSequence charSequence) {
        Aa aa = f1997a;
        if (aa != null && aa.f1999c == view) {
            a((Aa) null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            Aa aa2 = f1998b;
            if (aa2 != null && aa2.f1999c == view) {
                aa2.c();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new Aa(view, charSequence);
    }

    public final void b() {
        this.f2004h = Integer.MAX_VALUE;
        this.f2005i = Integer.MAX_VALUE;
    }

    public void c() {
        if (f1998b == this) {
            f1998b = null;
            Ba ba = this.f2006j;
            if (ba != null) {
                ba.a();
                this.f2006j = null;
                b();
                this.f1999c.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f1997a == this) {
            a((Aa) null);
        }
        this.f1999c.removeCallbacks(this.f2003g);
    }

    public final void d() {
        this.f1999c.postDelayed(this.f2002f, (long) ViewConfiguration.getLongPressTimeout());
    }

    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f2006j != null && this.f2007k) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f1999c.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                b();
                c();
            }
        } else if (this.f1999c.isEnabled() && this.f2006j == null && a(motionEvent)) {
            a(this);
        }
        return false;
    }

    public boolean onLongClick(View view) {
        this.f2004h = view.getWidth() / 2;
        this.f2005i = view.getHeight() / 2;
        a(true);
        return true;
    }

    public void onViewAttachedToWindow(View view) {
    }

    public void onViewDetachedFromWindow(View view) {
        c();
    }

    public void a(boolean z) {
        long j2;
        int i2;
        long j3;
        if (z.A(this.f1999c)) {
            a((Aa) null);
            Aa aa = f1998b;
            if (aa != null) {
                aa.c();
            }
            f1998b = this;
            this.f2007k = z;
            this.f2006j = new Ba(this.f1999c.getContext());
            this.f2006j.a(this.f1999c, this.f2004h, this.f2005i, this.f2007k, this.f2000d);
            this.f1999c.addOnAttachStateChangeListener(this);
            if (this.f2007k) {
                j2 = 2500;
            } else {
                if ((z.t(this.f1999c) & 1) == 1) {
                    j3 = 3000;
                    i2 = ViewConfiguration.getLongPressTimeout();
                } else {
                    j3 = 15000;
                    i2 = ViewConfiguration.getLongPressTimeout();
                }
                j2 = j3 - ((long) i2);
            }
            this.f1999c.removeCallbacks(this.f2003g);
            this.f1999c.postDelayed(this.f2003g, j2);
        }
    }

    public static void a(Aa aa) {
        Aa aa2 = f1997a;
        if (aa2 != null) {
            aa2.a();
        }
        f1997a = aa;
        Aa aa3 = f1997a;
        if (aa3 != null) {
            aa3.d();
        }
    }

    public final void a() {
        this.f1999c.removeCallbacks(this.f2002f);
    }

    public final boolean a(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (Math.abs(x - this.f2004h) <= this.f2001e && Math.abs(y - this.f2005i) <= this.f2001e) {
            return false;
        }
        this.f2004h = x;
        this.f2005i = y;
        return true;
    }
}
