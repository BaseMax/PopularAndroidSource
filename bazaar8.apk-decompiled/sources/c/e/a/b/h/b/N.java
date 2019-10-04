package c.e.a.b.h.b;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import c.e.a.b.d.f.a;
import c.e.a.b.g.f.Sa;

public final class N implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Sa f10691a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ServiceConnection f10692b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ M f10693c;

    public N(M m, Sa sa, ServiceConnection serviceConnection) {
        this.f10693c = m;
        this.f10691a = sa;
        this.f10692b = serviceConnection;
    }

    public final void run() {
        M m = this.f10693c;
        L l2 = m.f10686b;
        String a2 = m.f10685a;
        Sa sa = this.f10691a;
        ServiceConnection serviceConnection = this.f10692b;
        Bundle a3 = l2.a(a2, sa);
        l2.f10681a.d().l();
        if (a3 != null) {
            long j2 = a3.getLong("install_begin_timestamp_seconds", 0) * 1000;
            if (j2 == 0) {
                l2.f10681a.e().t().a("Service response is missing Install Referrer install timestamp");
            } else {
                String string = a3.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    l2.f10681a.e().t().a("No referrer defined in install referrer response");
                } else {
                    l2.f10681a.e().B().a("InstallReferrer API result", string);
                    cc i2 = l2.f10681a.i();
                    String valueOf = String.valueOf(string);
                    Bundle a4 = i2.a(Uri.parse(valueOf.length() != 0 ? "?".concat(valueOf) : new String("?")));
                    if (a4 == null) {
                        l2.f10681a.e().t().a("No campaign params defined in install referrer result");
                    } else {
                        String string2 = a4.getString("medium");
                        if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                            long j3 = a3.getLong("referrer_click_timestamp_seconds", 0) * 1000;
                            if (j3 == 0) {
                                l2.f10681a.e().t().a("Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                a4.putLong("click_timestamp", j3);
                            }
                        }
                        if (j2 == l2.f10681a.j().f10619l.a()) {
                            l2.f10681a.a();
                            l2.f10681a.e().B().a("Campaign has already been logged");
                        } else {
                            l2.f10681a.j().f10619l.a(j2);
                            l2.f10681a.a();
                            l2.f10681a.e().B().a("Logging Install Referrer campaign from sdk with ", "referrer API");
                            a4.putString("_cis", "referrer API");
                            l2.f10681a.B().b("auto", "_cmp", a4);
                        }
                    }
                }
            }
        }
        if (serviceConnection != null) {
            a.a().a(l2.f10681a.b(), serviceConnection);
        }
    }
}
