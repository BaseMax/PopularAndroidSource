package c.c.a.h.b;

import d.b.c;
import d.b.h;
import okhttp3.logging.HttpLoggingInterceptor;

/* renamed from: c.c.a.h.b.eb  reason: case insensitive filesystem */
/* compiled from: NetworkModule_ProvideHttpLoggingInterceptorFactory */
public final class C0601eb implements c<HttpLoggingInterceptor> {

    /* renamed from: a  reason: collision with root package name */
    public final Ya f5974a;

    public C0601eb(Ya ya) {
        this.f5974a = ya;
    }

    public static C0601eb a(Ya ya) {
        return new C0601eb(ya);
    }

    public static HttpLoggingInterceptor b(Ya ya) {
        return c(ya);
    }

    public static HttpLoggingInterceptor c(Ya ya) {
        HttpLoggingInterceptor b2 = ya.b();
        h.a(b2, "Cannot return null from a non-@Nullable @Provides method");
        return b2;
    }

    public HttpLoggingInterceptor get() {
        return b(this.f5974a);
    }
}
