package c.e.a.b.d.a.a;

import android.app.Dialog;
import android.content.DialogInterface;
import c.e.a.b.d.c;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;

public final class S implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final Q f9836a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ P f9837b;

    public S(P p, Q q) {
        this.f9837b = p;
        this.f9836a = q;
    }

    public final void run() {
        if (this.f9837b.f9830b) {
            ConnectionResult a2 = this.f9836a.a();
            if (a2.A()) {
                P p = this.f9837b;
                p.f13000a.startActivityForResult(GoogleApiActivity.a(p.a(), a2.z(), this.f9836a.b(), false), 1);
            } else if (this.f9837b.f9833e.b(a2.x())) {
                P p2 = this.f9837b;
                p2.f9833e.a(p2.a(), this.f9837b.f13000a, a2.x(), 2, this.f9837b);
            } else if (a2.x() == 18) {
                Dialog a3 = c.a(this.f9837b.a(), (DialogInterface.OnCancelListener) this.f9837b);
                P p3 = this.f9837b;
                p3.f9833e.a(p3.a().getApplicationContext(), (A) new T(this, a3));
            } else {
                this.f9837b.a(a2, this.f9836a.b());
            }
        }
    }
}
