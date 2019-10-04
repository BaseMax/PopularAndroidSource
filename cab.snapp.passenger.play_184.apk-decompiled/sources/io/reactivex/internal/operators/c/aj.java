package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.EmptyComponent;

public final class aj<T> extends a<T, T> {

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        ag<? super T> f7128a;

        /* renamed from: b  reason: collision with root package name */
        c f7129b;

        a(ag<? super T> agVar) {
            this.f7128a = agVar;
        }

        public final void dispose() {
            c cVar = this.f7129b;
            this.f7129b = EmptyComponent.INSTANCE;
            this.f7128a = EmptyComponent.asObserver();
            cVar.dispose();
        }

        public final boolean isDisposed() {
            return this.f7129b.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f7129b, cVar)) {
                this.f7129b = cVar;
                this.f7128a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            this.f7128a.onNext(t);
        }

        public final void onError(Throwable th) {
            ag<? super T> agVar = this.f7128a;
            this.f7129b = EmptyComponent.INSTANCE;
            this.f7128a = EmptyComponent.asObserver();
            agVar.onError(th);
        }

        public final void onComplete() {
            ag<? super T> agVar = this.f7128a;
            this.f7129b = EmptyComponent.INSTANCE;
            this.f7128a = EmptyComponent.asObserver();
            agVar.onComplete();
        }
    }

    public aj(ae<T> aeVar) {
        super(aeVar);
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar));
    }
}
