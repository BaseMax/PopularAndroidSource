package com.google.android.material.bottomsheet;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatDialog;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.a;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

public final class a extends AppCompatDialog {

    /* renamed from: a  reason: collision with root package name */
    boolean f3844a;

    /* renamed from: b  reason: collision with root package name */
    boolean f3845b;
    boolean c;
    private BottomSheetBehavior<FrameLayout> d;
    private BottomSheetBehavior.a e;

    public a(Context context) {
        this(context, 0);
    }

    public final void setContentView(int i) {
        super.setContentView(a(i, null, null));
    }

    public final void onCreate(Bundle bundle) {
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

    public final void setContentView(View view) {
        super.setContentView(a(0, view, null));
    }

    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(a(0, view, layoutParams));
    }

    public final void setCancelable(boolean z) {
        super.setCancelable(z);
        if (this.f3844a != z) {
            this.f3844a = z;
            BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.d;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.setHideable(z);
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void onStart() {
        super.onStart();
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.d;
        if (bottomSheetBehavior != null && bottomSheetBehavior.getState() == 5) {
            this.d.setState(4);
        }
    }

    public final void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.f3844a) {
            this.f3844a = true;
        }
        this.f3845b = z;
        this.c = true;
    }

    private View a(int i, View view, ViewGroup.LayoutParams layoutParams) {
        FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), a.h.design_bottom_sheet_dialog, null);
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) frameLayout.findViewById(a.f.coordinator);
        if (i != 0 && view == null) {
            view = getLayoutInflater().inflate(i, coordinatorLayout, false);
        }
        FrameLayout frameLayout2 = (FrameLayout) coordinatorLayout.findViewById(a.f.design_bottom_sheet);
        this.d = BottomSheetBehavior.from(frameLayout2);
        this.d.setBottomSheetCallback(this.e);
        this.d.setHideable(this.f3844a);
        if (layoutParams == null) {
            frameLayout2.addView(view);
        } else {
            frameLayout2.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(a.f.touch_outside).setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                if (a.this.f3844a && a.this.isShowing()) {
                    a aVar = a.this;
                    if (!aVar.c) {
                        TypedArray obtainStyledAttributes = aVar.getContext().obtainStyledAttributes(new int[]{16843611});
                        aVar.f3845b = obtainStyledAttributes.getBoolean(0, true);
                        obtainStyledAttributes.recycle();
                        aVar.c = true;
                    }
                    if (aVar.f3845b) {
                        a.this.cancel();
                    }
                }
            }
        });
        ViewCompat.setAccessibilityDelegate(frameLayout2, new AccessibilityDelegateCompat() {
            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                if (a.this.f3844a) {
                    accessibilityNodeInfoCompat.addAction(1048576);
                    accessibilityNodeInfoCompat.setDismissable(true);
                    return;
                }
                accessibilityNodeInfoCompat.setDismissable(false);
            }

            public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
                if (i != 1048576 || !a.this.f3844a) {
                    return super.performAccessibilityAction(view, i, bundle);
                }
                a.this.cancel();
                return true;
            }
        });
        frameLayout2.setOnTouchListener(new View.OnTouchListener() {
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        return frameLayout;
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public a(android.content.Context r4, int r5) {
        /*
            r3 = this;
            r0 = 1
            if (r5 != 0) goto L_0x0019
            android.util.TypedValue r5 = new android.util.TypedValue
            r5.<init>()
            android.content.res.Resources$Theme r1 = r4.getTheme()
            int r2 = com.google.android.material.a.b.bottomSheetDialogTheme
            boolean r1 = r1.resolveAttribute(r2, r5, r0)
            if (r1 == 0) goto L_0x0017
            int r5 = r5.resourceId
            goto L_0x0019
        L_0x0017:
            int r5 = com.google.android.material.a.j.Theme_Design_Light_BottomSheetDialog
        L_0x0019:
            r3.<init>(r4, r5)
            r3.f3844a = r0
            r3.f3845b = r0
            com.google.android.material.bottomsheet.a$4 r4 = new com.google.android.material.bottomsheet.a$4
            r4.<init>()
            r3.e = r4
            r3.supportRequestWindowFeature(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.a.<init>(android.content.Context, int):void");
    }
}
