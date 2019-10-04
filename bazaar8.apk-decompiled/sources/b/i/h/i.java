package b.i.h;

import android.os.Handler;
import b.i.h.k;
import java.util.concurrent.Callable;

/* compiled from: SelfDestructiveThread */
class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Callable f2690a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Handler f2691b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ k.a f2692c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ k f2693d;

    public i(k kVar, Callable callable, Handler handler, k.a aVar) {
        this.f2693d = kVar;
        this.f2690a = callable;
        this.f2691b = handler;
        this.f2692c = aVar;
    }

    public void run() {
        Object obj;
        try {
            obj = this.f2690a.call();
        } catch (Exception unused) {
            obj = null;
        }
        this.f2691b.post(new h(this, obj));
    }
}
