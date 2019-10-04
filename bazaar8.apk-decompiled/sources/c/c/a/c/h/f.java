package c.c.a.c.h;

import b.r.u;

/* compiled from: SingleLiveEvent.kt */
final class f<T> implements u<T> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f4732a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ u f4733b;

    public f(g gVar, u uVar) {
        this.f4732a = gVar;
        this.f4733b = uVar;
    }

    public final void a(T t) {
        if (this.f4732a.f4734k.compareAndSet(true, false)) {
            this.f4733b.a(t);
        }
    }
}
