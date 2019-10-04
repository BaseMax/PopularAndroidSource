package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.yandex.metrica.impl.ac;
import com.yandex.metrica.impl.ac.GoogleAdvertisingIdGetter;
import com.yandex.metrica.impl.bm;
import com.yandex.metrica.impl.bt;
import com.yandex.metrica.impl.bv;
import com.yandex.metrica.impl.h;
import java.util.Locale;

public class kz {

    /* renamed from: a  reason: collision with root package name */
    private Context f6347a;

    /* renamed from: b  reason: collision with root package name */
    private String f6348b;
    private h c;
    private final String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private GoogleAdvertisingIdGetter.b k;
    private String l;
    private String m;
    private ma n;

    public static class a {

        /* renamed from: b  reason: collision with root package name */
        public final String f6349b;
        public final String c;
        public final String d;

        public a(String str, String str2, String str3) {
            this.f6349b = str;
            this.c = str2;
            this.d = str3;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                a aVar = (a) obj;
                String str = this.f6349b;
                if (str == null ? aVar.f6349b != null : !str.equals(aVar.f6349b)) {
                    return false;
                }
                String str2 = this.c;
                if (str2 == null ? aVar.c != null : !str2.equals(aVar.c)) {
                    return false;
                }
                String str3 = this.d;
                String str4 = aVar.d;
                if (str3 != null) {
                    return str3.equals(str4);
                }
                if (str4 == null) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            String str = this.f6349b;
            int i = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.c;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.d;
            if (str3 != null) {
                i = str3.hashCode();
            }
            return hashCode2 + i;
        }
    }

    protected static abstract class b<T extends kz, A extends a> implements d<T, c<A>> {

        /* renamed from: a  reason: collision with root package name */
        final Context f6350a;

        /* renamed from: b  reason: collision with root package name */
        final String f6351b;

        /* access modifiers changed from: protected */
        public abstract T b();

        protected b(Context context, String str) {
            this.f6350a = context;
            this.f6351b = str;
        }

        /* renamed from: c */
        public T a(c<A> cVar) {
            T b2 = b();
            b2.a(this.f6350a);
            b2.a(h.a(this.f6350a));
            b2.a(cVar.f6352a);
            b2.i(a(this.f6350a, ((a) cVar.f6353b).f6349b));
            b(b2, cVar);
            String str = this.f6351b;
            String str2 = ((a) cVar.f6353b).c;
            Context context = this.f6350a;
            if (TextUtils.isEmpty(str2)) {
                str2 = bv.b(context, str);
            }
            b2.d(str2);
            String str3 = this.f6351b;
            String str4 = ((a) cVar.f6353b).d;
            Context context2 = this.f6350a;
            if (TextUtils.isEmpty(str4)) {
                str4 = bv.a(context2, str3);
            }
            b2.c(str4);
            b2.b(this.f6351b);
            b2.a(GoogleAdvertisingIdGetter.a().c(this.f6350a));
            b2.h(ac.a(this.f6350a).a());
            return b2;
        }

        /* access modifiers changed from: package-private */
        public void a(T t, c<A> cVar) {
            String str = cVar.f6352a.f6417b;
            if (TextUtils.isEmpty(str)) {
                hb a2 = hg.a().a(this.f6350a);
                if (a2 != null) {
                    t.f(a2.f6085a);
                    t.g(a2.f6086b);
                }
                return;
            }
            t.f(str);
            t.g(cVar.f6352a.c);
        }

        /* access modifiers changed from: package-private */
        public String a(Context context, String str) {
            return str == null ? h.a(context).g : str;
        }

        private synchronized void b(T t, c<A> cVar) {
            t.e(cVar.f6352a.f6416a);
            a(t, cVar);
        }
    }

    public static class c<A> {

        /* renamed from: a  reason: collision with root package name */
        public final ma f6352a;

        /* renamed from: b  reason: collision with root package name */
        public final A f6353b;

        public c(ma maVar, A a2) {
            this.f6352a = maVar;
            this.f6353b = a2;
        }
    }

    public interface d<T extends kz, D> {
        T a(D d);
    }

    public String g() {
        return ExifInterface.GPS_MEASUREMENT_2D;
    }

    public String h() {
        return "3.2.2";
    }

    public String i() {
        return "11392";
    }

    public String k() {
        return io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE;
    }

    public kz() {
        this.d = TextUtils.isEmpty("") ? "public" : "public_";
        this.e = bm.b();
        this.l = com.yandex.metrica.a.PHONE.name().toLowerCase(Locale.US);
    }

    public String c() {
        return this.f6348b;
    }

    /* access modifiers changed from: protected */
    public void b(String str) {
        this.f6348b = str;
    }

    /* access modifiers changed from: protected */
    public void a(Context context) {
        this.f6347a = context;
    }

    /* access modifiers changed from: protected */
    public ma d() {
        return this.n;
    }

    public synchronized boolean e() {
        return !bt.a(r(), q(), this.j);
    }

    /* access modifiers changed from: protected */
    public void a(h hVar) {
        this.c = hVar;
    }

    /* access modifiers changed from: protected */
    public void a(ma maVar) {
        this.n = maVar;
    }

    public String f() {
        return nt.b(this.c.f5823b, "");
    }

    public String j() {
        return this.d;
    }

    public String l() {
        return this.c.c;
    }

    public String m() {
        return this.c.d;
    }

    public int n() {
        return this.c.e;
    }

    /* access modifiers changed from: protected */
    public void c(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.g = str;
        }
    }

    public String o() {
        return nt.b(this.g, "");
    }

    public String p() {
        return nt.b(this.f, "");
    }

    /* access modifiers changed from: protected */
    public void d(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f = str;
        }
    }

    public synchronized String q() {
        return nt.b(this.i, "");
    }

    public synchronized String r() {
        return nt.b(this.h, "");
    }

    /* access modifiers changed from: protected */
    public synchronized void e(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.h = str;
        }
    }

    /* access modifiers changed from: protected */
    public synchronized void f(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.i = str;
        }
    }

    /* access modifiers changed from: protected */
    public synchronized void g(String str) {
        this.j = str;
    }

    public String s() {
        return this.c.h;
    }

    public String t() {
        return this.e;
    }

    public int u() {
        return this.c.f.f5825a;
    }

    public int v() {
        return this.c.f.f5826b;
    }

    public int w() {
        return this.c.f.c;
    }

    public float x() {
        return this.c.f.d;
    }

    public String y() {
        return nt.b(this.m, "");
    }

    /* access modifiers changed from: package-private */
    public final void h(String str) {
        this.m = str;
    }

    public String z() {
        return nt.b(this.c.b(this.f6347a), "");
    }

    public String A() {
        return nt.b(this.l, com.yandex.metrica.a.PHONE.name().toLowerCase(Locale.US));
    }

    /* access modifiers changed from: package-private */
    public void i(String str) {
        this.l = str;
    }

    public GoogleAdvertisingIdGetter.b B() {
        return this.k;
    }

    /* access modifiers changed from: protected */
    public void a(GoogleAdvertisingIdGetter.b bVar) {
        this.k = bVar;
    }
}
