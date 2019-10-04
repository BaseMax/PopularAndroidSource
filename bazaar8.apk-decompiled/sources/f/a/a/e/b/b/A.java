package f.a.a.e.b.b;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.PopupWindow;
import f.a.a.e.g;
import ir.cafebazaar.inline.ui.InlineActivity;

/* compiled from: InlinePopup */
public abstract class A<T> {

    /* renamed from: a  reason: collision with root package name */
    public PopupWindow f14112a;

    /* renamed from: b  reason: collision with root package name */
    public a<T> f14113b;

    /* renamed from: c  reason: collision with root package name */
    public InlineActivity f14114c;

    /* compiled from: InlinePopup */
    public interface a<V> {
        void a(V v);

        void onDismiss();
    }

    public A(g gVar) {
        this.f14114c = gVar.f();
    }

    public abstract View a(LayoutInflater layoutInflater, g gVar);

    public a<T> c() {
        return this.f14113b;
    }

    public g d() {
        return this.f14114c;
    }

    public boolean e() {
        PopupWindow popupWindow = this.f14112a;
        return popupWindow != null && popupWindow.isShowing();
    }

    /* JADX WARNING: type inference failed for: r0v24, types: [android.view.ViewGroup$LayoutParams] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(androidx.core.widget.NestedScrollView r10, android.view.View r11) {
        /*
            r9 = this;
            ir.cafebazaar.inline.ui.InlineActivity r0 = r9.f14114c
            android.view.Window r1 = r0.getWindow()
            android.view.View r1 = r1.getDecorView()
            android.os.IBinder r1 = r1.getWindowToken()
            f.a.a.f.f.a((android.content.Context) r0, (android.os.IBinder) r1)
            ir.cafebazaar.inline.ui.InlineActivity r0 = r9.f14114c
            android.view.LayoutInflater r0 = r0.getLayoutInflater()
            ir.cafebazaar.inline.ui.InlineActivity r1 = r9.f14114c
            android.view.View r0 = r9.a((android.view.LayoutInflater) r0, (f.a.a.e.g) r1)
            f.a.a.e.b.b.a.a r1 = new f.a.a.e.b.b.a.a
            f.a.a.e.g r2 = r9.d()
            ir.cafebazaar.inline.ui.InlineActivity r2 = r2.f()
            r1.<init>(r2)
            r2 = 240(0xf0, float:3.36E-43)
            int r2 = f.a.a.f.c.a(r2)
            r3 = -1
            r1.setBackgroundColor(r3)
            r1.setMaxHeight(r2)
            r1.addView(r0)
            android.widget.PopupWindow r0 = new android.widget.PopupWindow
            r4 = 0
            r5 = -2
            r0.<init>(r1, r3, r5, r4)
            r9.f14112a = r0
            android.widget.PopupWindow r0 = r9.f14112a
            r0.setOutsideTouchable(r4)
            android.widget.PopupWindow r0 = r9.f14112a
            r1 = 1
            r0.setFocusable(r1)
            android.widget.PopupWindow r0 = r9.f14112a
            r3 = 16973910(0x1030056, float:2.406114E-38)
            r0.setAnimationStyle(r3)
            android.widget.PopupWindow r0 = r9.f14112a
            ir.cafebazaar.inline.ui.InlineActivity r3 = r9.f14114c
            android.view.Window r3 = r3.getWindow()
            android.view.View r3 = r3.getDecorView()
            r5 = 80
            r0.showAtLocation(r3, r5, r4, r4)
            android.util.DisplayMetrics r0 = new android.util.DisplayMetrics
            r0.<init>()
            ir.cafebazaar.inline.ui.InlineActivity r3 = r9.f14114c
            android.view.WindowManager r3 = r3.getWindowManager()
            android.view.Display r3 = r3.getDefaultDisplay()
            r3.getMetrics(r0)
            r3 = 2
            int[] r5 = new int[r3]
            r6 = 0
            if (r11 == 0) goto L_0x00fe
            r11.getLocationInWindow(r5)
            r7 = r5[r1]
            int r8 = r11.getHeight()
            int r7 = r7 + r8
            int r8 = r0.heightPixels
            int r8 = r8 - r2
            if (r7 <= r8) goto L_0x00fe
            r5 = r5[r1]
            int r6 = r11.getHeight()
            int r5 = r5 + r6
            int r0 = r0.heightPixels
            int r5 = r5 - r0
            int r5 = r5 + r2
            int r0 = r10.getHeight()
            android.view.View r6 = r10.getChildAt(r4)
            int r6 = r6.getHeight()
            if (r0 >= r6) goto L_0x00a8
            goto L_0x00a9
        L_0x00a8:
            r1 = 0
        L_0x00a9:
            android.view.ViewGroup$LayoutParams r0 = r10.getLayoutParams()
            r6 = r0
            android.widget.FrameLayout$LayoutParams r6 = (android.widget.FrameLayout.LayoutParams) r6
            android.widget.FrameLayout$LayoutParams r0 = new android.widget.FrameLayout$LayoutParams
            r0.<init>(r6)
            if (r1 != 0) goto L_0x00d9
            r0.bottomMargin = r5
            r11 = 17
            r0.gravity = r11
            ir.cafebazaar.inline.ui.InlineActivity r11 = r9.f14114c
            int r1 = f.a.a.e.header
            android.view.View r11 = r11.findViewById(r1)
            int r1 = r11.getVisibility()
            if (r1 != 0) goto L_0x00d5
            int r1 = r0.bottomMargin
            int r11 = r11.getHeight()
            int r11 = r11 / r3
            int r1 = r1 + r11
            r0.bottomMargin = r1
        L_0x00d5:
            r10.setLayoutParams(r0)
            goto L_0x00fe
        L_0x00d9:
            r0.bottomMargin = r2
            ir.cafebazaar.inline.ui.InlineActivity r1 = r9.f14114c
            int r2 = f.a.a.e.footer
            android.view.View r1 = r1.findViewById(r2)
            if (r1 == 0) goto L_0x00f4
            int r2 = r1.getVisibility()
            if (r2 != 0) goto L_0x00f4
            int r2 = r0.bottomMargin
            int r1 = r1.getHeight()
            int r2 = r2 - r1
            r0.bottomMargin = r2
        L_0x00f4:
            r10.setLayoutParams(r0)
            android.view.View r0 = r10.getChildAt(r4)
            r10.requestChildFocus(r0, r11)
        L_0x00fe:
            android.widget.PopupWindow r11 = r9.f14112a
            f.a.a.e.b.b.z r0 = new f.a.a.e.b.b.z
            r0.<init>(r9, r6, r10)
            r11.setOnDismissListener(r0)
            f.a.a.a.a.b r10 = f.a.a.a.a.b.a()
            f.a.a.a.a.a r11 = new f.a.a.a.a.a
            r11.<init>()
            long r0 = java.lang.System.currentTimeMillis()
            r11.a((long) r0)
            java.lang.String r0 = "user"
            r11.a((java.lang.String) r0)
            java.lang.String r0 = "inline_popup"
            r11.b(r0)
            java.lang.String r0 = "action"
            java.lang.String r1 = "show"
            r11.a(r0, r1)
            ir.cafebazaar.inline.ui.InlineActivity r0 = r9.f14114c
            ir.cafebazaar.inline.platform.InlineApplication r0 = r0.h()
            java.lang.String r0 = r0.f()
            r11.c(r0)
            ir.cafebazaar.inline.ui.InlineActivity r0 = r9.f14114c
            ir.cafebazaar.inline.ui.InlineActivity r0 = r0.f()
            f.a.a.g.d.d r0 = r0.w()
            java.lang.String r0 = r0.c()
            java.lang.String r1 = "path"
            r11.b(r1, r0)
            r10.a(r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.a.e.b.b.A.a(androidx.core.widget.NestedScrollView, android.view.View):void");
    }

    public void a() {
        PopupWindow popupWindow = this.f14112a;
        if (popupWindow != null && popupWindow.isShowing()) {
            this.f14112a.dismiss();
        }
    }

    public void a(a<T> aVar) {
        this.f14113b = aVar;
    }
}
