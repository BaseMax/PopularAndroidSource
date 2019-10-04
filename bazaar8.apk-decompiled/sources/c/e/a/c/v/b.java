package c.e.a.c.v;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.TextView;

/* compiled from: IndicatorViewController */
class b extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11470a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ TextView f11471b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f11472c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ TextView f11473d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ c f11474e;

    public b(c cVar, int i2, TextView textView, int i3, TextView textView2) {
        this.f11474e = cVar;
        this.f11470a = i2;
        this.f11471b = textView;
        this.f11472c = i3;
        this.f11473d = textView2;
    }

    public void onAnimationEnd(Animator animator) {
        int unused = this.f11474e.f11483i = this.f11470a;
        Animator unused2 = this.f11474e.f11481g = null;
        TextView textView = this.f11471b;
        if (textView != null) {
            textView.setVisibility(4);
            if (this.f11472c == 1 && this.f11474e.m != null) {
                this.f11474e.m.setText(null);
            }
        }
    }

    public void onAnimationStart(Animator animator) {
        TextView textView = this.f11473d;
        if (textView != null) {
            textView.setVisibility(0);
        }
    }
}
