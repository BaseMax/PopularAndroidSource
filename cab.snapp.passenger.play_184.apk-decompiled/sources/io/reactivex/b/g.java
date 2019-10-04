package io.reactivex.b;

final class g extends f<Runnable> {
    /* access modifiers changed from: protected */
    public final /* synthetic */ void a(Object obj) {
        ((Runnable) obj).run();
    }

    g(Runnable runnable) {
        super(runnable);
    }

    public final String toString() {
        return "RunnableDisposable(disposed=" + isDisposed() + ", " + get() + ")";
    }
}
