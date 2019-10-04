package f.a.a.g.d.b;

import android.os.Handler;
import com.crashlytics.android.Crashlytics;
import f.a.a.c.b.b;
import f.a.a.e.g;
import ir.cafebazaar.inline.platform.InlineApplication;
import ir.cafebazaar.inline.ux.flow.pull.Puller;
import java.util.HashMap;

/* compiled from: Puller */
class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f14461a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ g f14462b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Handler f14463c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Puller f14464d;

    public c(Puller puller, String str, g gVar, Handler handler) {
        this.f14464d = puller;
        this.f14461a = str;
        this.f14462b = gVar;
        this.f14463c = handler;
    }

    public void run() {
        HashMap hashMap = null;
        try {
            if (this.f14461a != null) {
                hashMap = new HashMap();
                hashMap.put("token", this.f14461a);
            }
            InlineApplication h2 = this.f14462b.h();
            if (h2 != null) {
                new b(h2, this.f14464d.f15070c, hashMap).a(new b(this));
            }
        } catch (Exception e2) {
            Crashlytics.logException(e2);
        }
    }
}
