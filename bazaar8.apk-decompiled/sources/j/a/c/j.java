package j.a.c;

import j.D;
import j.L;
import java.net.Proxy;

/* compiled from: RequestLine */
public final class j {
    public static String a(L l2, Proxy.Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(l2.e());
        sb.append(' ');
        if (b(l2, type)) {
            sb.append(l2.g());
        } else {
            sb.append(a(l2.g()));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }

    public static boolean b(L l2, Proxy.Type type) {
        return !l2.d() && type == Proxy.Type.HTTP;
    }

    public static String a(D d2) {
        String c2 = d2.c();
        String e2 = d2.e();
        if (e2 == null) {
            return c2;
        }
        return c2 + '?' + e2;
    }
}
