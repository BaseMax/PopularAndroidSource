package l;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;
import l.C1159c;

/* compiled from: ExecutorCallAdapterFactory */
public final class q extends C1159c.a {

    /* renamed from: a  reason: collision with root package name */
    public final Executor f15927a;

    /* compiled from: ExecutorCallAdapterFactory */
    static final class a<T> implements C1158b<T> {

        /* renamed from: a  reason: collision with root package name */
        public final Executor f15928a;

        /* renamed from: b  reason: collision with root package name */
        public final C1158b<T> f15929b;

        public a(Executor executor, C1158b<T> bVar) {
            this.f15928a = executor;
            this.f15929b = bVar;
        }

        public void a(C1160d<T> dVar) {
            H.a(dVar, "callback == null");
            this.f15929b.a(new p(this, dVar));
        }

        public void cancel() {
            this.f15929b.cancel();
        }

        public D<T> execute() {
            return this.f15929b.execute();
        }

        public boolean m() {
            return this.f15929b.m();
        }

        public C1158b<T> clone() {
            return new a(this.f15928a, this.f15929b.clone());
        }
    }

    public q(Executor executor) {
        this.f15927a = executor;
    }

    public C1159c<?, ?> a(Type type, Annotation[] annotationArr, F f2) {
        if (C1159c.a.a(type) != C1158b.class) {
            return null;
        }
        return new m(this, H.b(type));
    }
}
