package b.b.g;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import b.b.a.C0190a;

/* compiled from: ScrollingTabContainerView */
public class V extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* renamed from: a  reason: collision with root package name */
    public static final Interpolator f2120a = new DecelerateInterpolator();

    /* renamed from: b  reason: collision with root package name */
    public Runnable f2121b;

    /* renamed from: c  reason: collision with root package name */
    public b f2122c;

    /* renamed from: d  reason: collision with root package name */
    public LinearLayoutCompat f2123d;

    /* renamed from: e  reason: collision with root package name */
    public Spinner f2124e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f2125f;

    /* renamed from: g  reason: collision with root package name */
    public int f2126g;

    /* renamed from: h  reason: collision with root package name */
    public int f2127h;

    /* renamed from: i  reason: collision with root package name */
    public int f2128i;

    /* renamed from: j  reason: collision with root package name */
    public int f2129j;

    /* compiled from: ScrollingTabContainerView */
    private class a extends BaseAdapter {
        public a() {
        }

        public int getCount() {
            return V.this.f2123d.getChildCount();
        }

        public Object getItem(int i2) {
            return ((c) V.this.f2123d.getChildAt(i2)).a();
        }

        public long getItemId(int i2) {
            return (long) i2;
        }

        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                return V.this.a((C0190a.c) getItem(i2), true);
            }
            ((c) view).a((C0190a.c) getItem(i2));
            return view;
        }
    }

    /* compiled from: ScrollingTabContainerView */
    private class b implements View.OnClickListener {
        public b() {
        }

        public void onClick(View view) {
            ((c) view).a().e();
            int childCount = V.this.f2123d.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = V.this.f2123d.getChildAt(i2);
                childAt.setSelected(childAt == view);
            }
        }
    }

    /* compiled from: ScrollingTabContainerView */
    private class c extends LinearLayout {

        /* renamed from: a  reason: collision with root package name */
        public final int[] f2132a = {16842964};

        /* renamed from: b  reason: collision with root package name */
        public C0190a.c f2133b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f2134c;

        /* renamed from: d  reason: collision with root package name */
        public ImageView f2135d;

        /* renamed from: e  reason: collision with root package name */
        public View f2136e;

        public c(Context context, C0190a.c cVar, boolean z) {
            super(context, null, b.b.a.actionBarTabStyle);
            this.f2133b = cVar;
            pa a2 = pa.a(context, null, this.f2132a, b.b.a.actionBarTabStyle, 0);
            if (a2.g(0)) {
                setBackgroundDrawable(a2.b(0));
            }
            a2.a();
            if (z) {
                setGravity(8388627);
            }
            b();
        }

        public void a(C0190a.c cVar) {
            this.f2133b = cVar;
            b();
        }

        public void b() {
            C0190a.c cVar = this.f2133b;
            View b2 = cVar.b();
            CharSequence charSequence = null;
            if (b2 != null) {
                ViewParent parent = b2.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(b2);
                    }
                    addView(b2);
                }
                this.f2136e = b2;
                TextView textView = this.f2134c;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f2135d;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f2135d.setImageDrawable(null);
                    return;
                }
                return;
            }
            View view = this.f2136e;
            if (view != null) {
                removeView(view);
                this.f2136e = null;
            }
            Drawable c2 = cVar.c();
            CharSequence d2 = cVar.d();
            if (c2 != null) {
                if (this.f2135d == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.f2135d = appCompatImageView;
                }
                this.f2135d.setImageDrawable(c2);
                this.f2135d.setVisibility(0);
            } else {
                ImageView imageView2 = this.f2135d;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f2135d.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(d2);
            if (z) {
                if (this.f2134c == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, b.b.a.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.f2134c = appCompatTextView;
                }
                this.f2134c.setText(d2);
                this.f2134c.setVisibility(0);
            } else {
                TextView textView2 = this.f2134c;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f2134c.setText(null);
                }
            }
            ImageView imageView3 = this.f2135d;
            if (imageView3 != null) {
                imageView3.setContentDescription(cVar.a());
            }
            if (!z) {
                charSequence = cVar.a();
            }
            xa.a(this, charSequence);
        }

        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        public void onMeasure(int i2, int i3) {
            super.onMeasure(i2, i3);
            if (V.this.f2126g > 0) {
                int measuredWidth = getMeasuredWidth();
                int i4 = V.this.f2126g;
                if (measuredWidth > i4) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), i3);
                }
            }
        }

        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }

        public C0190a.c a() {
            return this.f2133b;
        }
    }

    public final Spinner a() {
        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, b.b.a.actionDropDownStyle);
        appCompatSpinner.setLayoutParams(new LinearLayoutCompat.a(-2, -1));
        appCompatSpinner.setOnItemSelectedListener(this);
        return appCompatSpinner;
    }

    public final boolean b() {
        Spinner spinner = this.f2124e;
        return spinner != null && spinner.getParent() == this;
    }

    public final void c() {
        if (!b()) {
            if (this.f2124e == null) {
                this.f2124e = a();
            }
            removeView(this.f2123d);
            addView(this.f2124e, new ViewGroup.LayoutParams(-2, -1));
            if (this.f2124e.getAdapter() == null) {
                this.f2124e.setAdapter(new a());
            }
            Runnable runnable = this.f2121b;
            if (runnable != null) {
                removeCallbacks(runnable);
                this.f2121b = null;
            }
            this.f2124e.setSelection(this.f2129j);
        }
    }

    public final boolean d() {
        if (!b()) {
            return false;
        }
        removeView(this.f2124e);
        addView(this.f2123d, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f2124e.getSelectedItemPosition());
        return false;
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f2121b;
        if (runnable != null) {
            post(runnable);
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        b.b.f.a a2 = b.b.f.a.a(getContext());
        setContentHeight(a2.e());
        this.f2127h = a2.d();
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f2121b;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j2) {
        ((c) view).a().e();
    }

    public void onMeasure(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        boolean z = true;
        boolean z2 = mode == 1073741824;
        setFillViewport(z2);
        int childCount = this.f2123d.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f2126g = -1;
        } else {
            if (childCount > 2) {
                this.f2126g = (int) (((float) View.MeasureSpec.getSize(i2)) * 0.4f);
            } else {
                this.f2126g = View.MeasureSpec.getSize(i2) / 2;
            }
            this.f2126g = Math.min(this.f2126g, this.f2127h);
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f2128i, 1073741824);
        if (z2 || !this.f2125f) {
            z = false;
        }
        if (z) {
            this.f2123d.measure(0, makeMeasureSpec);
            if (this.f2123d.getMeasuredWidth() > View.MeasureSpec.getSize(i2)) {
                c();
            } else {
                d();
            }
        } else {
            d();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i2, makeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (z2 && measuredWidth != measuredWidth2) {
            setTabSelected(this.f2129j);
        }
    }

    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z) {
        this.f2125f = z;
    }

    public void setContentHeight(int i2) {
        this.f2128i = i2;
        requestLayout();
    }

    public void setTabSelected(int i2) {
        this.f2129j = i2;
        int childCount = this.f2123d.getChildCount();
        int i3 = 0;
        while (i3 < childCount) {
            View childAt = this.f2123d.getChildAt(i3);
            boolean z = i3 == i2;
            childAt.setSelected(z);
            if (z) {
                a(i2);
            }
            i3++;
        }
        Spinner spinner = this.f2124e;
        if (spinner != null && i2 >= 0) {
            spinner.setSelection(i2);
        }
    }

    public void a(int i2) {
        View childAt = this.f2123d.getChildAt(i2);
        Runnable runnable = this.f2121b;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        this.f2121b = new U(this, childAt);
        post(this.f2121b);
    }

    public c a(C0190a.c cVar, boolean z) {
        c cVar2 = new c(getContext(), cVar, z);
        if (z) {
            cVar2.setBackgroundDrawable(null);
            cVar2.setLayoutParams(new AbsListView.LayoutParams(-1, this.f2128i));
        } else {
            cVar2.setFocusable(true);
            if (this.f2122c == null) {
                this.f2122c = new b();
            }
            cVar2.setOnClickListener(this.f2122c);
        }
        return cVar2;
    }
}
