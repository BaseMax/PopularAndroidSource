package l;

import j.C1142i;
import j.P;
import j.S;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

/* compiled from: HttpServiceMethod */
public final class r<ResponseT, ReturnT> extends G<ReturnT> {

    /* renamed from: a  reason: collision with root package name */
    public final C f15930a;

    /* renamed from: b  reason: collision with root package name */
    public final C1142i.a f15931b;

    /* renamed from: c  reason: collision with root package name */
    public final C1159c<ResponseT, ReturnT> f15932c;

    /* renamed from: d  reason: collision with root package name */
    public final j<S, ResponseT> f15933d;

    public r(C c2, C1142i.a aVar, C1159c<ResponseT, ReturnT> cVar, j<S, ResponseT> jVar) {
        this.f15930a = c2;
        this.f15931b = aVar;
        this.f15932c = cVar;
        this.f15933d = jVar;
    }

    public static <ResponseT, ReturnT> r<ResponseT, ReturnT> a(F f2, Method method, C c2) {
        C1159c b2 = b(f2, method);
        Type a2 = b2.a();
        if (a2 == D.class || a2 == P.class) {
            throw H.a(method, "'" + H.c(a2).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
        } else if (!c2.f15843c.equals("HEAD") || Void.class.equals(a2)) {
            return new r<>(c2, f2.f15871b, b2, a(f2, method, a2));
        } else {
            throw H.a(method, "HEAD method must use Void as response type.", new Object[0]);
        }
    }

    public static <ResponseT, ReturnT> C1159c<ResponseT, ReturnT> b(F f2, Method method) {
        Type genericReturnType = method.getGenericReturnType();
        try {
            return f2.a(genericReturnType, method.getAnnotations());
        } catch (RuntimeException e2) {
            throw H.a(method, (Throwable) e2, "Unable to create call adapter for %s", genericReturnType);
        }
    }

    public static <ResponseT> j<S, ResponseT> a(F f2, Method method, Type type) {
        try {
            return f2.b(type, method.getAnnotations());
        } catch (RuntimeException e2) {
            throw H.a(method, (Throwable) e2, "Unable to create converter for %s", type);
        }
    }

    public ReturnT a(Object[] objArr) {
        return this.f15932c.a(new v(this.f15930a, objArr, this.f15931b, this.f15933d));
    }
}
