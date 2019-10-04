package b.i.h;

import android.os.Handler;
import b.i.b.a.h;
import b.i.h.f;
import b.i.h.k;

/* compiled from: FontsContractCompat */
class c implements k.a<f.c> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ h.a f2670a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Handler f2671b;

    public c(h.a aVar, Handler handler) {
        this.f2670a = aVar;
        this.f2671b = handler;
    }

    public void a(f.c cVar) {
        if (cVar == null) {
            this.f2670a.a(1, this.f2671b);
            return;
        }
        int i2 = cVar.f2686b;
        if (i2 == 0) {
            this.f2670a.a(cVar.f2685a, this.f2671b);
        } else {
            this.f2670a.a(i2, this.f2671b);
        }
    }
}
