package c.e.a.b.j;

import java.util.concurrent.Executor;

public abstract class g<TResult> {
    public g<TResult> a(C0980c<TResult> cVar) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    public abstract g<TResult> a(d dVar);

    public abstract g<TResult> a(Executor executor, d dVar);

    public abstract g<TResult> a(Executor executor, e<? super TResult> eVar);

    public abstract Exception a();

    public abstract <X extends Throwable> TResult a(Class<X> cls);

    public <TContinuationResult> g<TContinuationResult> b(Executor executor, C0978a<TResult, g<TContinuationResult>> aVar) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    public abstract TResult b();

    public abstract boolean c();

    public abstract boolean d();

    public abstract boolean e();

    public g<TResult> a(Executor executor, C0979b bVar) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    public <TContinuationResult> g<TContinuationResult> a(Executor executor, C0978a<TResult, TContinuationResult> aVar) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    public <TContinuationResult> g<TContinuationResult> a(Executor executor, f<TResult, TContinuationResult> fVar) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }
}
