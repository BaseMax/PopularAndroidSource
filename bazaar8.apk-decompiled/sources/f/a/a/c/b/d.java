package f.a.a.c.b;

import android.os.Handler;
import android.os.Looper;
import f.a.a.a.b;
import f.a.a.c.b.o;

/* compiled from: CachedAPICallHandler */
class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Object f13951a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ o.a f13952b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ long f13953c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ g f13954d;

    public d(g gVar, Object obj, o.a aVar, long j2) {
        this.f13954d = gVar;
        this.f13951a = obj;
        this.f13952b = aVar;
        this.f13953c = j2;
    }

    public void run() {
        if (((b) this.f13951a).b() != null) {
            new Handler(Looper.getMainLooper()).post(new c(this));
        } else {
            d.super.a(this.f13952b);
        }
    }
}
