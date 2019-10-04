package retrofit2.adapter.rxjava2;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.g.a;
import io.reactivex.z;
import retrofit2.Call;
import retrofit2.Response;

final class CallExecuteObservable<T> extends z<Response<T>> {
    private final Call<T> originalCall;

    static final class CallDisposable implements c {
        private final Call<?> call;
        private volatile boolean disposed;

        CallDisposable(Call<?> call2) {
            this.call = call2;
        }

        public final void dispose() {
            this.disposed = true;
            this.call.cancel();
        }

        public final boolean isDisposed() {
            return this.disposed;
        }
    }

    CallExecuteObservable(Call<T> call) {
        this.originalCall = call;
    }

    public final void subscribeActual(ag<? super Response<T>> agVar) {
        boolean z;
        Call<T> clone = this.originalCall.clone();
        CallDisposable callDisposable = new CallDisposable(clone);
        agVar.onSubscribe(callDisposable);
        if (!callDisposable.isDisposed()) {
            try {
                Response<T> execute = clone.execute();
                if (!callDisposable.isDisposed()) {
                    agVar.onNext(execute);
                }
                if (!callDisposable.isDisposed()) {
                    try {
                        agVar.onComplete();
                    } catch (Throwable th) {
                        th = th;
                        z = true;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                z = false;
                b.throwIfFatal(th);
                if (z) {
                    a.onError(th);
                    return;
                }
                if (!callDisposable.isDisposed()) {
                    try {
                        agVar.onError(th);
                    } catch (Throwable th3) {
                        b.throwIfFatal(th3);
                        a.onError(new io.reactivex.c.a(th, th3));
                    }
                }
            }
        }
    }
}
