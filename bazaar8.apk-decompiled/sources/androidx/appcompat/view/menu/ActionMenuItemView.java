package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import b.b.f.a.k;
import b.b.f.a.o;
import b.b.f.a.u;
import b.b.f.a.w;
import b.b.g.K;
import b.b.g.xa;
import b.b.j;

public class ActionMenuItemView extends AppCompatTextView implements u.a, View.OnClickListener, ActionMenuView.a {

    /* renamed from: e  reason: collision with root package name */
    public o f295e;

    /* renamed from: f  reason: collision with root package name */
    public CharSequence f296f;

    /* renamed from: g  reason: collision with root package name */
    public Drawable f297g;

    /* renamed from: h  reason: collision with root package name */
    public k.b f298h;

    /* renamed from: i  reason: collision with root package name */
    public K f299i;

    /* renamed from: j  reason: collision with root package name */
    public b f300j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f301k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f302l;
    public int m;
    public int n;
    public int o;

    private class a extends K {
        public a() {
            super(ActionMenuItemView.this);
        }

        public w b() {
            b bVar = ActionMenuItemView.this.f300j;
            if (bVar != null) {
                return bVar.a();
            }
            return null;
        }

        public boolean c() {
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            k.b bVar = actionMenuItemView.f298h;
            if (bVar == null || !bVar.a(actionMenuItemView.f295e)) {
                return false;
            }
            w b2 = b();
            if (b2 == null || !b2.c()) {
                return false;
            }
            return true;
        }
    }

    public static abstract class b {
        public abstract w a();
    }

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    public void a(o oVar, int i2) {
        this.f295e = oVar;
        setIcon(oVar.getIcon());
        setTitle(oVar.a((u.a) this));
        setId(oVar.getItemId());
        setVisibility(oVar.isVisible() ? 0 : 8);
        setEnabled(oVar.isEnabled());
        if (oVar.hasSubMenu() && this.f299i == null) {
            this.f299i = new a();
        }
    }

    public boolean a() {
        return true;
    }

    public boolean b() {
        return e();
    }

    public boolean c() {
        return e() && this.f295e.getIcon() == null;
    }

    public boolean e() {
        return !TextUtils.isEmpty(getText());
    }

    public final boolean f() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        return i2 >= 480 || (i2 >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    public final void g() {
        CharSequence charSequence;
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.f296f);
        if (this.f297g != null && (!this.f295e.n() || (!this.f301k && !this.f302l))) {
            z = false;
        }
        boolean z3 = z2 & z;
        CharSequence charSequence2 = null;
        setText(z3 ? this.f296f : null);
        CharSequence contentDescription = this.f295e.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            if (z3) {
                charSequence = null;
            } else {
                charSequence = this.f295e.getTitle();
            }
            setContentDescription(charSequence);
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.f295e.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            if (!z3) {
                charSequence2 = this.f295e.getTitle();
            }
            xa.a(this, charSequence2);
            return;
        }
        xa.a(this, tooltipText);
    }

    public o getItemData() {
        return this.f295e;
    }

    public void onClick(View view) {
        k.b bVar = this.f298h;
        if (bVar != null) {
            bVar.a(this.f295e);
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f301k = f();
        g();
    }

    public void onMeasure(int i2, int i3) {
        boolean e2 = e();
        if (e2) {
            int i4 = this.n;
            if (i4 >= 0) {
                super.setPadding(i4, getPaddingTop(), getPaddingRight(), getPaddingBottom());
            }
        }
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int measuredWidth = getMeasuredWidth();
        int min = mode == Integer.MIN_VALUE ? Math.min(size, this.m) : this.m;
        if (mode != 1073741824 && this.m > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i3);
        }
        if (!e2 && this.f297g != null) {
            super.setPadding((getMeasuredWidth() - this.f297g.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f295e.hasSubMenu()) {
            K k2 = this.f299i;
            if (k2 != null && k2.onTouch(this, motionEvent)) {
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.f302l != z) {
            this.f302l = z;
            o oVar = this.f295e;
            if (oVar != null) {
                oVar.b();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f297g = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i2 = this.o;
            if (intrinsicWidth > i2) {
                intrinsicHeight = (int) (((float) intrinsicHeight) * (((float) i2) / ((float) intrinsicWidth)));
                intrinsicWidth = i2;
            }
            int i3 = this.o;
            if (intrinsicHeight > i3) {
                intrinsicWidth = (int) (((float) intrinsicWidth) * (((float) i3) / ((float) intrinsicHeight)));
                intrinsicHeight = i3;
            }
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        }
        setCompoundDrawables(drawable, null, null, null);
        g();
    }

    public void setItemInvoker(k.b bVar) {
        this.f298h = bVar;
    }

    public void setPadding(int i2, int i3, int i4, int i5) {
        this.n = i2;
        super.setPadding(i2, i3, i4, i5);
    }

    public void setPopupCallback(b bVar) {
        this.f300j = bVar;
    }

    public void setTitle(CharSequence charSequence) {
        this.f296f = charSequence;
        g();
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Resources resources = context.getResources();
        this.f301k = f();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.ActionMenuItemView, i2, 0);
        this.m = obtainStyledAttributes.getDimensionPixelSize(j.ActionMenuItemView_android_minWidth, 0);
        obtainStyledAttributes.recycle();
        this.o = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.n = -1;
        setSaveEnabled(false);
    }
}
