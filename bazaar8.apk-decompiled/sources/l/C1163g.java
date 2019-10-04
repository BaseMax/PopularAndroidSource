package l;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.CompletableFuture;
import l.C1159c;

/* renamed from: l.g  reason: case insensitive filesystem */
/* compiled from: CompletableFutureCallAdapterFactory */
public final class C1163g extends C1159c.a {

    /* renamed from: a  reason: collision with root package name */
    public static final C1159c.a f15909a = new C1163g();

    /* renamed from: l.g$a */
    /* compiled from: CompletableFutureCallAdapterFactory */
    private static final class a<R> implements C1159c<R, CompletableFuture<R>> {

        /* renamed from: a  reason: collision with root package name */
        public final Type f15910a;

        public a(Type type) {
            this.f15910a = type;
        }

        public Type a() {
            return this.f15910a;
        }

        public CompletableFuture<R> a(C1158b<R> bVar) {
            C1161e eVar = new C1161e(this, bVar);
            bVar.a(new C1162f(this, eVar));
            return eVar;
        }
    }

    /* renamed from: l.g$b */
    /* compiled from: CompletableFutureCallAdapterFactory */
    private static final class b<R> implements C1159c<R, CompletableFuture<D<R>>> {

        /* renamed from: a  reason: collision with root package name */
        public final Type f15911a;

        public b(Type type) {
            this.f15911a = type;
        }

        public Type a() {
            return this.f15911a;
        }

        public CompletableFuture<D<R>> a(C1158b<R> bVar) {
            C1164h hVar = new C1164h(this, bVar);
            bVar.a(new i(this, hVar));
            return hVar;
        }
    }

    public C1159c<?, ?> a(Type type, Annotation[] annotationArr, F f2) {
        if (C1159c.a.a(type) != CompletableFuture.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            Type a2 = C1159c.a.a(0, (ParameterizedType) type);
            if (C1159c.a.a(a2) != D.class) {
                return new a(a2);
            }
            if (a2 instanceof ParameterizedType) {
                return new b(C1159c.a.a(0, (ParameterizedType) a2));
            }
            throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
        }
        throw new IllegalStateException("CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>");
    }
}
