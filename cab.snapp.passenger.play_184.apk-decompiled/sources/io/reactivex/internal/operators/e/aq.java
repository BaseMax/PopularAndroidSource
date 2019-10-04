package io.reactivex.internal.operators.e;

import io.reactivex.ah;
import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.f;
import java.util.concurrent.atomic.AtomicReference;

public final class aq<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<? extends T> f7768a;

    /* renamed from: b  reason: collision with root package name */
    final ah f7769b;

    static final class a<T> extends AtomicReference<c> implements al<T>, c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7770a;

        /* renamed from: b  reason: collision with root package name */
        final f f7771b = new f();
        final ao<? extends T> c;

        a(al<? super T> alVar, ao<? extends T> aoVar) {
            this.f7770a = alVar;
            this.c = aoVar;
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onSuccess(T t) {
            this.f7770a.onSuccess(t);
        }

        public final void onError(Throwable th) {
            this.f7770a.onError(th);
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
            this.f7771b.dispose();
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void run() {
            this.c.subscribe(this);
        }
    }

    public aq(ao<? extends T> aoVar, ah ahVar) {
        this.f7768a = aoVar;
        this.f7769b = ahVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        a aVar = new a(alVar, this.f7768a);
        alVar.onSubscribe(aVar);
        aVar.f7771b.replace(this.f7769b.scheduleDirect(aVar));
    }
}
