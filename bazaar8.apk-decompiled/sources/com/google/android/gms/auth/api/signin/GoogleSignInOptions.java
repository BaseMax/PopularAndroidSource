package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.b.a.b.b;
import c.e.a.b.b.a.b.c;
import c.e.a.b.d.a.a;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class GoogleSignInOptions extends AbstractSafeParcelable implements a.d.e, ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR = new c();

    /* renamed from: a  reason: collision with root package name */
    public static final Scope f12942a = new Scope("profile");

    /* renamed from: b  reason: collision with root package name */
    public static final Scope f12943b = new Scope("email");

    /* renamed from: c  reason: collision with root package name */
    public static final Scope f12944c = new Scope("openid");

    /* renamed from: d  reason: collision with root package name */
    public static final Scope f12945d = new Scope("https://www.googleapis.com/auth/games_lite");

    /* renamed from: e  reason: collision with root package name */
    public static final Scope f12946e = new Scope("https://www.googleapis.com/auth/games");

    /* renamed from: f  reason: collision with root package name */
    public static final GoogleSignInOptions f12947f;

    /* renamed from: g  reason: collision with root package name */
    public static final GoogleSignInOptions f12948g;

    /* renamed from: h  reason: collision with root package name */
    public static Comparator<Scope> f12949h = new b();

    /* renamed from: i  reason: collision with root package name */
    public final int f12950i;

    /* renamed from: j  reason: collision with root package name */
    public final ArrayList<Scope> f12951j;

    /* renamed from: k  reason: collision with root package name */
    public Account f12952k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f12953l;
    public final boolean m;
    public final boolean n;
    public String o;
    public String p;
    public ArrayList<GoogleSignInOptionsExtensionParcelable> q;
    public Map<Integer, GoogleSignInOptionsExtensionParcelable> r;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public Set<Scope> f12954a = new HashSet();

        /* renamed from: b  reason: collision with root package name */
        public boolean f12955b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f12956c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f12957d;

        /* renamed from: e  reason: collision with root package name */
        public String f12958e;

        /* renamed from: f  reason: collision with root package name */
        public Account f12959f;

        /* renamed from: g  reason: collision with root package name */
        public String f12960g;

        /* renamed from: h  reason: collision with root package name */
        public Map<Integer, GoogleSignInOptionsExtensionParcelable> f12961h = new HashMap();

        public final a a(Scope scope, Scope... scopeArr) {
            this.f12954a.add(scope);
            this.f12954a.addAll(Arrays.asList(scopeArr));
            return this;
        }

        public final a b() {
            this.f12954a.add(GoogleSignInOptions.f12944c);
            return this;
        }

        public final a c() {
            this.f12954a.add(GoogleSignInOptions.f12942a);
            return this;
        }

        public final GoogleSignInOptions a() {
            if (this.f12954a.contains(GoogleSignInOptions.f12946e) && this.f12954a.contains(GoogleSignInOptions.f12945d)) {
                this.f12954a.remove(GoogleSignInOptions.f12945d);
            }
            if (this.f12957d && (this.f12959f == null || !this.f12954a.isEmpty())) {
                b();
            }
            GoogleSignInOptions googleSignInOptions = new GoogleSignInOptions(3, new ArrayList(this.f12954a), this.f12959f, this.f12957d, this.f12955b, this.f12956c, this.f12958e, this.f12960g, this.f12961h, null);
            return googleSignInOptions;
        }
    }

    static {
        a b2 = new a().b();
        b2.c();
        f12947f = b2.a();
        a aVar = new a();
        aVar.a(f12945d, new Scope[0]);
        f12948g = aVar.a();
    }

    public GoogleSignInOptions(int i2, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, ArrayList<GoogleSignInOptionsExtensionParcelable> arrayList2) {
        this(i2, arrayList, account, z, z2, z3, str, str2, a(arrayList2));
    }

    public static Map<Integer, GoogleSignInOptionsExtensionParcelable> a(List<GoogleSignInOptionsExtensionParcelable> list) {
        HashMap hashMap = new HashMap();
        if (list == null) {
            return hashMap;
        }
        for (GoogleSignInOptionsExtensionParcelable next : list) {
            hashMap.put(Integer.valueOf(next.x()), next);
        }
        return hashMap;
    }

    public String A() {
        return this.o;
    }

    public boolean B() {
        return this.n;
    }

    public boolean C() {
        return this.f12953l;
    }

    public boolean D() {
        return this.m;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:0x004a, code lost:
        if (r3.f12952k.equals(r4.x()) != false) goto L_0x004c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0069, code lost:
        if (r3.o.equals(r4.A()) != false) goto L_0x006b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto L_0x0004
            return r0
        L_0x0004:
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r4 = (com.google.android.gms.auth.api.signin.GoogleSignInOptions) r4     // Catch:{ ClassCastException -> 0x0085 }
            java.util.ArrayList<com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable> r1 = r3.q     // Catch:{ ClassCastException -> 0x0085 }
            int r1 = r1.size()     // Catch:{ ClassCastException -> 0x0085 }
            if (r1 > 0) goto L_0x0085
            java.util.ArrayList<com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable> r1 = r4.q     // Catch:{ ClassCastException -> 0x0085 }
            int r1 = r1.size()     // Catch:{ ClassCastException -> 0x0085 }
            if (r1 <= 0) goto L_0x0018
            goto L_0x0085
        L_0x0018:
            java.util.ArrayList<com.google.android.gms.common.api.Scope> r1 = r3.f12951j     // Catch:{ ClassCastException -> 0x0085 }
            int r1 = r1.size()     // Catch:{ ClassCastException -> 0x0085 }
            java.util.ArrayList r2 = r4.z()     // Catch:{ ClassCastException -> 0x0085 }
            int r2 = r2.size()     // Catch:{ ClassCastException -> 0x0085 }
            if (r1 != r2) goto L_0x0085
            java.util.ArrayList<com.google.android.gms.common.api.Scope> r1 = r3.f12951j     // Catch:{ ClassCastException -> 0x0085 }
            java.util.ArrayList r2 = r4.z()     // Catch:{ ClassCastException -> 0x0085 }
            boolean r1 = r1.containsAll(r2)     // Catch:{ ClassCastException -> 0x0085 }
            if (r1 != 0) goto L_0x0035
            goto L_0x0085
        L_0x0035:
            android.accounts.Account r1 = r3.f12952k     // Catch:{ ClassCastException -> 0x0085 }
            if (r1 != 0) goto L_0x0040
            android.accounts.Account r1 = r4.x()     // Catch:{ ClassCastException -> 0x0085 }
            if (r1 != 0) goto L_0x0085
            goto L_0x004c
        L_0x0040:
            android.accounts.Account r1 = r3.f12952k     // Catch:{ ClassCastException -> 0x0085 }
            android.accounts.Account r2 = r4.x()     // Catch:{ ClassCastException -> 0x0085 }
            boolean r1 = r1.equals(r2)     // Catch:{ ClassCastException -> 0x0085 }
            if (r1 == 0) goto L_0x0085
        L_0x004c:
            java.lang.String r1 = r3.o     // Catch:{ ClassCastException -> 0x0085 }
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch:{ ClassCastException -> 0x0085 }
            if (r1 == 0) goto L_0x005f
            java.lang.String r1 = r4.A()     // Catch:{ ClassCastException -> 0x0085 }
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch:{ ClassCastException -> 0x0085 }
            if (r1 == 0) goto L_0x0085
            goto L_0x006b
        L_0x005f:
            java.lang.String r1 = r3.o     // Catch:{ ClassCastException -> 0x0085 }
            java.lang.String r2 = r4.A()     // Catch:{ ClassCastException -> 0x0085 }
            boolean r1 = r1.equals(r2)     // Catch:{ ClassCastException -> 0x0085 }
            if (r1 == 0) goto L_0x0085
        L_0x006b:
            boolean r1 = r3.n     // Catch:{ ClassCastException -> 0x0085 }
            boolean r2 = r4.B()     // Catch:{ ClassCastException -> 0x0085 }
            if (r1 != r2) goto L_0x0085
            boolean r1 = r3.f12953l     // Catch:{ ClassCastException -> 0x0085 }
            boolean r2 = r4.C()     // Catch:{ ClassCastException -> 0x0085 }
            if (r1 != r2) goto L_0x0085
            boolean r1 = r3.m     // Catch:{ ClassCastException -> 0x0085 }
            boolean r4 = r4.D()     // Catch:{ ClassCastException -> 0x0085 }
            if (r1 != r4) goto L_0x0085
            r4 = 1
            return r4
        L_0x0085:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.GoogleSignInOptions.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList<Scope> arrayList2 = this.f12951j;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            Scope scope = arrayList2.get(i2);
            i2++;
            arrayList.add(scope.x());
        }
        Collections.sort(arrayList);
        c.e.a.b.b.a.b.a.a aVar = new c.e.a.b.b.a.b.a.a();
        aVar.a((Object) arrayList);
        aVar.a((Object) this.f12952k);
        aVar.a((Object) this.o);
        aVar.a(this.n);
        aVar.a(this.f12953l);
        aVar.a(this.m);
        return aVar.a();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = c.e.a.b.d.d.a.a.a(parcel);
        c.e.a.b.d.d.a.a.a(parcel, 1, this.f12950i);
        c.e.a.b.d.d.a.a.b(parcel, 2, z(), false);
        c.e.a.b.d.d.a.a.a(parcel, 3, (Parcelable) x(), i2, false);
        c.e.a.b.d.d.a.a.a(parcel, 4, C());
        c.e.a.b.d.d.a.a.a(parcel, 5, D());
        c.e.a.b.d.d.a.a.a(parcel, 6, B());
        c.e.a.b.d.d.a.a.a(parcel, 7, A(), false);
        c.e.a.b.d.d.a.a.a(parcel, 8, this.p, false);
        c.e.a.b.d.d.a.a.b(parcel, 9, y(), false);
        c.e.a.b.d.d.a.a.a(parcel, a2);
    }

    public Account x() {
        return this.f12952k;
    }

    public ArrayList<GoogleSignInOptionsExtensionParcelable> y() {
        return this.q;
    }

    public ArrayList<Scope> z() {
        return new ArrayList<>(this.f12951j);
    }

    public GoogleSignInOptions(int i2, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map<Integer, GoogleSignInOptionsExtensionParcelable> map) {
        this.f12950i = i2;
        this.f12951j = arrayList;
        this.f12952k = account;
        this.f12953l = z;
        this.m = z2;
        this.n = z3;
        this.o = str;
        this.p = str2;
        this.q = new ArrayList<>(map.values());
        this.r = map;
    }

    public /* synthetic */ GoogleSignInOptions(int i2, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map map, b bVar) {
        this(3, (ArrayList<Scope>) arrayList, account, z, z2, z3, str, str2, (Map<Integer, GoogleSignInOptionsExtensionParcelable>) map);
    }
}
