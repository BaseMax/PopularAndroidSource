package io.reactivex.internal.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public final class a {
    public static final io.reactivex.e.a EMPTY_ACTION = new o();
    public static final io.reactivex.e.p EMPTY_LONG_CONSUMER = new q();
    public static final Runnable EMPTY_RUNNABLE = new r();
    public static final io.reactivex.e.g<Throwable> ERROR_CONSUMER = new t();
    public static final io.reactivex.e.g<Throwable> ON_ERROR_MISSING = new ah();
    public static final io.reactivex.e.g<org.b.d> REQUEST_MAX = new aa();

    /* renamed from: a  reason: collision with root package name */
    static final io.reactivex.e.h<Object, Object> f6729a = new x();

    /* renamed from: b  reason: collision with root package name */
    static final io.reactivex.e.g<Object> f6730b = new p();
    static final io.reactivex.e.q<Object> c = new am();
    static final io.reactivex.e.q<Object> d = new u();
    static final Callable<Object> e = new ag();
    static final Comparator<Object> f = new ac();

    /* renamed from: io.reactivex.internal.a.a$a  reason: collision with other inner class name */
    static final class C0131a<T> implements io.reactivex.e.g<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.e.a f6731a;

        C0131a(io.reactivex.e.a aVar) {
            this.f6731a = aVar;
        }

        public final void accept(T t) throws Exception {
            this.f6731a.run();
        }
    }

    static final class aa implements io.reactivex.e.g<org.b.d> {
        aa() {
        }

        public final void accept(org.b.d dVar) throws Exception {
            dVar.request(Long.MAX_VALUE);
        }
    }

    enum ab implements Comparator<Object> {
        ;

        private ab(String str) {
        }

        public final int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    static final class ac implements Comparator<Object> {
        ac() {
        }

        public final int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    static final class ad<T> implements io.reactivex.e.a {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.e.g<? super io.reactivex.y<T>> f6733a;

        ad(io.reactivex.e.g<? super io.reactivex.y<T>> gVar) {
            this.f6733a = gVar;
        }

        public final void run() throws Exception {
            this.f6733a.accept(io.reactivex.y.createOnComplete());
        }
    }

    static final class ae<T> implements io.reactivex.e.g<Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.e.g<? super io.reactivex.y<T>> f6734a;

        ae(io.reactivex.e.g<? super io.reactivex.y<T>> gVar) {
            this.f6734a = gVar;
        }

        public final void accept(Throwable th) throws Exception {
            this.f6734a.accept(io.reactivex.y.createOnError(th));
        }
    }

    static final class af<T> implements io.reactivex.e.g<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.e.g<? super io.reactivex.y<T>> f6735a;

        af(io.reactivex.e.g<? super io.reactivex.y<T>> gVar) {
            this.f6735a = gVar;
        }

        public final void accept(T t) throws Exception {
            this.f6735a.accept(io.reactivex.y.createOnNext(t));
        }
    }

    static final class ag implements Callable<Object> {
        public final Object call() {
            return null;
        }

        ag() {
        }
    }

    static final class ah implements io.reactivex.e.g<Throwable> {
        ah() {
        }

        public final void accept(Throwable th) {
            io.reactivex.g.a.onError(new io.reactivex.c.d(th));
        }
    }

    static final class ai<T> implements io.reactivex.e.h<T, io.reactivex.i.b<T>> {

        /* renamed from: a  reason: collision with root package name */
        final TimeUnit f6736a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.ah f6737b;

        ai(TimeUnit timeUnit, io.reactivex.ah ahVar) {
            this.f6736a = timeUnit;
            this.f6737b = ahVar;
        }

        public final io.reactivex.i.b<T> apply(T t) throws Exception {
            return new io.reactivex.i.b<>(t, this.f6737b.now(this.f6736a), this.f6736a);
        }
    }

    static final class aj<K, T> implements io.reactivex.e.b<Map<K, T>, T> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.e.h<? super T, ? extends K> f6738a;

        aj(io.reactivex.e.h<? super T, ? extends K> hVar) {
            this.f6738a = hVar;
        }

        public final void accept(Map<K, T> map, T t) throws Exception {
            map.put(this.f6738a.apply(t), t);
        }
    }

    static final class ak<K, V, T> implements io.reactivex.e.b<Map<K, V>, T> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.e.h<? super T, ? extends V> f6739a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.e.h<? super T, ? extends K> f6740b;

        ak(io.reactivex.e.h<? super T, ? extends V> hVar, io.reactivex.e.h<? super T, ? extends K> hVar2) {
            this.f6739a = hVar;
            this.f6740b = hVar2;
        }

        public final void accept(Map<K, V> map, T t) throws Exception {
            map.put(this.f6740b.apply(t), this.f6739a.apply(t));
        }
    }

    static final class al<K, V, T> implements io.reactivex.e.b<Map<K, Collection<V>>, T> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.e.h<? super K, ? extends Collection<? super V>> f6741a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.e.h<? super T, ? extends V> f6742b;
        private final io.reactivex.e.h<? super T, ? extends K> c;

        al(io.reactivex.e.h<? super K, ? extends Collection<? super V>> hVar, io.reactivex.e.h<? super T, ? extends V> hVar2, io.reactivex.e.h<? super T, ? extends K> hVar3) {
            this.f6741a = hVar;
            this.f6742b = hVar2;
            this.c = hVar3;
        }

        public final void accept(Map<K, Collection<V>> map, T t) throws Exception {
            Object apply = this.c.apply(t);
            Collection collection = map.get(apply);
            if (collection == null) {
                collection = (Collection) this.f6741a.apply(apply);
                map.put(apply, collection);
            }
            collection.add(this.f6742b.apply(t));
        }
    }

    static final class am implements io.reactivex.e.q<Object> {
        public final boolean test(Object obj) {
            return true;
        }

        am() {
        }
    }

    static final class b<T1, T2, R> implements io.reactivex.e.h<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.e.c<? super T1, ? super T2, ? extends R> f6743a;

        b(io.reactivex.e.c<? super T1, ? super T2, ? extends R> cVar) {
            this.f6743a = cVar;
        }

        public final R apply(Object[] objArr) throws Exception {
            if (objArr.length == 2) {
                return this.f6743a.apply(objArr[0], objArr[1]);
            }
            throw new IllegalArgumentException("Array of size 2 expected but got " + objArr.length);
        }
    }

    static final class c<T1, T2, T3, R> implements io.reactivex.e.h<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.e.i<T1, T2, T3, R> f6744a;

        c(io.reactivex.e.i<T1, T2, T3, R> iVar) {
            this.f6744a = iVar;
        }

        public final R apply(Object[] objArr) throws Exception {
            if (objArr.length == 3) {
                return this.f6744a.apply(objArr[0], objArr[1], objArr[2]);
            }
            throw new IllegalArgumentException("Array of size 3 expected but got " + objArr.length);
        }
    }

    static final class d<T1, T2, T3, T4, R> implements io.reactivex.e.h<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.e.j<T1, T2, T3, T4, R> f6745a;

        d(io.reactivex.e.j<T1, T2, T3, T4, R> jVar) {
            this.f6745a = jVar;
        }

        public final R apply(Object[] objArr) throws Exception {
            if (objArr.length == 4) {
                return this.f6745a.apply(objArr[0], objArr[1], objArr[2], objArr[3]);
            }
            throw new IllegalArgumentException("Array of size 4 expected but got " + objArr.length);
        }
    }

    static final class e<T1, T2, T3, T4, T5, R> implements io.reactivex.e.h<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.e.k<T1, T2, T3, T4, T5, R> f6746a;

        e(io.reactivex.e.k<T1, T2, T3, T4, T5, R> kVar) {
            this.f6746a = kVar;
        }

        public final R apply(Object[] objArr) throws Exception {
            if (objArr.length == 5) {
                return this.f6746a.apply(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            }
            throw new IllegalArgumentException("Array of size 5 expected but got " + objArr.length);
        }
    }

    static final class f<T1, T2, T3, T4, T5, T6, R> implements io.reactivex.e.h<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.e.l<T1, T2, T3, T4, T5, T6, R> f6747a;

        f(io.reactivex.e.l<T1, T2, T3, T4, T5, T6, R> lVar) {
            this.f6747a = lVar;
        }

        public final R apply(Object[] objArr) throws Exception {
            if (objArr.length == 6) {
                return this.f6747a.apply(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
            }
            throw new IllegalArgumentException("Array of size 6 expected but got " + objArr.length);
        }
    }

    static final class g<T1, T2, T3, T4, T5, T6, T7, R> implements io.reactivex.e.h<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.e.m<T1, T2, T3, T4, T5, T6, T7, R> f6748a;

        g(io.reactivex.e.m<T1, T2, T3, T4, T5, T6, T7, R> mVar) {
            this.f6748a = mVar;
        }

        public final R apply(Object[] objArr) throws Exception {
            if (objArr.length == 7) {
                return this.f6748a.apply(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6]);
            }
            throw new IllegalArgumentException("Array of size 7 expected but got " + objArr.length);
        }
    }

    static final class h<T1, T2, T3, T4, T5, T6, T7, T8, R> implements io.reactivex.e.h<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.e.n<T1, T2, T3, T4, T5, T6, T7, T8, R> f6749a;

        h(io.reactivex.e.n<T1, T2, T3, T4, T5, T6, T7, T8, R> nVar) {
            this.f6749a = nVar;
        }

        public final R apply(Object[] objArr) throws Exception {
            if (objArr.length == 8) {
                return this.f6749a.apply(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7]);
            }
            throw new IllegalArgumentException("Array of size 8 expected but got " + objArr.length);
        }
    }

    static final class i<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> implements io.reactivex.e.h<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.e.o<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> f6750a;

        i(io.reactivex.e.o<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> oVar) {
            this.f6750a = oVar;
        }

        public final R apply(Object[] objArr) throws Exception {
            if (objArr.length == 9) {
                return this.f6750a.apply(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7], objArr[8]);
            }
            throw new IllegalArgumentException("Array of size 9 expected but got " + objArr.length);
        }
    }

    static final class j<T> implements Callable<List<T>> {

        /* renamed from: a  reason: collision with root package name */
        final int f6751a;

        j(int i) {
            this.f6751a = i;
        }

        public final List<T> call() throws Exception {
            return new ArrayList(this.f6751a);
        }
    }

    static final class k<T> implements io.reactivex.e.q<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.e.e f6752a;

        k(io.reactivex.e.e eVar) {
            this.f6752a = eVar;
        }

        public final boolean test(T t) throws Exception {
            return !this.f6752a.getAsBoolean();
        }
    }

    public static class l implements io.reactivex.e.g<org.b.d> {

        /* renamed from: a  reason: collision with root package name */
        final int f6753a;

        l(int i) {
            this.f6753a = i;
        }

        public final void accept(org.b.d dVar) throws Exception {
            dVar.request((long) this.f6753a);
        }
    }

    static final class m<T, U> implements io.reactivex.e.h<T, U> {

        /* renamed from: a  reason: collision with root package name */
        final Class<U> f6754a;

        m(Class<U> cls) {
            this.f6754a = cls;
        }

        public final U apply(T t) throws Exception {
            return this.f6754a.cast(t);
        }
    }

    static final class n<T, U> implements io.reactivex.e.q<T> {

        /* renamed from: a  reason: collision with root package name */
        final Class<U> f6755a;

        n(Class<U> cls) {
            this.f6755a = cls;
        }

        public final boolean test(T t) throws Exception {
            return this.f6755a.isInstance(t);
        }
    }

    static final class o implements io.reactivex.e.a {
        public final void run() {
        }

        public final String toString() {
            return "EmptyAction";
        }

        o() {
        }
    }

    static final class p implements io.reactivex.e.g<Object> {
        public final void accept(Object obj) {
        }

        public final String toString() {
            return "EmptyConsumer";
        }

        p() {
        }
    }

    static final class q implements io.reactivex.e.p {
        public final void accept(long j) {
        }

        q() {
        }
    }

    static final class r implements Runnable {
        public final void run() {
        }

        public final String toString() {
            return "EmptyRunnable";
        }

        r() {
        }
    }

    static final class s<T> implements io.reactivex.e.q<T> {

        /* renamed from: a  reason: collision with root package name */
        final T f6756a;

        s(T t) {
            this.f6756a = t;
        }

        public final boolean test(T t) throws Exception {
            return b.equals(t, this.f6756a);
        }
    }

    static final class t implements io.reactivex.e.g<Throwable> {
        t() {
        }

        public final void accept(Throwable th) {
            io.reactivex.g.a.onError(th);
        }
    }

    static final class u implements io.reactivex.e.q<Object> {
        public final boolean test(Object obj) {
            return false;
        }

        u() {
        }
    }

    static final class v implements io.reactivex.e.a {

        /* renamed from: a  reason: collision with root package name */
        final Future<?> f6757a;

        v(Future<?> future) {
            this.f6757a = future;
        }

        public final void run() throws Exception {
            this.f6757a.get();
        }
    }

    enum w implements Callable<Set<Object>> {
        ;

        private w(String str) {
        }

        public final Set<Object> call() throws Exception {
            return new HashSet();
        }
    }

    static final class x implements io.reactivex.e.h<Object, Object> {
        public final Object apply(Object obj) {
            return obj;
        }

        public final String toString() {
            return "IdentityFunction";
        }

        x() {
        }
    }

    static final class y<T, U> implements io.reactivex.e.h<T, U>, Callable<U> {

        /* renamed from: a  reason: collision with root package name */
        final U f6759a;

        y(U u) {
            this.f6759a = u;
        }

        public final U call() throws Exception {
            return this.f6759a;
        }

        public final U apply(T t) throws Exception {
            return this.f6759a;
        }
    }

    static final class z<T> implements io.reactivex.e.h<List<T>, List<T>> {

        /* renamed from: a  reason: collision with root package name */
        final Comparator<? super T> f6760a;

        z(Comparator<? super T> comparator) {
            this.f6760a = comparator;
        }

        public final List<T> apply(List<T> list) {
            Collections.sort(list, this.f6760a);
            return list;
        }
    }

    private a() {
        throw new IllegalStateException("No instances!");
    }

    public static <T1, T2, R> io.reactivex.e.h<Object[], R> toFunction(io.reactivex.e.c<? super T1, ? super T2, ? extends R> cVar) {
        b.requireNonNull(cVar, "f is null");
        return new b(cVar);
    }

    public static <T1, T2, T3, R> io.reactivex.e.h<Object[], R> toFunction(io.reactivex.e.i<T1, T2, T3, R> iVar) {
        b.requireNonNull(iVar, "f is null");
        return new c(iVar);
    }

    public static <T1, T2, T3, T4, R> io.reactivex.e.h<Object[], R> toFunction(io.reactivex.e.j<T1, T2, T3, T4, R> jVar) {
        b.requireNonNull(jVar, "f is null");
        return new d(jVar);
    }

    public static <T1, T2, T3, T4, T5, R> io.reactivex.e.h<Object[], R> toFunction(io.reactivex.e.k<T1, T2, T3, T4, T5, R> kVar) {
        b.requireNonNull(kVar, "f is null");
        return new e(kVar);
    }

    public static <T1, T2, T3, T4, T5, T6, R> io.reactivex.e.h<Object[], R> toFunction(io.reactivex.e.l<T1, T2, T3, T4, T5, T6, R> lVar) {
        b.requireNonNull(lVar, "f is null");
        return new f(lVar);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, R> io.reactivex.e.h<Object[], R> toFunction(io.reactivex.e.m<T1, T2, T3, T4, T5, T6, T7, R> mVar) {
        b.requireNonNull(mVar, "f is null");
        return new g(mVar);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> io.reactivex.e.h<Object[], R> toFunction(io.reactivex.e.n<T1, T2, T3, T4, T5, T6, T7, T8, R> nVar) {
        b.requireNonNull(nVar, "f is null");
        return new h(nVar);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> io.reactivex.e.h<Object[], R> toFunction(io.reactivex.e.o<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> oVar) {
        b.requireNonNull(oVar, "f is null");
        return new i(oVar);
    }

    public static <T> io.reactivex.e.h<T, T> identity() {
        return f6729a;
    }

    public static <T> io.reactivex.e.g<T> emptyConsumer() {
        return f6730b;
    }

    public static <T> io.reactivex.e.q<T> alwaysTrue() {
        return c;
    }

    public static <T> io.reactivex.e.q<T> alwaysFalse() {
        return d;
    }

    public static <T> Callable<T> nullSupplier() {
        return e;
    }

    public static <T> Comparator<T> naturalOrder() {
        return f;
    }

    public static io.reactivex.e.a futureAction(Future<?> future) {
        return new v(future);
    }

    public static <T> Callable<T> justCallable(T t2) {
        return new y(t2);
    }

    public static <T, U> io.reactivex.e.h<T, U> justFunction(U u2) {
        return new y(u2);
    }

    public static <T, U> io.reactivex.e.h<T, U> castFunction(Class<U> cls) {
        return new m(cls);
    }

    public static <T> Callable<List<T>> createArrayList(int i2) {
        return new j(i2);
    }

    public static <T> io.reactivex.e.q<T> equalsWith(T t2) {
        return new s(t2);
    }

    public static <T> Callable<Set<T>> createHashSet() {
        return w.INSTANCE;
    }

    public static <T> io.reactivex.e.g<T> notificationOnNext(io.reactivex.e.g<? super io.reactivex.y<T>> gVar) {
        return new af(gVar);
    }

    public static <T> io.reactivex.e.g<Throwable> notificationOnError(io.reactivex.e.g<? super io.reactivex.y<T>> gVar) {
        return new ae(gVar);
    }

    public static <T> io.reactivex.e.a notificationOnComplete(io.reactivex.e.g<? super io.reactivex.y<T>> gVar) {
        return new ad(gVar);
    }

    public static <T> io.reactivex.e.g<T> actionConsumer(io.reactivex.e.a aVar) {
        return new C0131a(aVar);
    }

    public static <T, U> io.reactivex.e.q<T> isInstanceOf(Class<U> cls) {
        return new n(cls);
    }

    public static <T> io.reactivex.e.q<T> predicateReverseFor(io.reactivex.e.e eVar) {
        return new k(eVar);
    }

    public static <T> io.reactivex.e.h<T, io.reactivex.i.b<T>> timestampWith(TimeUnit timeUnit, io.reactivex.ah ahVar) {
        return new ai(timeUnit, ahVar);
    }

    public static <T, K> io.reactivex.e.b<Map<K, T>, T> toMapKeySelector(io.reactivex.e.h<? super T, ? extends K> hVar) {
        return new aj(hVar);
    }

    public static <T, K, V> io.reactivex.e.b<Map<K, V>, T> toMapKeyValueSelector(io.reactivex.e.h<? super T, ? extends K> hVar, io.reactivex.e.h<? super T, ? extends V> hVar2) {
        return new ak(hVar2, hVar);
    }

    public static <T, K, V> io.reactivex.e.b<Map<K, Collection<V>>, T> toMultimapKeyValueSelector(io.reactivex.e.h<? super T, ? extends K> hVar, io.reactivex.e.h<? super T, ? extends V> hVar2, io.reactivex.e.h<? super K, ? extends Collection<? super V>> hVar3) {
        return new al(hVar3, hVar2, hVar);
    }

    public static <T> Comparator<T> naturalComparator() {
        return ab.INSTANCE;
    }

    public static <T> io.reactivex.e.h<List<T>, List<T>> listSorter(Comparator<? super T> comparator) {
        return new z(comparator);
    }

    public static <T> io.reactivex.e.g<T> boundedConsumer(int i2) {
        return new l(i2);
    }
}
