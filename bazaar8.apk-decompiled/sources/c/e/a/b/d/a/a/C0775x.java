package c.e.a.b.d.a.a;

import android.util.Log;
import c.e.a.b.d.a.a.C0755c;
import com.google.android.gms.common.ConnectionResult;
import java.util.Collections;

/* renamed from: c.e.a.b.d.a.a.x  reason: case insensitive filesystem */
public final class C0775x implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ConnectionResult f9913a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0755c.C0121c f9914b;

    public C0775x(C0755c.C0121c cVar, ConnectionResult connectionResult) {
        this.f9914b = cVar;
        this.f9913a = connectionResult;
    }

    public final void run() {
        if (this.f9913a.B()) {
            boolean unused = this.f9914b.f9885e = true;
            if (this.f9914b.f9881a.g()) {
                this.f9914b.a();
                return;
            }
            try {
                this.f9914b.f9881a.a(null, Collections.emptySet());
            } catch (SecurityException e2) {
                Log.e("GoogleApiManager", "Failed to get service from broker. ", e2);
                ((C0755c.a) C0755c.this.m.get(this.f9914b.f9882b)).a(new ConnectionResult(10));
            }
        } else {
            ((C0755c.a) C0755c.this.m.get(this.f9914b.f9882b)).a(this.f9913a);
        }
    }
}
