package f.a.a.e.b.b;

import android.view.View;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import f.a.a.e.g;

/* compiled from: ChoicesInflater */
class j implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ o f14166a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ g f14167b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ TextView f14168c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ l f14169d;

    public j(l lVar, o oVar, g gVar, TextView textView) {
        this.f14169d = lVar;
        this.f14166a = oVar;
        this.f14167b = gVar;
        this.f14168c = textView;
    }

    public void onClick(View view) {
        if (!this.f14166a.e()) {
            this.f14166a.a((NestedScrollView) this.f14167b.k().aa(), (View) this.f14168c);
        } else {
            this.f14166a.a();
        }
    }
}
