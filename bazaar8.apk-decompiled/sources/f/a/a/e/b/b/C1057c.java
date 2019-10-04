package f.a.a.e.b.b;

import android.view.View;
import androidx.core.widget.NestedScrollView;
import f.a.a.e.g;
import f.a.a.g.a.n;
import ir.cafebazaar.inline.ui.inflaters.inputs.AddressInputInflater;

/* renamed from: f.a.a.e.b.b.c  reason: case insensitive filesystem */
/* compiled from: AddressInputInflater */
class C1057c implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ n f14138a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ g f14139b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ View f14140c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ AddressInputInflater f14141d;

    public C1057c(AddressInputInflater addressInputInflater, n nVar, g gVar, View view) {
        this.f14141d = addressInputInflater;
        this.f14138a = nVar;
        this.f14139b = gVar;
        this.f14140c = view;
    }

    public void onClick(View view) {
        if (!this.f14138a.e()) {
            this.f14138a.a((NestedScrollView) this.f14139b.k().aa(), this.f14140c);
        } else {
            this.f14138a.a();
        }
    }
}
