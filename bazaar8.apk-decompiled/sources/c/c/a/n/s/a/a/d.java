package c.c.a.n.s.a.a;

import android.view.View;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.ui.payment.credit.options.CreditOptionsFragment;

/* compiled from: CreditOptionsFragment.kt */
final class d implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ CreditOptionsFragment f6808a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ErrorModel f6809b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f6810c;

    public d(CreditOptionsFragment creditOptionsFragment, ErrorModel errorModel, String str) {
        this.f6808a = creditOptionsFragment;
        this.f6809b = errorModel;
        this.f6810c = str;
    }

    public final void onClick(View view) {
        this.f6808a.Xa();
    }
}
