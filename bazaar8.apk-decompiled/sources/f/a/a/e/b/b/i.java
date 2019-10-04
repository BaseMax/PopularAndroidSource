package f.a.a.e.b.b;

import android.widget.TextView;
import f.a.a.d.e;
import f.a.a.e.b.b.A;

/* compiled from: ChoicesInflater */
class i implements A.a<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ TextView f14164a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ l f14165b;

    public i(l lVar, TextView textView) {
        this.f14165b = lVar;
        this.f14164a = textView;
    }

    public void onDismiss() {
    }

    public void a(Integer num) {
        if (num.intValue() != -1) {
            int unused = this.f14165b.f14176h = num.intValue();
            this.f14164a.setText(((e) this.f14165b.f14175g.get(this.f14165b.f14176h)).a());
        }
    }
}
