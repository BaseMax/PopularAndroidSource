package c.b.a.c.b.b;

import c.b.a.c.b.b.l;
import c.b.a.i.a.d;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* compiled from: SafeKeyGenerator */
class k implements d.a<l.a> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ l f3920a;

    public k(l lVar) {
        this.f3920a = lVar;
    }

    public l.a a() {
        try {
            return new l.a(MessageDigest.getInstance("SHA-256"));
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException(e2);
        }
    }
}
