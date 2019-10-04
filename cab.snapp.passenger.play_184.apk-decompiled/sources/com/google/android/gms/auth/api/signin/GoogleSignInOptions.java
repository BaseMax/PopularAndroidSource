package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.auth.api.signin.internal.o;
import com.google.android.gms.auth.api.signin.internal.zzn;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.a.b;
import org.a.c;

public class GoogleSignInOptions extends zzbfm implements a.C0065a.e, ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR = new j();
    public static final GoogleSignInOptions DEFAULT_GAMES_SIGN_IN = new a().requestScopes(SCOPE_GAMES_LITE, new Scope[0]).build();
    public static final GoogleSignInOptions DEFAULT_SIGN_IN = new a().requestId().requestProfile().build();
    public static final Scope SCOPE_GAMES = new Scope("https://www.googleapis.com/auth/games");
    public static final Scope SCOPE_GAMES_LITE = new Scope("https://www.googleapis.com/auth/games_lite");
    private static Comparator<Scope> k = new i();
    public static final Scope zzehi = new Scope("profile");
    public static final Scope zzehj = new Scope(NotificationCompat.CATEGORY_EMAIL);
    public static final Scope zzehk = new Scope("openid");

    /* renamed from: a  reason: collision with root package name */
    private int f2648a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList<Scope> f2649b;
    /* access modifiers changed from: private */
    public Account c;
    /* access modifiers changed from: private */
    public boolean d;
    /* access modifiers changed from: private */
    public final boolean e;
    /* access modifiers changed from: private */
    public final boolean f;
    /* access modifiers changed from: private */
    public String g;
    /* access modifiers changed from: private */
    public String h;
    /* access modifiers changed from: private */
    public ArrayList<zzn> i;
    private Map<Integer, zzn> j;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private Set<Scope> f2650a = new HashSet();

        /* renamed from: b  reason: collision with root package name */
        private boolean f2651b;
        private boolean c;
        private boolean d;
        private String e;
        private Account f;
        private String g;
        private Map<Integer, zzn> h = new HashMap();

        public a() {
        }

        public a(GoogleSignInOptions googleSignInOptions) {
            ap.checkNotNull(googleSignInOptions);
            this.f2650a = new HashSet(googleSignInOptions.f2649b);
            this.f2651b = googleSignInOptions.e;
            this.c = googleSignInOptions.f;
            this.d = googleSignInOptions.d;
            this.e = googleSignInOptions.g;
            this.f = googleSignInOptions.c;
            this.g = googleSignInOptions.h;
            this.h = GoogleSignInOptions.b((List<zzn>) googleSignInOptions.i);
        }

        private final String a(String str) {
            ap.zzgm(str);
            String str2 = this.e;
            ap.checkArgument(str2 == null || str2.equals(str), "two different server client ids provided");
            return str;
        }

        public final a addExtension(d dVar) {
            if (!this.h.containsKey(Integer.valueOf(dVar.getExtensionType()))) {
                if (dVar.getImpliedScopes() != null) {
                    this.f2650a.addAll(dVar.getImpliedScopes());
                }
                this.h.put(Integer.valueOf(dVar.getExtensionType()), new zzn(dVar));
                return this;
            }
            throw new IllegalStateException("Only one extension per type may be added");
        }

        public final GoogleSignInOptions build() {
            if (this.f2650a.contains(GoogleSignInOptions.SCOPE_GAMES) && this.f2650a.contains(GoogleSignInOptions.SCOPE_GAMES_LITE)) {
                this.f2650a.remove(GoogleSignInOptions.SCOPE_GAMES_LITE);
            }
            if (this.d && (this.f == null || !this.f2650a.isEmpty())) {
                requestId();
            }
            GoogleSignInOptions googleSignInOptions = new GoogleSignInOptions(new ArrayList(this.f2650a), this.f, this.d, this.f2651b, this.c, this.e, this.g, this.h);
            return googleSignInOptions;
        }

        public final a requestEmail() {
            this.f2650a.add(GoogleSignInOptions.zzehj);
            return this;
        }

        public final a requestId() {
            this.f2650a.add(GoogleSignInOptions.zzehk);
            return this;
        }

        public final a requestIdToken(String str) {
            this.d = true;
            this.e = a(str);
            return this;
        }

        public final a requestProfile() {
            this.f2650a.add(GoogleSignInOptions.zzehi);
            return this;
        }

        public final a requestScopes(Scope scope, Scope... scopeArr) {
            this.f2650a.add(scope);
            this.f2650a.addAll(Arrays.asList(scopeArr));
            return this;
        }

        public final a requestServerAuthCode(String str) {
            return requestServerAuthCode(str, false);
        }

        public final a requestServerAuthCode(String str, boolean z) {
            this.f2651b = true;
            this.e = a(str);
            this.c = z;
            return this;
        }

        public final a setAccountName(String str) {
            this.f = new Account(ap.zzgm(str), "com.google");
            return this;
        }

        public final a setHostedDomain(String str) {
            this.g = ap.zzgm(str);
            return this;
        }
    }

    GoogleSignInOptions(int i2, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, ArrayList<zzn> arrayList2) {
        this(i2, arrayList, account, z, z2, z3, str, str2, b((List<zzn>) arrayList2));
    }

    private GoogleSignInOptions(int i2, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map<Integer, zzn> map) {
        this.f2648a = i2;
        this.f2649b = arrayList;
        this.c = account;
        this.d = z;
        this.e = z2;
        this.f = z3;
        this.g = str;
        this.h = str2;
        this.i = new ArrayList<>(map.values());
        this.j = map;
    }

    /* synthetic */ GoogleSignInOptions(ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map map) {
        this(3, (ArrayList<Scope>) arrayList, account, z, z2, z3, str, str2, (Map<Integer, zzn>) map);
    }

    private final c a() {
        c cVar = new c();
        try {
            org.a.a aVar = new org.a.a();
            Collections.sort(this.f2649b, k);
            ArrayList arrayList = this.f2649b;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                aVar.put((Object) ((Scope) obj).zzagw());
            }
            cVar.put("scopes", (Object) aVar);
            if (this.c != null) {
                cVar.put("accountName", (Object) this.c.name);
            }
            cVar.put("idTokenRequested", this.d);
            cVar.put("forceCodeForRefreshToken", this.f);
            cVar.put("serverAuthRequested", this.e);
            if (!TextUtils.isEmpty(this.g)) {
                cVar.put("serverClientId", (Object) this.g);
            }
            if (!TextUtils.isEmpty(this.h)) {
                cVar.put("hostedDomain", (Object) this.h);
            }
            return cVar;
        } catch (b e2) {
            throw new RuntimeException(e2);
        }
    }

    /* access modifiers changed from: private */
    public static Map<Integer, zzn> b(List<zzn> list) {
        HashMap hashMap = new HashMap();
        if (list == null) {
            return hashMap;
        }
        for (zzn next : list) {
            hashMap.put(Integer.valueOf(next.getType()), next);
        }
        return hashMap;
    }

    public static GoogleSignInOptions zzev(String str) throws b {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        c cVar = new c(str);
        HashSet hashSet = new HashSet();
        org.a.a jSONArray = cVar.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            hashSet.add(new Scope(jSONArray.getString(i2)));
        }
        String optString = cVar.optString("accountName", null);
        GoogleSignInOptions googleSignInOptions = new GoogleSignInOptions(3, (ArrayList<Scope>) new ArrayList(hashSet), !TextUtils.isEmpty(optString) ? new Account(optString, "com.google") : null, cVar.getBoolean("idTokenRequested"), cVar.getBoolean("serverAuthRequested"), cVar.getBoolean("forceCodeForRefreshToken"), cVar.optString("serverClientId", null), cVar.optString("hostedDomain", null), (Map<Integer, zzn>) new HashMap());
        return googleSignInOptions;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0045, code lost:
        if (r3.c.equals(r4.c) != false) goto L_0x0047;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0060, code lost:
        if (r3.g.equals(r4.g) != false) goto L_0x0062;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto L_0x0004
            return r0
        L_0x0004:
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r4 = (com.google.android.gms.auth.api.signin.GoogleSignInOptions) r4     // Catch:{ ClassCastException -> 0x0076 }
            java.util.ArrayList<com.google.android.gms.auth.api.signin.internal.zzn> r1 = r3.i     // Catch:{ ClassCastException -> 0x0076 }
            int r1 = r1.size()     // Catch:{ ClassCastException -> 0x0076 }
            if (r1 > 0) goto L_0x0076
            java.util.ArrayList<com.google.android.gms.auth.api.signin.internal.zzn> r1 = r4.i     // Catch:{ ClassCastException -> 0x0076 }
            int r1 = r1.size()     // Catch:{ ClassCastException -> 0x0076 }
            if (r1 <= 0) goto L_0x0017
            goto L_0x0076
        L_0x0017:
            java.util.ArrayList<com.google.android.gms.common.api.Scope> r1 = r3.f2649b     // Catch:{ ClassCastException -> 0x0076 }
            int r1 = r1.size()     // Catch:{ ClassCastException -> 0x0076 }
            java.util.ArrayList r2 = r4.zzabe()     // Catch:{ ClassCastException -> 0x0076 }
            int r2 = r2.size()     // Catch:{ ClassCastException -> 0x0076 }
            if (r1 != r2) goto L_0x0076
            java.util.ArrayList<com.google.android.gms.common.api.Scope> r1 = r3.f2649b     // Catch:{ ClassCastException -> 0x0076 }
            java.util.ArrayList r2 = r4.zzabe()     // Catch:{ ClassCastException -> 0x0076 }
            boolean r1 = r1.containsAll(r2)     // Catch:{ ClassCastException -> 0x0076 }
            if (r1 != 0) goto L_0x0034
            goto L_0x0076
        L_0x0034:
            android.accounts.Account r1 = r3.c     // Catch:{ ClassCastException -> 0x0076 }
            if (r1 != 0) goto L_0x003d
            android.accounts.Account r1 = r4.c     // Catch:{ ClassCastException -> 0x0076 }
            if (r1 != 0) goto L_0x0076
            goto L_0x0047
        L_0x003d:
            android.accounts.Account r1 = r3.c     // Catch:{ ClassCastException -> 0x0076 }
            android.accounts.Account r2 = r4.c     // Catch:{ ClassCastException -> 0x0076 }
            boolean r1 = r1.equals(r2)     // Catch:{ ClassCastException -> 0x0076 }
            if (r1 == 0) goto L_0x0076
        L_0x0047:
            java.lang.String r1 = r3.g     // Catch:{ ClassCastException -> 0x0076 }
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch:{ ClassCastException -> 0x0076 }
            if (r1 == 0) goto L_0x0058
            java.lang.String r1 = r4.g     // Catch:{ ClassCastException -> 0x0076 }
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch:{ ClassCastException -> 0x0076 }
            if (r1 == 0) goto L_0x0076
            goto L_0x0062
        L_0x0058:
            java.lang.String r1 = r3.g     // Catch:{ ClassCastException -> 0x0076 }
            java.lang.String r2 = r4.g     // Catch:{ ClassCastException -> 0x0076 }
            boolean r1 = r1.equals(r2)     // Catch:{ ClassCastException -> 0x0076 }
            if (r1 == 0) goto L_0x0076
        L_0x0062:
            boolean r1 = r3.f     // Catch:{ ClassCastException -> 0x0076 }
            boolean r2 = r4.f     // Catch:{ ClassCastException -> 0x0076 }
            if (r1 != r2) goto L_0x0076
            boolean r1 = r3.d     // Catch:{ ClassCastException -> 0x0076 }
            boolean r2 = r4.d     // Catch:{ ClassCastException -> 0x0076 }
            if (r1 != r2) goto L_0x0076
            boolean r1 = r3.e     // Catch:{ ClassCastException -> 0x0076 }
            boolean r4 = r4.e     // Catch:{ ClassCastException -> 0x0076 }
            if (r1 != r4) goto L_0x0076
            r4 = 1
            return r4
        L_0x0076:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.GoogleSignInOptions.equals(java.lang.Object):boolean");
    }

    public final Account getAccount() {
        return this.c;
    }

    public Scope[] getScopeArray() {
        ArrayList<Scope> arrayList = this.f2649b;
        return (Scope[]) arrayList.toArray(new Scope[arrayList.size()]);
    }

    public final String getServerClientId() {
        return this.g;
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.f2649b;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            arrayList.add(((Scope) obj).zzagw());
        }
        Collections.sort(arrayList);
        return new o().zzs(arrayList).zzs(this.c).zzs(this.g).zzar(this.f).zzar(this.d).zzar(this.e).zzabn();
    }

    public final boolean isIdTokenRequested() {
        return this.d;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f2648a);
        el.zzc(parcel, 2, zzabe(), false);
        el.zza(parcel, 3, (Parcelable) this.c, i2, false);
        el.zza(parcel, 4, this.d);
        el.zza(parcel, 5, this.e);
        el.zza(parcel, 6, this.f);
        el.zza(parcel, 7, this.g, false);
        el.zza(parcel, 8, this.h, false);
        el.zzc(parcel, 9, this.i, false);
        el.zzai(parcel, zze);
    }

    public final ArrayList<Scope> zzabe() {
        return new ArrayList<>(this.f2649b);
    }

    public final boolean zzabf() {
        return this.e;
    }

    public final String zzabg() {
        return a().toString();
    }
}
