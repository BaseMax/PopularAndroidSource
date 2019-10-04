package c.c.a.n.s.h;

import android.net.http.SslCertificate;
import android.view.View;
import com.farsitel.bazaar.ui.payment.web.PaymentWebViewFragment;

/* compiled from: PaymentWebViewFragment.kt */
final class c implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ PaymentWebViewFragment f6922a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ SslCertificate f6923b;

    public c(PaymentWebViewFragment paymentWebViewFragment, SslCertificate sslCertificate) {
        this.f6922a = paymentWebViewFragment;
        this.f6923b = sslCertificate;
    }

    public final void onClick(View view) {
        this.f6922a.b(this.f6923b);
    }
}
