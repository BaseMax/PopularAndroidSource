package c.e.a.c.f;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import b.b.a.B;
import b.i.k.C0258a;
import b.i.k.z;
import c.e.a.c.b;
import c.e.a.c.f;
import c.e.a.c.j;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* compiled from: BottomSheetDialog */
public class h extends B {

    /* renamed from: c  reason: collision with root package name */
    public BottomSheetBehavior<FrameLayout> f11280c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f11281d = true;

    /* renamed from: e  reason: collision with root package name */
    public boolean f11282e = true;

    /* renamed from: f  reason: collision with root package name */
    public boolean f11283f;

    /* renamed from: g  reason: collision with root package name */
    public BottomSheetBehavior.a f11284g = new g(this);

    public h(Context context, int i2) {
        super(context, a(context, i2));
        a(1);
    }

    public final View a(int i2, View view, ViewGroup.LayoutParams layoutParams) {
        FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), c.e.a.c.h.design_bottom_sheet_dialog, null);
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) frameLayout.findViewById(f.coordinator);
        if (i2 != 0 && view == null) {
            view = getLayoutInflater().inflate(i2, coordinatorLayout, false);
        }
        FrameLayout frameLayout2 = (FrameLayout) coordinatorLayout.findViewById(f.design_bottom_sheet);
        this.f11280c = BottomSheetBehavior.b(frameLayout2);
        this.f11280c.a(this.f11284g);
        this.f11280c.b(this.f11281d);
        if (layoutParams == null) {
            frameLayout2.addView(view);
        } else {
            frameLayout2.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(f.touch_outside).setOnClickListener(new d(this));
        z.a((View) frameLayout2, (C0258a) new e(this));
        frameLayout2.setOnTouchListener(new f(this));
        return frameLayout;
    }

    public boolean b() {
        if (!this.f11283f) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{16843611});
            this.f11282e = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
            this.f11283f = true;
        }
        return this.f11282e;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                window.clearFlags(67108864);
                window.addFlags(Integer.MIN_VALUE);
            }
            window.setLayout(-1, -1);
        }
    }

    public void onStart() {
        super.onStart();
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f11280c;
        if (bottomSheetBehavior != null && bottomSheetBehavior.c() == 5) {
            this.f11280c.c(4);
        }
    }

    public void setCancelable(boolean z) {
        super.setCancelable(z);
        if (this.f11281d != z) {
            this.f11281d = z;
            BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f11280c;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.b(z);
            }
        }
    }

    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.f11281d) {
            this.f11281d = true;
        }
        this.f11282e = z;
        this.f11283f = true;
    }

    public void setContentView(int i2) {
        super.setContentView(a(i2, null, null));
    }

    public void setContentView(View view) {
        super.setContentView(a(0, view, null));
    }

    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(a(0, view, layoutParams));
    }

    public static int a(Context context, int i2) {
        if (i2 != 0) {
            return i2;
        }
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(b.bottomSheetDialogTheme, typedValue, true)) {
            return typedValue.resourceId;
        }
        return j.Theme_Design_Light_BottomSheetDialog;
    }
}
