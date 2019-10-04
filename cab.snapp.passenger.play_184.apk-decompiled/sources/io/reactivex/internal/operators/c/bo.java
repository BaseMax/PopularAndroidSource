package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ah;
import io.reactivex.z;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

public final class bo {

    static final class a<T> implements Callable<io.reactivex.f.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final z<T> f7219a;

        /* renamed from: b  reason: collision with root package name */
        private final int f7220b;

        a(z<T> zVar, int i) {
            this.f7219a = zVar;
            this.f7220b = i;
        }

        public final io.reactivex.f.a<T> call() {
            return this.f7219a.replay(this.f7220b);
        }
    }

    static final class b<T> implements Callable<io.reactivex.f.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final z<T> f7221a;

        /* renamed from: b  reason: collision with root package name */
        private final int f7222b;
        private final long c;
        private final TimeUnit d;
        private final ah e;

        b(z<T> zVar, int i, long j, TimeUnit timeUnit, ah ahVar) {
            this.f7221a = zVar;
            this.f7222b = i;
            this.c = j;
            this.d = timeUnit;
            this.e = ahVar;
        }

        public final io.reactivex.f.a<T> call() {
            return this.f7221a.replay(this.f7222b, this.c, this.d, this.e);
        }
    }

    static final class c<T, U> implements io.reactivex.e.h<T, ae<U>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.e.h<? super T, ? extends Iterable<? extends U>> f7223a;

        c(io.reactivex.e.h<? super T, ? extends Iterable<? extends U>> hVar) {
            this.f7223a = hVar;
        }

        public final ae<U> apply(T t) throws Exception {
            return new bf((Iterable) io.reactivex.internal.a.b.requireNonNull(this.f7223a.apply(t), "The mapper returned a null Iterable"));
        }
    }

    static final class d<U, R, T> implements io.reactivex.e.h<U, R> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.e.c<? super T, ? super U, ? extends R> f7224a;

        /* renamed from: b  reason: collision with root package name */
        private final T f7225b;

        d(io.reactivex.e.c<? super T, ? super U, ? extends R> cVar, T t) {
            this.f7224a = cVar;
            this.f7225b = t;
        }

        public final R apply(U u) throws Exception {
            return this.f7224a.apply(this.f7225b, u);
        }
    }

    static final class e<T, R, U> implements io.reactivex.e.h<T, ae<R>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.e.c<? super T, ? super U, ? extends R> f7226a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.e.h<? super T, ? extends ae<? extends U>> f7227b;

        e(io.reactivex.e.c<? super T, ? super U, ? extends R> cVar, io.reactivex.e.h<? super T, ? extends ae<? extends U>> hVar) {
            this.f7226a = cVar;
            this.f7227b = hVar;
        }

        public final ae<R> apply(T t) throws Exception {
            return new bw((ae) io.reactivex.internal.a.b.requireNonNull(this.f7227b.apply(t), "The mapper returned a null ObservableSource"), new d(this.f7226a, t));
        }
    }

    static final class f<T, U> implements io.reactivex.e.h<T, ae<T>> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.e.h<? super T, ? extends ae<U>> f7228a;

        f(io.reactivex.e.h<? super T, ? extends ae<U>> hVar) {
            this.f7228a = hVar;
        }

        public final ae<T> apply(T t) throws Exception {
            return new dp((ae) io.reactivex.internal.a.b.requireNonNull(this.f7228a.apply(t), "The itemDelay returned a null ObservableSource"), 1).map(io.reactivex.internal.a.a.justFunction(t)).defaultIfEmpty(t);
        }
    }

    static final class g<T> implements io.reactivex.e.a {

        /* renamed from: a  reason: collision with root package name */
        final ag<T> f7229a;

        g(ag<T> agVar) {
            this.f7229a = agVar;
        }

        public final void run() throws Exception {
            this.f7229a.onComplete();
        }
    }

    static final class h<T> implements io.reactivex.e.g<Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final ag<T> f7230a;

        h(ag<T> agVar) {
            this.f7230a = agVar;
        }

        public final void accept(Throwable th) throws Exception {
            this.f7230a.onError(th);
        }
    }

    static final class i<T> implements io.reactivex.e.g<T> {

        /* renamed from: a  reason: collision with root package name */
        final ag<T> f7231a;

        i(ag<T> agVar) {
            this.f7231a = agVar;
        }

        public final void accept(T t) throws Exception {
            this.f7231a.onNext(t);
        }
    }

    static final class j<T> implements Callable<io.reactivex.f.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final z<T> f7232a;

        j(z<T> zVar) {
            this.f7232a = zVar;
        }

        public final io.reactivex.f.a<T> call() {
            return this.f7232a.replay();
        }
    }

    static final class k<T, R> implements io.reactivex.e.h<z<T>, ae<R>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.e.h<? super z<T>, ? extends ae<R>> f7233a;

        /* renamed from: b  reason: collision with root package name */
        private final ah f7234b;

        k(io.reactivex.e.h<? super z<T>, ? extends ae<R>> hVar, ah ahVar) {
            this.f7233a = hVar;
            this.f7234b = ahVar;
        }

        public final ae<R> apply(z<T> zVar) throws Exception {
            return z.wrap((ae) io.reactivex.internal.a.b.requireNonNull(this.f7233a.apply(zVar), "The selector returned a null ObservableSource")).observeOn(this.f7234b);
        }
    }

    static final class l<T, S> implements io.reactivex.e.c<S, io.reactivex.i<T>, S> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.e.b<S, io.reactivex.i<T>> f7235a;

        l(io.reactivex.e.b<S, io.reactivex.i<T>> bVar) {
            this.f7235a = bVar;
        }

        public final S apply(S s, io.reactivex.i<T> iVar) throws Exception {
            this.f7235a.accept(s, iVar);
            return s;
        }
    }

    static final class m<T, S> implements io.reactivex.e.c<S, io.reactivex.i<T>, S> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.e.g<io.reactivex.i<T>> f7236a;

        m(io.reactivex.e.g<io.reactivex.i<T>> gVar) {
            this.f7236a = gVar;
        }

        public final S apply(S s, io.reactivex.i<T> iVar) throws Exception {
            this.f7236a.accept(iVar);
            return s;
        }
    }

    static final class n<T> implements Callable<io.reactivex.f.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final z<T> f7237a;

        /* renamed from: b  reason: collision with root package name */
        private final long f7238b;
        private final TimeUnit c;
        private final ah d;

        n(z<T> zVar, long j, TimeUnit timeUnit, ah ahVar) {
            this.f7237a = zVar;
            this.f7238b = j;
            this.c = timeUnit;
            this.d = ahVar;
        }

        public final io.reactivex.f.a<T> call() {
            return this.f7237a.replay(this.f7238b, this.c, this.d);
        }
    }

    static final class o<T, R> implements io.reactivex.e.h<List<ae<? extends T>>, ae<? extends R>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.e.h<? super Object[], ? extends R> f7239a;

        o(io.reactivex.e.h<? super Object[], ? extends R> hVar) {
            this.f7239a = hVar;
        }

        public final ae<? extends R> apply(List<ae<? extends T>> list) {
            return z.zipIterable(list, this.f7239a, false, z.bufferSize());
        }
    }

    private bo() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, S> io.reactivex.e.c<S, io.reactivex.i<T>, S> simpleGenerator(io.reactivex.e.g<io.reactivex.i<T>> gVar) {
        return new m(gVar);
    }

    public static <T, S> io.reactivex.e.c<S, io.reactivex.i<T>, S> simpleBiGenerator(io.reactivex.e.b<S, io.reactivex.i<T>> bVar) {
        return new l(bVar);
    }

    public static <T, U> io.reactivex.e.h<T, ae<T>> itemDelay(io.reactivex.e.h<? super T, ? extends ae<U>> hVar) {
        return new f(hVar);
    }

    public static <T> io.reactivex.e.g<T> observerOnNext(ag<T> agVar) {
        return new i(agVar);
    }

    public static <T> io.reactivex.e.g<Throwable> observerOnError(ag<T> agVar) {
        return new h(agVar);
    }

    public static <T> io.reactivex.e.a observerOnComplete(ag<T> agVar) {
        return new g(agVar);
    }

    public static <T, U, R> io.reactivex.e.h<T, ae<R>> flatMapWithCombiner(io.reactivex.e.h<? super T, ? extends ae<? extends U>> hVar, io.reactivex.e.c<? super T, ? super U, ? extends R> cVar) {
        return new e(cVar, hVar);
    }

    public static <T, U> io.reactivex.e.h<T, ae<U>> flatMapIntoIterable(io.reactivex.e.h<? super T, ? extends Iterable<? extends U>> hVar) {
        return new c(hVar);
    }

    public static <T> Callable<io.reactivex.f.a<T>> replayCallable(z<T> zVar) {
        return new j(zVar);
    }

    public static <T> Callable<io.reactivex.f.a<T>> replayCallable(z<T> zVar, int i2) {
        return new a(zVar, i2);
    }

    public static <T> Callable<io.reactivex.f.a<T>> replayCallable(z<T> zVar, int i2, long j2, TimeUnit timeUnit, ah ahVar) {
        b bVar = new b(zVar, i2, j2, timeUnit, ahVar);
        return bVar;
    }

    public static <T> Callable<io.reactivex.f.a<T>> replayCallable(z<T> zVar, long j2, TimeUnit timeUnit, ah ahVar) {
        n nVar = new n(zVar, j2, timeUnit, ahVar);
        return nVar;
    }

    public static <T, R> io.reactivex.e.h<z<T>, ae<R>> replayFunction(io.reactivex.e.h<? super z<T>, ? extends ae<R>> hVar, ah ahVar) {
        return new k(hVar, ahVar);
    }

    public static <T, R> io.reactivex.e.h<List<ae<? extends T>>, ae<? extends R>> zipIterable(io.reactivex.e.h<? super Object[], ? extends R> hVar) {
        return new o(hVar);
    }
}
