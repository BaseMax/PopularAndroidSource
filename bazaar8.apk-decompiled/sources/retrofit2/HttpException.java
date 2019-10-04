package retrofit2;

import l.D;
import l.H;

public class HttpException extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    public final transient D<?> f16002a;
    public final int code;
    public final String message;

    public HttpException(D<?> d2) {
        super(a(d2));
        this.code = d2.b();
        this.message = d2.e();
        this.f16002a = d2;
    }

    public static String a(D<?> d2) {
        H.a(d2, "response == null");
        return "HTTP " + d2.b() + " " + d2.e();
    }

    public D<?> a() {
        return this.f16002a;
    }
}
