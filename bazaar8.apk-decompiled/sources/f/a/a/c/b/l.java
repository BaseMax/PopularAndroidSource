package f.a.a.c.b;

import f.a.a.c.b.o;
import org.json.JSONException;

/* compiled from: SyncAPICallHandler */
class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ o.a f13969a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ JSONException f13970b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ o f13971c;

    public l(o oVar, o.a aVar, JSONException jSONException) {
        this.f13971c = oVar;
        this.f13969a = aVar;
        this.f13970b = jSONException;
    }

    public void run() {
        o.a aVar = this.f13969a;
        if (aVar != null) {
            aVar.a(1, this.f13970b.toString());
        }
    }
}
