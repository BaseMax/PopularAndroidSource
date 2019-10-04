package io.reactivex.internal.operators.flowable;

import io.reactivex.ah;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

public final class FlowableInternalHelper {

    public enum RequestMax implements io.reactivex.e.g<org.b.d> {
        ;

        private RequestMax(String str) {
        }

        public final void accept(org.b.d dVar) throws Exception {
            dVar.request(Long.MAX_VALUE);
        }
    }

    static final class a<T> implements Callable<io.reactivex.d.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.j<T> f7902a;

        /* renamed from: b  reason: collision with root package name */
        private final int f7903b;

        a(io.reactivex.j<T> jVar, int i) {
            this.f7902a = jVar;
            this.f7903b = i;
        }

        public final io.reactivex.d.a<T> call() {
            return this.f7902a.replay(this.f7903b);
        }
    }

    static final class b<T> implements Callable<io.reactivex.d.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.j<T> f7904a;

        /* renamed from: b  reason: collision with root package name */
        private final int f7905b;
        private final long c;
        private final TimeUnit d;
        private final ah e;

        b(io.reactivex.j<T> jVar, int i, long j, TimeUnit timeUnit, ah ahVar) {
            this.f7904a = jVar;
            this.f7905b = i;
            this.c = j;
            this.d = timeUnit;
            this.e = ahVar;
        }

        public final io.reactivex.d.a<T> call() {
            return this.f7904a.replay(this.f7905b, this.c, this.d, this.e);
        }
    }

    static final class c<T, U> implements io.reactivex.e.h<T, org.b.b<U>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.e.h<? super T, ? extends Iterable<? extends U>> f7906a;

        c(io.reactivex.e.h<? super T, ? extends Iterable<? extends U>> hVar) {
            this.f7906a = hVar;
        }

        public final org.b.b<U> apply(T t) throws Exception {
            return new bj((Iterable) io.reactivex.internal.a.b.requireNonNull(this.f7906a.apply(t), "The mapper returned a null Iterable"));
        }
    }

    static final class d<U, R, T> implements io.reactivex.e.h<U, R> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.e.c<? super T, ? super U, ? extends R> f7907a;

        /* renamed from: b  reason: collision with root package name */
        private final T f7908b;

        d(io.reactivex.e.c<? super T, ? super U, ? extends R> cVar, T t) {
            this.f7907a = cVar;
            this.f7908b = t;
        }

        public final R apply(U u) throws Exception {
            return this.f7907a.apply(this.f7908b, u);
        }
    }

    static final class e<T, R, U> implements io.reactivex.e.h<T, org.b.b<R>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.e.c<? super T, ? super U, ? extends R> f7909a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.e.h<? super T, ? extends org.b.b<? extends U>> f7910b;

        e(io.reactivex.e.c<? super T, ? super U, ? extends R> cVar, io.reactivex.e.h<? super T, ? extends org.b.b<? extends U>> hVar) {
            this.f7909a = cVar;
            this.f7910b = hVar;
        }

        public final org.b.b<R> apply(T t) throws Exception {
            return new cc((org.b.b) io.reactivex.internal.a.b.requireNonNull(this.f7910b.apply(t), "The mapper returned a null Publisher"), new d(this.f7909a, t));
        }
    }

    static final class f<T, U> implements io.reactivex.e.h<T, org.b.b<T>> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.e.h<? super T, ? extends org.b.b<U>> f7911a;

        f(io.reactivex.e.h<? super T, ? extends org.b.b<U>> hVar) {
            this.f7911a = hVar;
        }

        public final org.b.b<T> apply(T t) throws Exception {
            return new ef((org.b.b) io.reactivex.internal.a.b.requireNonNull(this.f7911a.apply(t), "The itemDelay returned a null Publisher"), 1).map(io.reactivex.internal.a.a.justFunction(t)).defaultIfEmpty(t);
        }
    }

    static final class g<T> implements Callable<io.reactivex.d.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.j<T> f7912a;

        g(io.reactivex.j<T> jVar) {
            this.f7912a = jVar;
        }

        public final io.reactivex.d.a<T> call() {
            return this.f7912a.replay();
        }
    }

    static final class h<T, R> implements io.reactivex.e.h<io.reactivex.j<T>, org.b.b<R>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.e.h<? super io.reactivex.j<T>, ? extends org.b.b<R>> f7913a;

        /* renamed from: b  reason: collision with root package name */
        private final ah f7914b;

        h(io.reactivex.e.h<? super io.reactivex.j<T>, ? extends org.b.b<R>> hVar, ah ahVar) {
            this.f7913a = hVar;
            this.f7914b = ahVar;
        }

        public final org.b.b<R> apply(io.reactivex.j<T> jVar) throws Exception {
            return io.reactivex.j.fromPublisher((org.b.b) io.reactivex.internal.a.b.requireNonNull(this.f7913a.apply(jVar), "The selector returned a null Publisher")).observeOn(this.f7914b);
        }
    }

    static final class i<T, S> implements io.reactivex.e.c<S, io.reactivex.i<T>, S> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.e.b<S, io.reactivex.i<T>> f7915a;

        i(io.reactivex.e.b<S, io.reactivex.i<T>> bVar) {
            this.f7915a = bVar;
        }

        public final S apply(S s, io.reactivex.i<T> iVar) throws Exception {
            this.f7915a.accept(s, iVar);
            return s;
        }
    }

    static final class j<T, S> implements io.reactivex.e.c<S, io.reactivex.i<T>, S> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.e.g<io.reactivex.i<T>> f7916a;

        j(io.reactivex.e.g<io.reactivex.i<T>> gVar) {
            this.f7916a = gVar;
        }

        public final S apply(S s, io.reactivex.i<T> iVar) throws Exception {
            this.f7916a.accept(iVar);
            return s;
        }
    }

    static final class k<T> implements io.reactivex.e.a {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<T> f7917a;

        k(org.b.c<T> cVar) {
            this.f7917a = cVar;
        }

        public final void run() throws Exception {
            this.f7917a.onComplete();
        }
    }

    static final class l<T> implements io.reactivex.e.g<Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<T> f7918a;

        l(org.b.c<T> cVar) {
            this.f7918a = cVar;
        }

        public final void accept(Throwable th) throws Exception {
            this.f7918a.onError(th);
        }
    }

    static final class m<T> implements io.reactivex.e.g<T> {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<T> f7919a;

        m(org.b.c<T> cVar) {
            this.f7919a = cVar;
        }

        public final void accept(T t) throws Exception {
            this.f7919a.onNext(t);
        }
    }

    static final class n<T> implements Callable<io.reactivex.d.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.j<T> f7920a;

        /* renamed from: b  reason: collision with root package name */
        private final long f7921b;
        private final TimeUnit c;
        private final ah d;

        n(io.reactivex.j<T> jVar, long j, TimeUnit timeUnit, ah ahVar) {
            this.f7920a = jVar;
            this.f7921b = j;
            this.c = timeUnit;
            this.d = ahVar;
        }

        public final io.reactivex.d.a<T> call() {
            return this.f7920a.replay(this.f7921b, this.c, this.d);
        }
    }

    static final class o<T, R> implements io.reactivex.e.h<List<org.b.b<? extends T>>, org.b.b<? extends R>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.e.h<? super Object[], ? extends R> f7922a;

        o(io.reactivex.e.h<? super Object[], ? extends R> hVar) {
            this.f7922a = hVar;
        }

        public final org.b.b<? extends R> apply(List<org.b.b<? extends T>> list) {
            return io.reactivex.j.zipIterable(list, this.f7922a, false, io.reactivex.j.bufferSize());
        }
    }

    private FlowableInternalHelper() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, S> io.reactivex.e.c<S, io.reactivex.i<T>, S> simpleGenerator(io.reactivex.e.g<io.reactivex.i<T>> gVar) {
        return new j(gVar);
    }

    public static <T, S> io.reactivex.e.c<S, io.reactivex.i<T>, S> simpleBiGenerator(io.reactivex.e.b<S, io.reactivex.i<T>> bVar) {
        return new i(bVar);
    }

    public static <T, U> io.reactivex.e.h<T, org.b.b<T>> itemDelay(io.reactivex.e.h<? super T, ? extends org.b.b<U>> hVar) {
        return new f(hVar);
    }

    public static <T> io.reactivex.e.g<T> subscriberOnNext(org.b.c<T> cVar) {
        return new m(cVar);
    }

    public static <T> io.reactivex.e.g<Throwable> subscriberOnError(org.b.c<T> cVar) {
        return new l(cVar);
    }

    public static <T> io.reactivex.e.a subscriberOnComplete(org.b.c<T> cVar) {
        return new k(cVar);
    }

    public static <T, U, R> io.reactivex.e.h<T, org.b.b<R>> flatMapWithCombiner(io.reactivex.e.h<? super T, ? extends org.b.b<? extends U>> hVar, io.reactivex.e.c<? super T, ? super U, ? extends R> cVar) {
        return new e(cVar, hVar);
    }

    public static <T, U> io.reactivex.e.h<T, org.b.b<U>> flatMapIntoIterable(io.reactivex.e.h<? super T, ? extends Iterable<? extends U>> hVar) {
        return new c(hVar);
    }

    public static <T> Callable<io.reactivex.d.a<T>> replayCallable(io.reactivex.j<T> jVar) {
        return new g(jVar);
    }

    public static <T> Callable<io.reactivex.d.a<T>> replayCallable(io.reactivex.j<T> jVar, int i2) {
        return new a(jVar, i2);
    }

    public static <T> Callable<io.reactivex.d.a<T>> replayCallable(io.reactivex.j<T> jVar, int i2, long j2, TimeUnit timeUnit, ah ahVar) {
        b bVar = new b(jVar, i2, j2, timeUnit, ahVar);
        return bVar;
    }

    public static <T> Callable<io.reactivex.d.a<T>> replayCallable(io.reactivex.j<T> jVar, long j2, TimeUnit timeUnit, ah ahVar) {
        n nVar = new n(jVar, j2, timeUnit, ahVar);
        return nVar;
    }

    public static <T, R> io.reactivex.e.h<io.reactivex.j<T>, org.b.b<R>> replayFunction(io.reactivex.e.h<? super io.reactivex.j<T>, ? extends org.b.b<R>> hVar, ah ahVar) {
        return new h(hVar, ahVar);
    }

    public static <T, R> io.reactivex.e.h<List<org.b.b<? extends T>>, org.b.b<? extends R>> zipIterable(io.reactivex.e.h<? super Object[], ? extends R> hVar) {
        return new o(hVar);
    }
}
