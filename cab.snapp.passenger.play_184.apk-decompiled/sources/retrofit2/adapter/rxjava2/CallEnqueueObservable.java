package retrofit2.adapter.rxjava2;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.g.a;
import io.reactivex.z;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

final class CallEnqueueObservable<T> extends z<Response<T>> {
    private final Call<T> originalCall;

    static final class CallCallback<T> implements c, Callback<T> {
        private final Call<?> call;
        private volatile boolean disposed;
        private final ag<? super Response<T>> observer;
        boolean terminated = false;

        CallCallback(Call<?> call2, ag<? super Response<T>> agVar) {
            this.call = call2;
            this.observer = agVar;
        }

        public final void onResponse(Call<T> call2, Response<T> response) {
            if (!this.disposed) {
                try {
                    this.observer.onNext(response);
                    if (!this.disposed) {
                        this.terminated = true;
                        this.observer.onComplete();
                    }
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    a.onError(new io.reactivex.c.a(th, th));
                }
            }
        }

        public final void onFailure(Call<T> call2, Throwable th) {
            if (!call2.isCanceled()) {
                try {
                    this.observer.onError(th);
                } catch (Throwable th2) {
                    b.throwIfFatal(th2);
                    a.onError(new io.reactivex.c.a(th, th2));
                }
            }
        }

        public final void dispose() {
            this.disposed = true;
            this.call.cancel();
        }

        public final boolean isDisposed() {
            return this.disposed;
        }
    }

    CallEnqueueObservable(Call<T> call) {
        this.originalCall = call;
    }

    public final void subscribeActual(ag<? super Response<T>> agVar) {
        Call<T> clone = this.originalCall.clone();
        CallCallback callCallback = new CallCallback(clone, agVar);
        agVar.onSubscribe(callCallback);
        if (!callCallback.isDisposed()) {
            clone.enqueue(callCallback);
        }
    }
}
