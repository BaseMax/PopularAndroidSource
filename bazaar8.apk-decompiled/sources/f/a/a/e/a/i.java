package f.a.a.e.a;

import android.view.View;
import f.a.a.e.g;

/* compiled from: GradualChangePropagator */
class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ p f14031a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f14032b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ g f14033c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ j f14034d;

    public i(j jVar, p pVar, View view, g gVar) {
        this.f14034d = jVar;
        this.f14031a = pVar;
        this.f14032b = view;
        this.f14033c = gVar;
    }

    public void run() {
        this.f14031a.a(this.f14032b, this.f14033c);
    }
}
