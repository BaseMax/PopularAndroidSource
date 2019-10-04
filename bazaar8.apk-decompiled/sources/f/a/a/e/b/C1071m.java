package f.a.a.e.b;

import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatButton;
import f.a.a.e;
import f.a.a.e.g;
import f.a.a.f;
import f.a.a.f.c;
import ir.cafebazaar.inline.ui.inflaters.ButtonInflater;

/* renamed from: f.a.a.e.b.m  reason: case insensitive filesystem */
/* compiled from: DualButtonsInflater */
public class C1071m extends C1072n {

    /* renamed from: c  reason: collision with root package name */
    public ButtonInflater f14252c;

    /* renamed from: d  reason: collision with root package name */
    public ButtonInflater f14253d;

    public void a(ButtonInflater buttonInflater) {
        this.f14252c = buttonInflater;
    }

    public void b(ButtonInflater buttonInflater) {
        this.f14253d = buttonInflater;
    }

    public View a(g gVar, View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        linearLayout.removeAllViews();
        ButtonInflater buttonInflater = this.f14252c;
        buttonInflater.a(buttonInflater.c().h());
        ButtonInflater buttonInflater2 = this.f14253d;
        buttonInflater2.a(buttonInflater2.c().h());
        LayoutInflater from = LayoutInflater.from(gVar.f());
        View a2 = this.f14252c.a(from, linearLayout, gVar);
        View a3 = this.f14253d.a(from, linearLayout, gVar);
        AppCompatButton appCompatButton = (AppCompatButton) a2.findViewById(e.button);
        AppCompatButton appCompatButton2 = (AppCompatButton) a3.findViewById(e.button);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.weight = 1.0f;
        layoutParams.setMargins(c.a(12), 0, c.a(12), 0);
        linearLayout.addView(a2, 0, layoutParams);
        linearLayout.addView(a3, 0, layoutParams);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        gVar.f().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        linearLayout.measure(View.MeasureSpec.makeMeasureSpec(displayMetrics.widthPixels, 1073741824), View.MeasureSpec.makeMeasureSpec(displayMetrics.heightPixels, Integer.MIN_VALUE));
        int max = Math.max(appCompatButton.getMeasuredHeight(), appCompatButton2.getMeasuredHeight());
        appCompatButton.setLayoutParams(new FrameLayout.LayoutParams(-1, max));
        appCompatButton2.setLayoutParams(new FrameLayout.LayoutParams(-1, max));
        return linearLayout;
    }

    public int b() {
        return f.inline_dualbuttons;
    }
}
