package l;

import java.io.IOException;

/* compiled from: ExecutorCallAdapterFactory */
class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ D f15921a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ p f15922b;

    public n(p pVar, D d2) {
        this.f15922b = pVar;
        this.f15921a = d2;
    }

    public void run() {
        if (this.f15922b.f15926b.f15929b.m()) {
            p pVar = this.f15922b;
            pVar.f15925a.a(pVar.f15926b, (Throwable) new IOException("Canceled"));
            return;
        }
        p pVar2 = this.f15922b;
        pVar2.f15925a.a(pVar2.f15926b, this.f15921a);
    }
}
