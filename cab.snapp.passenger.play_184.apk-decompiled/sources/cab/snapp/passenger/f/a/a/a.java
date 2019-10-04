package cab.snapp.passenger.f.a.a;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.a.e;
import cab.snapp.passenger.data_access_layer.network.responses.AsanPardakhtPaymentResponse;
import cab.snapp.passenger.f.a.a;
import cab.snapp.passenger.f.a.b;
import cab.snapp.passenger.play.R;
import io.reactivex.b.c;
import io.reactivex.e.g;

public final class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private Context f529a;

    /* renamed from: b  reason: collision with root package name */
    private d f530b;
    private c c;
    private a.C0019a d;
    private long e;

    public a(Context context, d dVar) {
        this.f529a = context;
        this.f530b = dVar;
    }

    public final void performPayCall(String str) {
        a.C0019a aVar = this.d;
        if (aVar != null) {
            aVar.onPaymentStart();
        }
        this.e = Long.parseLong(str);
        this.c = this.f530b.postAsanPardakhtPayment(this.e).subscribe(new g() {
            public final void accept(Object obj) {
                a.this.a((AsanPardakhtPaymentResponse) obj);
            }
        }, new g() {
            public final void accept(Object obj) {
                a.this.a((Throwable) obj);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Throwable th) throws Exception {
        String str;
        if (th instanceof e) {
            e eVar = (e) th;
            if (eVar.getErrorCode() == 1044) {
                str = this.f529a.getString(R.string.max_payment_limit);
            } else if (eVar.getMessage() == null || eVar.getMessage().equals("")) {
                str = this.f529a.getString(R.string.error_on_online_payment);
            } else {
                str = eVar.getMessage();
            }
            String convertEngToPersianNumbers = cab.snapp.c.d.convertEngToPersianNumbers(str);
            a.C0019a aVar = this.d;
            if (aVar != null) {
                aVar.onPaymentError(convertEngToPersianNumbers, 1102);
            }
            this.c.dispose();
            return;
        }
        Context context = this.f529a;
        cab.snapp.snappuikit.b.makeText(context, context.getString(R.string.error_on_online_payment)).textColor(this.f529a.getResources().getColor(R.color.cherry)).show();
    }

    public final void openIPG(String str) {
        if (str != null) {
            a.C0019a aVar = this.d;
            if (aVar != null) {
                aVar.onPaymentSucceed(this.e);
            }
            try {
                this.f529a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            } catch (Exception e2) {
                Context context = this.f529a;
                cab.snapp.snappuikit.b.makeText(context, context.getString(R.string.error_no_browser_available)).textColor(this.f529a.getResources().getColor(R.color.cherry)).show();
                com.a.a.a.logException(e2);
            }
        } else {
            Context context2 = this.f529a;
            cab.snapp.snappuikit.b.makeText(context2, context2.getString(R.string.error_on_online_payment)).textColor(this.f529a.getResources().getColor(R.color.cherry)).show();
        }
    }

    public final void setInteractionInterface(a.C0019a aVar) {
        this.d = aVar;
    }

    /* access modifiers changed from: private */
    public void a(AsanPardakhtPaymentResponse asanPardakhtPaymentResponse) {
        if (asanPardakhtPaymentResponse.getRedirectUrl() != null) {
            a.C0019a aVar = this.d;
            if (aVar != null) {
                aVar.onPaymentSucceed(this.e);
            }
            try {
                this.f529a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(asanPardakhtPaymentResponse.getRedirectUrl())));
            } catch (Exception e2) {
                Context context = this.f529a;
                cab.snapp.snappuikit.b.makeText(context, context.getString(R.string.error_no_browser_available)).textColor(this.f529a.getResources().getColor(R.color.cherry)).show();
                com.a.a.a.logException(e2);
            }
        } else {
            Context context2 = this.f529a;
            cab.snapp.snappuikit.b.makeText(context2, context2.getString(R.string.error_on_online_payment)).textColor(this.f529a.getResources().getColor(R.color.cherry)).show();
        }
        this.c.dispose();
    }
}
