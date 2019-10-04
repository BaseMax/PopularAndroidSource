package retrofit2.adapter.rxjava2;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.g.a;
import io.reactivex.z;
import retrofit2.Response;

final class BodyObservable<T> extends z<T> {
    private final z<Response<T>> upstream;

    static class BodyObserver<R> implements ag<Response<R>> {
        private final ag<? super R> observer;
        private boolean terminated;

        BodyObserver(ag<? super R> agVar) {
            this.observer = agVar;
        }

        public void onSubscribe(c cVar) {
            this.observer.onSubscribe(cVar);
        }

        public void onNext(Response<R> response) {
            if (response.isSuccessful()) {
                this.observer.onNext(response.body());
                return;
            }
            this.terminated = true;
            HttpException httpException = new HttpException(response);
            try {
                this.observer.onError(httpException);
            } catch (Throwable th) {
                b.throwIfFatal(th);
                a.onError(new io.reactivex.c.a(httpException, th));
            }
        }

        public void onComplete() {
            if (!this.terminated) {
                this.observer.onComplete();
            }
        }

        public void onError(Throwable th) {
            if (!this.terminated) {
                this.observer.onError(th);
                return;
            }
            AssertionError assertionError = new AssertionError("This should never happen! Report as a bug with the full stacktrace.");
            assertionError.initCause(th);
            a.onError(assertionError);
        }
    }

    BodyObservable(z<Response<T>> zVar) {
        this.upstream = zVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.upstream.subscribe(new BodyObserver(agVar));
    }
}
