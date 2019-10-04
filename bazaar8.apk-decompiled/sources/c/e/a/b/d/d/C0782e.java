package c.e.a.b.d.d;

import android.accounts.Account;
import android.view.View;
import b.f.d;
import com.google.android.gms.common.api.Scope;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* renamed from: c.e.a.b.d.d.e  reason: case insensitive filesystem */
public final class C0782e {

    /* renamed from: a  reason: collision with root package name */
    public final Account f9996a;

    /* renamed from: b  reason: collision with root package name */
    public final Set<Scope> f9997b;

    /* renamed from: c  reason: collision with root package name */
    public final Set<Scope> f9998c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<c.e.a.b.d.a.a<?>, b> f9999d;

    /* renamed from: e  reason: collision with root package name */
    public final int f10000e;

    /* renamed from: f  reason: collision with root package name */
    public final View f10001f;

    /* renamed from: g  reason: collision with root package name */
    public final String f10002g;

    /* renamed from: h  reason: collision with root package name */
    public final String f10003h;

    /* renamed from: i  reason: collision with root package name */
    public final c.e.a.b.i.a f10004i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f10005j;

    /* renamed from: k  reason: collision with root package name */
    public Integer f10006k;

    /* renamed from: c.e.a.b.d.d.e$a */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public Account f10007a;

        /* renamed from: b  reason: collision with root package name */
        public d<Scope> f10008b;

        /* renamed from: c  reason: collision with root package name */
        public Map<c.e.a.b.d.a.a<?>, b> f10009c;

        /* renamed from: d  reason: collision with root package name */
        public int f10010d = 0;

        /* renamed from: e  reason: collision with root package name */
        public View f10011e;

        /* renamed from: f  reason: collision with root package name */
        public String f10012f;

        /* renamed from: g  reason: collision with root package name */
        public String f10013g;

        /* renamed from: h  reason: collision with root package name */
        public c.e.a.b.i.a f10014h = c.e.a.b.i.a.f11117a;

        /* renamed from: i  reason: collision with root package name */
        public boolean f10015i;

        public final a a(Account account) {
            this.f10007a = account;
            return this;
        }

        public final a b(String str) {
            this.f10012f = str;
            return this;
        }

        public final a a(Collection<Scope> collection) {
            if (this.f10008b == null) {
                this.f10008b = new d<>();
            }
            this.f10008b.addAll(collection);
            return this;
        }

        public final a a(String str) {
            this.f10013g = str;
            return this;
        }

        public final C0782e a() {
            C0782e eVar = new C0782e(this.f10007a, this.f10008b, this.f10009c, this.f10010d, this.f10011e, this.f10012f, this.f10013g, this.f10014h, this.f10015i);
            return eVar;
        }
    }

    /* renamed from: c.e.a.b.d.d.e$b */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final Set<Scope> f10016a;
    }

    public C0782e(Account account, Set<Scope> set, Map<c.e.a.b.d.a.a<?>, b> map, int i2, View view, String str, String str2, c.e.a.b.i.a aVar, boolean z) {
        this.f9996a = account;
        this.f9997b = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.f9999d = map == null ? Collections.EMPTY_MAP : map;
        this.f10001f = view;
        this.f10000e = i2;
        this.f10002g = str;
        this.f10003h = str2;
        this.f10004i = aVar;
        this.f10005j = z;
        HashSet hashSet = new HashSet(this.f9997b);
        for (b bVar : this.f9999d.values()) {
            hashSet.addAll(bVar.f10016a);
        }
        this.f9998c = Collections.unmodifiableSet(hashSet);
    }

    public final Account a() {
        return this.f9996a;
    }

    public final Account b() {
        Account account = this.f9996a;
        if (account != null) {
            return account;
        }
        return new Account("<<default account>>", "com.google");
    }

    public final Set<Scope> c() {
        return this.f9998c;
    }

    public final Integer d() {
        return this.f10006k;
    }

    public final String e() {
        return this.f10003h;
    }

    public final String f() {
        return this.f10002g;
    }

    public final Set<Scope> g() {
        return this.f9997b;
    }

    public final c.e.a.b.i.a h() {
        return this.f10004i;
    }

    public final void a(Integer num) {
        this.f10006k = num;
    }
}
