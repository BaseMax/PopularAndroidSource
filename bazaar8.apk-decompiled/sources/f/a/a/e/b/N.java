package f.a.a.e.b;

import android.view.View;
import android.widget.LinearLayout;
import ir.cafebazaar.inline.ui.inflaters.TableInflater;

/* compiled from: TableInflater */
class N implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ View f14083a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f14084b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ TableInflater f14085c;

    public N(TableInflater tableInflater, View view, View view2) {
        this.f14085c = tableInflater;
        this.f14083a = view;
        this.f14084b = view2;
    }

    public void run() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f14083a.getLayoutParams();
        layoutParams.width = (int) (((float) this.f14084b.getWidth()) * this.f14085c.f15007i.displaySize);
        layoutParams.gravity = 17;
        this.f14083a.setLayoutParams(layoutParams);
    }
}
