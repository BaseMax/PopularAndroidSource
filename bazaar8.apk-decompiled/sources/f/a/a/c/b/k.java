package f.a.a.c.b;

import android.os.Handler;
import android.os.Looper;
import f.a.a.c.b;
import f.a.a.c.b.o;

/* compiled from: SyncAPICallHandler */
class k implements b<String> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ long f13966a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ o.a f13967b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ o f13968c;

    public k(o oVar, long j2, o.a aVar) {
        this.f13968c = oVar;
        this.f13966a = j2;
        this.f13967b = aVar;
    }

    /* renamed from: b */
    public void a(String str) {
        o.b("response");
        new Handler(Looper.getMainLooper()).post(new i(this, str));
    }

    public void a(String str) {
        new Handler(Looper.getMainLooper()).post(new j(this, str));
    }
}
