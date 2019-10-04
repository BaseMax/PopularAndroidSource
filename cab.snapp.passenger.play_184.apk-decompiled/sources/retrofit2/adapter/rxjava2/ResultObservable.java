package retrofit2.adapter.rxjava2;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.g.a;
import io.reactivex.z;
import retrofit2.Response;

final class ResultObservable<T> extends z<Result<T>> {
    private final z<Response<T>> upstream;

    static class ResultObserver<R> implements ag<Response<R>> {
        private final ag<? super Result<R>> observer;

        ResultObserver(ag<? super Result<R>> agVar) {
            this.observer = agVar;
        }

        public void onSubscribe(c cVar) {
            this.observer.onSubscribe(cVar);
        }

        public void onNext(Response<R> response) {
            this.observer.onNext(Result.response(response));
        }

        public void onError(Throwable th) {
            try {
                this.observer.onNext(Result.error(th));
                this.observer.onComplete();
            } catch (Throwable th2) {
                b.throwIfFatal(th2);
                a.onError(new io.reactivex.c.a(th, th2));
            }
        }

        public void onComplete() {
            this.observer.onComplete();
        }
    }

    ResultObservable(z<Response<T>> zVar) {
        this.upstream = zVar;
    }

    public final void subscribeActual(ag<? super Result<T>> agVar) {
        this.upstream.subscribe(new ResultObserver(agVar));
    }
}
