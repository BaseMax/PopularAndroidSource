package b.b.g;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.ActionMenuView;
import b.b.a;
import b.b.j;
import b.i.k.I;
import b.i.k.J;
import b.i.k.z;

/* renamed from: b.b.g.a  reason: case insensitive filesystem */
/* compiled from: AbsActionBarView */
public abstract class C0205a extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    public final C0024a f2142a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f2143b;

    /* renamed from: c  reason: collision with root package name */
    public ActionMenuView f2144c;

    /* renamed from: d  reason: collision with root package name */
    public ActionMenuPresenter f2145d;

    /* renamed from: e  reason: collision with root package name */
    public int f2146e;

    /* renamed from: f  reason: collision with root package name */
    public I f2147f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f2148g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f2149h;

    /* renamed from: b.b.g.a$a  reason: collision with other inner class name */
    /* compiled from: AbsActionBarView */
    protected class C0024a implements J {

        /* renamed from: a  reason: collision with root package name */
        public boolean f2150a = false;

        /* renamed from: b  reason: collision with root package name */
        public int f2151b;

        public C0024a() {
        }

        public C0024a a(I i2, int i3) {
            C0205a.this.f2147f = i2;
            this.f2151b = i3;
            return this;
        }

        public void b(View view) {
            if (!this.f2150a) {
                C0205a aVar = C0205a.this;
                aVar.f2147f = null;
                C0205a.super.setVisibility(this.f2151b);
            }
        }

        public void c(View view) {
            C0205a.super.setVisibility(0);
            this.f2150a = false;
        }

        public void a(View view) {
            this.f2150a = true;
        }
    }

    public C0205a(Context context) {
        this(context, null);
    }

    public static int a(int i2, int i3, boolean z) {
        return z ? i2 - i3 : i2 + i3;
    }

    public int getAnimatedVisibility() {
        if (this.f2147f != null) {
            return this.f2142a.f2151b;
        }
        return getVisibility();
    }

    public int getContentHeight() {
        return this.f2146e;
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, j.ActionBar, a.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(j.ActionBar_height, 0));
        obtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.f2145d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.a(configuration);
        }
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f2149h = false;
        }
        if (!this.f2149h) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f2149h = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f2149h = false;
        }
        return true;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f2148g = false;
        }
        if (!this.f2148g) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f2148g = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f2148g = false;
        }
        return true;
    }

    public abstract void setContentHeight(int i2);

    public void setVisibility(int i2) {
        if (i2 != getVisibility()) {
            I i3 = this.f2147f;
            if (i3 != null) {
                i3.a();
            }
            super.setVisibility(i2);
        }
    }

    public C0205a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public I a(int i2, long j2) {
        I i3 = this.f2147f;
        if (i3 != null) {
            i3.a();
        }
        if (i2 == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            I a2 = z.a(this);
            a2.a(1.0f);
            a2.a(j2);
            C0024a aVar = this.f2142a;
            aVar.a(a2, i2);
            a2.a((J) aVar);
            return a2;
        }
        I a3 = z.a(this);
        a3.a(0.0f);
        a3.a(j2);
        C0024a aVar2 = this.f2142a;
        aVar2.a(a3, i2);
        a3.a((J) aVar2);
        return a3;
    }

    public C0205a(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f2142a = new C0024a();
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(a.actionBarPopupTheme, typedValue, true)) {
            int i3 = typedValue.resourceId;
            if (i3 != 0) {
                this.f2143b = new ContextThemeWrapper(context, i3);
                return;
            }
        }
        this.f2143b = context;
    }

    public int a(View view, int i2, int i3, int i4) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE), i3);
        return Math.max(0, (i2 - view.getMeasuredWidth()) - i4);
    }

    public int a(View view, int i2, int i3, int i4, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i5 = i3 + ((i4 - measuredHeight) / 2);
        if (z) {
            view.layout(i2 - measuredWidth, i5, i2, measuredHeight + i5);
        } else {
            view.layout(i2, i5, i2 + measuredWidth, measuredHeight + i5);
        }
        return z ? -measuredWidth : measuredWidth;
    }
}
