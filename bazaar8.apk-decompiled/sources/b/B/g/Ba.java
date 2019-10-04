package b.b.g;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import b.b.d;
import b.b.f;
import b.b.g;
import b.b.i;
import e.a.a.a.a.b.C1046a;

/* compiled from: TooltipPopup */
public class Ba {

    /* renamed from: a  reason: collision with root package name */
    public final Context f2010a;

    /* renamed from: b  reason: collision with root package name */
    public final View f2011b;

    /* renamed from: c  reason: collision with root package name */
    public final TextView f2012c;

    /* renamed from: d  reason: collision with root package name */
    public final WindowManager.LayoutParams f2013d = new WindowManager.LayoutParams();

    /* renamed from: e  reason: collision with root package name */
    public final Rect f2014e = new Rect();

    /* renamed from: f  reason: collision with root package name */
    public final int[] f2015f = new int[2];

    /* renamed from: g  reason: collision with root package name */
    public final int[] f2016g = new int[2];

    public Ba(Context context) {
        this.f2010a = context;
        this.f2011b = LayoutInflater.from(this.f2010a).inflate(g.abc_tooltip, null);
        this.f2012c = (TextView) this.f2011b.findViewById(f.message);
        this.f2013d.setTitle(Ba.class.getSimpleName());
        this.f2013d.packageName = this.f2010a.getPackageName();
        WindowManager.LayoutParams layoutParams = this.f2013d;
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = i.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    public void a(View view, int i2, int i3, boolean z, CharSequence charSequence) {
        if (b()) {
            a();
        }
        this.f2012c.setText(charSequence);
        a(view, i2, i3, z, this.f2013d);
        ((WindowManager) this.f2010a.getSystemService("window")).addView(this.f2011b, this.f2013d);
    }

    public boolean b() {
        return this.f2011b.getParent() != null;
    }

    public void a() {
        if (b()) {
            ((WindowManager) this.f2010a.getSystemService("window")).removeView(this.f2011b);
        }
    }

    public final void a(View view, int i2, int i3, boolean z, WindowManager.LayoutParams layoutParams) {
        int i4;
        int i5;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f2010a.getResources().getDimensionPixelOffset(d.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i2 = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f2010a.getResources().getDimensionPixelOffset(d.tooltip_precise_anchor_extra_offset);
            i5 = i3 + dimensionPixelOffset2;
            i4 = i3 - dimensionPixelOffset2;
        } else {
            i5 = view.getHeight();
            i4 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f2010a.getResources().getDimensionPixelOffset(z ? d.tooltip_y_offset_touch : d.tooltip_y_offset_non_touch);
        View a2 = a(view);
        if (a2 == null) {
            Log.e("TooltipPopup", "Cannot find app view");
            return;
        }
        a2.getWindowVisibleDisplayFrame(this.f2014e);
        Rect rect = this.f2014e;
        if (rect.left < 0 && rect.top < 0) {
            Resources resources = this.f2010a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", C1046a.ANDROID_CLIENT_TYPE);
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.f2014e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        a2.getLocationOnScreen(this.f2016g);
        view.getLocationOnScreen(this.f2015f);
        int[] iArr = this.f2015f;
        int i6 = iArr[0];
        int[] iArr2 = this.f2016g;
        iArr[0] = i6 - iArr2[0];
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.x = (iArr[0] + i2) - (a2.getWidth() / 2);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f2011b.measure(makeMeasureSpec, makeMeasureSpec);
        int measuredHeight = this.f2011b.getMeasuredHeight();
        int[] iArr3 = this.f2015f;
        int i7 = ((iArr3[1] + i4) - dimensionPixelOffset3) - measuredHeight;
        int i8 = iArr3[1] + i5 + dimensionPixelOffset3;
        if (z) {
            if (i7 >= 0) {
                layoutParams.y = i7;
            } else {
                layoutParams.y = i8;
            }
        } else if (measuredHeight + i8 <= this.f2014e.height()) {
            layoutParams.y = i8;
        } else {
            layoutParams.y = i7;
        }
    }

    public static View a(View view) {
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams = rootView.getLayoutParams();
        if ((layoutParams instanceof WindowManager.LayoutParams) && ((WindowManager.LayoutParams) layoutParams).type == 2) {
            return rootView;
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return ((Activity) context).getWindow().getDecorView();
            }
        }
        return rootView;
    }
}
