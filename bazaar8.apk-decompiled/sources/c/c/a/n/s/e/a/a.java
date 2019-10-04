package c.c.a.n.s.e.a;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.f.Za;
import com.farsitel.bazaar.data.feature.payment.PaymentGateway;
import h.f.b.f;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PaymentOptionsAdapter.kt */
public final class a extends RecyclerView.a<b> {

    /* renamed from: c  reason: collision with root package name */
    public static final C0100a f6871c = new C0100a(null);

    /* renamed from: d  reason: collision with root package name */
    public List<PaymentGateway> f6872d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    public int f6873e;

    /* renamed from: f  reason: collision with root package name */
    public final c f6874f;

    /* renamed from: c.c.a.n.s.e.a.a$a  reason: collision with other inner class name */
    /* compiled from: PaymentOptionsAdapter.kt */
    public static final class C0100a {
        public C0100a() {
        }

        public /* synthetic */ C0100a(f fVar) {
            this();
        }
    }

    /* compiled from: PaymentOptionsAdapter.kt */
    public static final class b extends RecyclerView.w {
        public final Za t;
        public final c u;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public b(Za za, c cVar) {
            super(za.h());
            j.b(za, "binding");
            j.b(cVar, "clickListener");
            this.t = za;
            this.u = cVar;
        }

        public final void a(PaymentGateway paymentGateway, int i2) {
            j.b(paymentGateway, "item");
            this.t.a(45, (Object) paymentGateway);
            this.t.a(34, (Object) Boolean.valueOf(i2 == g()));
            this.f891b.setOnClickListener(new b(this));
            this.t.g();
        }
    }

    public a(c cVar) {
        j.b(cVar, "paymentOptionClickListener");
        this.f6874f = cVar;
    }

    public int a() {
        return this.f6872d.size();
    }

    public final List<PaymentGateway> e() {
        return this.f6872d;
    }

    public final void f(int i2) {
        if (i2 < this.f6872d.size()) {
            int i3 = this.f6873e;
            this.f6873e = i2;
            c(i3);
            c(i2);
            return;
        }
        c.c.a.c.c.a.f4699b.a(new Throwable("Illegal item selection in invoice bottom sheet"));
    }

    /* renamed from: a */
    public void b(b bVar, int i2) {
        j.b(bVar, "holder");
        bVar.a(this.f6872d.get(i2), this.f6873e);
    }

    public b b(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        Za a2 = Za.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        j.a((Object) a2, "ItemPaymentOptionBinding….context), parent, false)");
        return new b(a2, this.f6874f);
    }

    public final PaymentGateway f() {
        return this.f6872d.get(this.f6873e);
    }
}
