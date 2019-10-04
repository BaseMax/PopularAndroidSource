package cab.snapp.passenger.f.a.a;

import android.content.Context;
import cab.snapp.c.j;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.a.e;
import cab.snapp.passenger.data_access_layer.network.responses.VoucherResponse;
import cab.snapp.passenger.f.a.a;
import cab.snapp.passenger.f.a.b;
import cab.snapp.passenger.play.R;
import io.reactivex.e.g;
import java.util.Locale;

public final class c implements b {

    /* renamed from: a  reason: collision with root package name */
    private io.reactivex.b.c f533a;

    /* renamed from: b  reason: collision with root package name */
    private Context f534b;
    private d c;
    private a.C0019a d;

    public final void openIPG(String str) {
    }

    public c(Context context, d dVar) {
        this.f534b = context;
        this.c = dVar;
    }

    public final void performPayCall(String str) {
        a.C0019a aVar = this.d;
        if (aVar != null) {
            aVar.onPaymentStart();
        }
        this.f533a = this.c.putSnappCard(str).subscribe(new g() {
            public final void accept(Object obj) {
                c.this.a((VoucherResponse) obj);
            }
        }, new g() {
            public final void accept(Object obj) {
                c.this.a((Throwable) obj);
            }
        });
    }

    public final void setInteractionInterface(a.C0019a aVar) {
        this.d = aVar;
    }

    /* access modifiers changed from: private */
    public void a(Throwable th) {
        a();
        if (th instanceof e) {
            e eVar = (e) th;
            if (!(this.d == null || this.f534b == null)) {
                if (eVar.getErrorCode() == 1003) {
                    this.d.onPaymentError(this.f534b.getResources().getString(R.string.voucher_invalid), 1102);
                    return;
                } else if (eVar.getErrorCode() == 1017) {
                    this.d.onPaymentError(this.f534b.getResources().getString(R.string.voucher_isnot_usable_for_this_user_type), 1102);
                    return;
                } else {
                    this.d.onPaymentError(eVar.getMessage(), 1102);
                }
            }
            return;
        }
        a.C0019a aVar = this.d;
        if (aVar != null) {
            aVar.onPaymentError(this.f534b.getString(R.string.error), 1102);
        }
    }

    /* access modifiers changed from: private */
    public void a(VoucherResponse voucherResponse) {
        a();
        if (voucherResponse != null) {
            a.C0019a aVar = this.d;
            if (aVar != null) {
                aVar.onPaymentSucceed((long) ((int) voucherResponse.getAmount()));
            }
            Context context = this.f534b;
            cab.snapp.snappuikit.b.makeText(context, context.getString(R.string.voucher_credit_added_to_your_account, new Object[]{j.formatDouble(Double.valueOf(voucherResponse.getAmount()), Locale.getDefault())})).show();
        }
    }

    private void a() {
        io.reactivex.b.c cVar = this.f533a;
        if (cVar != null && !cVar.isDisposed()) {
            this.f533a.dispose();
        }
    }
}
