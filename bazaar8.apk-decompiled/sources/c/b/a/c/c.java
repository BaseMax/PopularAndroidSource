package c.b.a.c;

import java.nio.charset.Charset;
import java.security.MessageDigest;

/* compiled from: Key */
public interface c {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f4046a = Charset.forName("UTF-8");

    void a(MessageDigest messageDigest);

    boolean equals(Object obj);

    int hashCode();
}
