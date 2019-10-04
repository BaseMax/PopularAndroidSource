package c.e.a.b.d.a;

import android.accounts.Account;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import c.e.a.b.d.a.a.d;
import c.e.a.b.d.a.d;
import c.e.a.b.d.d.C0781d;
import c.e.a.b.d.d.C0782e;
import c.e.a.b.d.d.C0789l;
import c.e.a.b.d.d.r;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import java.util.Set;

public final class a<O extends d> {

    /* renamed from: a  reason: collision with root package name */
    public final C0120a<?, O> f9793a;

    /* renamed from: b  reason: collision with root package name */
    public final i<?, O> f9794b = null;

    /* renamed from: c  reason: collision with root package name */
    public final g<?> f9795c;

    /* renamed from: d  reason: collision with root package name */
    public final j<?> f9796d;

    /* renamed from: e  reason: collision with root package name */
    public final String f9797e;

    /* renamed from: c.e.a.b.d.a.a$a  reason: collision with other inner class name */
    public static abstract class C0120a<T extends f, O> extends e<T, O> {
        public abstract T a(Context context, Looper looper, C0782e eVar, O o, d.a aVar, d.b bVar);
    }

    public interface b {
    }

    public static class c<C extends b> {
    }

    public interface d {

        /* renamed from: c.e.a.b.d.a.a$d$a  reason: collision with other inner class name */
        public interface C0122a extends c, C0123d {
            Account e();
        }

        public interface b extends c {
            GoogleSignInAccount a();
        }

        public interface c extends d {
        }

        /* renamed from: c.e.a.b.d.a.a$d$d  reason: collision with other inner class name */
        public interface C0123d extends d {
        }

        public interface e extends c, C0123d {
        }
    }

    public static abstract class e<T extends b, O> {
    }

    public interface f extends b {
        void a();

        void a(C0781d.c cVar);

        void a(C0781d.e eVar);

        void a(C0789l lVar, Set<Scope> set);

        boolean b();

        String c();

        boolean d();

        int e();

        Feature[] f();

        boolean g();

        boolean isConnected();
    }

    public static final class g<C extends f> extends c<C> {
    }

    public interface h<T extends IInterface> extends b {
        T a(IBinder iBinder);

        void a(int i2, T t);

        String h();

        String i();
    }

    public static abstract class i<T extends h, O> extends e<T, O> {
    }

    public static final class j<C extends h> extends c<C> {
    }

    public <C extends f> a(String str, C0120a<C, O> aVar, g<C> gVar) {
        r.a(aVar, (Object) "Cannot construct an Api with a null ClientBuilder");
        r.a(gVar, (Object) "Cannot construct an Api with a null ClientKey");
        this.f9797e = str;
        this.f9793a = aVar;
        this.f9795c = gVar;
        this.f9796d = null;
    }

    public final String a() {
        return this.f9797e;
    }

    public final C0120a<?, O> b() {
        r.b(this.f9793a != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.f9793a;
    }
}
