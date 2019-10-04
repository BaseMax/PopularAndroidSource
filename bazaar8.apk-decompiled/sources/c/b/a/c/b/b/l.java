package c.b.a.c.b.b;

import b.i.j.e;
import c.b.a.c.c;
import c.b.a.i.a.d;
import c.b.a.i.a.g;
import c.b.a.i.f;
import c.b.a.i.i;
import c.b.a.i.k;
import java.security.MessageDigest;

/* compiled from: SafeKeyGenerator */
public class l {

    /* renamed from: a  reason: collision with root package name */
    public final f<c, String> f3921a = new f<>(1000);

    /* renamed from: b  reason: collision with root package name */
    public final e<a> f3922b = d.b(10, new k(this));

    /* compiled from: SafeKeyGenerator */
    private static final class a implements d.c {

        /* renamed from: a  reason: collision with root package name */
        public final MessageDigest f3923a;

        /* renamed from: b  reason: collision with root package name */
        public final g f3924b = g.a();

        public a(MessageDigest messageDigest) {
            this.f3923a = messageDigest;
        }

        public g f() {
            return this.f3924b;
        }
    }

    public final String a(c cVar) {
        a a2 = this.f3922b.a();
        i.a(a2);
        a aVar = a2;
        try {
            cVar.a(aVar.f3923a);
            return k.a(aVar.f3923a.digest());
        } finally {
            this.f3922b.a(aVar);
        }
    }

    public String b(c cVar) {
        String a2;
        synchronized (this.f3921a) {
            a2 = this.f3921a.a(cVar);
        }
        if (a2 == null) {
            a2 = a(cVar);
        }
        synchronized (this.f3921a) {
            this.f3921a.b(cVar, a2);
        }
        return a2;
    }
}
