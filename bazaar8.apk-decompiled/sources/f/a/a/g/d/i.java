package f.a.a.g.d;

import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable;
import com.crashlytics.android.Crashlytics;
import f.a.a.d.f;
import f.a.a.e.g;
import f.a.a.e.j;
import ir.cafebazaar.inline.ux.IABConsumeInfo;
import ir.cafebazaar.inline.ux.payment.PaymentInfo;
import ir.cafebazaar.inline.ux.payment.ResidPaymentInfo;
import ir.cafebazaar.inline.ux.payment.iab.IABPaymentInfo;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* compiled from: PaymentCallListener */
public class i extends a {
    public i(g gVar) {
        super(gVar);
        this.f14442b.setCancelable(false);
    }

    public void a(String str) {
        if (this.f14442b.isShowing()) {
            try {
                f g2 = b().h().g();
                PaymentInfo j2 = g2.j(g2.a((InputStream) new ByteArrayInputStream(str.getBytes("UTF-8"))));
                b().f().v().a((Parcelable) j2);
                if (j2 instanceof ResidPaymentInfo) {
                    super.a(str);
                    Intent intent = new Intent();
                    intent.setData(Uri.parse("resid://proceed?token=" + ((ResidPaymentInfo) j2).c()));
                    intent.setPackage("com.farsitel.bazaar");
                    b().f().startActivityForResult(intent, 3);
                } else if (!(j2 instanceof IABPaymentInfo)) {
                    boolean z = j2 instanceof IABConsumeInfo;
                }
            } catch (Exception e2) {
                Crashlytics.logException(e2);
                super.a(str);
                new j(b(), b().k().b(f.a.a.g.error_general), b().k().b(f.a.a.g.error_try_again_later), e2.toString()).f();
            }
        }
    }
}
