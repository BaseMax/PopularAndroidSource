package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.d;
import com.google.android.gms.common.util.e;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.a.a;
import org.a.b;
import org.a.c;

public class GoogleSignInAccount extends zzbfm implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new g();

    /* renamed from: a  reason: collision with root package name */
    private static d f2646a = e.zzamg();

    /* renamed from: b  reason: collision with root package name */
    private int f2647b;
    private String c;
    private String d;
    private String e;
    private String f;
    private Uri g;
    private String h;
    private long i;
    private String j;
    private List<Scope> k;
    private String l;
    private String m;
    private Set<Scope> n = new HashSet();

    GoogleSignInAccount(int i2, String str, String str2, String str3, String str4, Uri uri, String str5, long j2, String str6, List<Scope> list, String str7, String str8) {
        this.f2647b = i2;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = str4;
        this.g = uri;
        this.h = str5;
        this.i = j2;
        this.j = str6;
        this.k = list;
        this.l = str7;
        this.m = str8;
    }

    private static GoogleSignInAccount a(String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Long l2, String str7, Set<Scope> set) {
        GoogleSignInAccount googleSignInAccount = new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, (l2 == null ? Long.valueOf(f2646a.currentTimeMillis() / 1000) : l2).longValue(), ap.zzgm(str7), new ArrayList((Collection) ap.checkNotNull(set)), str5, str6);
        return googleSignInAccount;
    }

    private final c a() {
        c cVar = new c();
        try {
            if (getId() != null) {
                cVar.put("id", (Object) getId());
            }
            if (getIdToken() != null) {
                cVar.put("tokenId", (Object) getIdToken());
            }
            if (getEmail() != null) {
                cVar.put(NotificationCompat.CATEGORY_EMAIL, (Object) getEmail());
            }
            if (getDisplayName() != null) {
                cVar.put("displayName", (Object) getDisplayName());
            }
            if (getGivenName() != null) {
                cVar.put("givenName", (Object) getGivenName());
            }
            if (getFamilyName() != null) {
                cVar.put("familyName", (Object) getFamilyName());
            }
            if (getPhotoUrl() != null) {
                cVar.put("photoUrl", (Object) getPhotoUrl().toString());
            }
            if (getServerAuthCode() != null) {
                cVar.put("serverAuthCode", (Object) getServerAuthCode());
            }
            cVar.put("expirationTime", this.i);
            cVar.put("obfuscatedIdentifier", (Object) this.j);
            a aVar = new a();
            Scope[] scopeArr = (Scope[]) this.k.toArray(new Scope[this.k.size()]);
            Arrays.sort(scopeArr, f.f2658a);
            for (Scope zzagw : scopeArr) {
                aVar.put((Object) zzagw.zzagw());
            }
            cVar.put("grantedScopes", (Object) aVar);
            return cVar;
        } catch (b e2) {
            throw new RuntimeException(e2);
        }
    }

    public static GoogleSignInAccount zzaaz() {
        Account account = new Account("<<default account>>", "com.google");
        return a(null, null, account.name, null, null, null, null, 0L, account.name, new HashSet());
    }

    public static GoogleSignInAccount zzeu(String str) throws b {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        c cVar = new c(str);
        String optString = cVar.optString("photoUrl", null);
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(cVar.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        a jSONArray = cVar.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            hashSet.add(new Scope(jSONArray.getString(i2)));
        }
        GoogleSignInAccount a2 = a(cVar.optString("id"), cVar.optString("tokenId", null), cVar.optString(NotificationCompat.CATEGORY_EMAIL, null), cVar.optString("displayName", null), cVar.optString("givenName", null), cVar.optString("familyName", null), parse, Long.valueOf(parseLong), cVar.getString("obfuscatedIdentifier"), hashSet);
        a2.h = cVar.optString("serverAuthCode", null);
        return a2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.j.equals(this.j) && googleSignInAccount.zzabb().equals(zzabb());
    }

    public Account getAccount() {
        String str = this.e;
        if (str == null) {
            return null;
        }
        return new Account(str, "com.google");
    }

    public String getDisplayName() {
        return this.f;
    }

    public String getEmail() {
        return this.e;
    }

    public String getFamilyName() {
        return this.m;
    }

    public String getGivenName() {
        return this.l;
    }

    public Set<Scope> getGrantedScopes() {
        return new HashSet(this.k);
    }

    public String getId() {
        return this.c;
    }

    public String getIdToken() {
        return this.d;
    }

    public Uri getPhotoUrl() {
        return this.g;
    }

    public String getServerAuthCode() {
        return this.h;
    }

    public int hashCode() {
        return ((this.j.hashCode() + 527) * 31) + zzabb().hashCode();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f2647b);
        el.zza(parcel, 2, getId(), false);
        el.zza(parcel, 3, getIdToken(), false);
        el.zza(parcel, 4, getEmail(), false);
        el.zza(parcel, 5, getDisplayName(), false);
        el.zza(parcel, 6, (Parcelable) getPhotoUrl(), i2, false);
        el.zza(parcel, 7, getServerAuthCode(), false);
        el.zza(parcel, 8, this.i);
        el.zza(parcel, 9, this.j, false);
        el.zzc(parcel, 10, this.k, false);
        el.zza(parcel, 11, getGivenName(), false);
        el.zza(parcel, 12, getFamilyName(), false);
        el.zzai(parcel, zze);
    }

    public final GoogleSignInAccount zza(Scope... scopeArr) {
        if (scopeArr != null) {
            Collections.addAll(this.n, scopeArr);
        }
        return this;
    }

    public final boolean zza() {
        return f2646a.currentTimeMillis() / 1000 >= this.i - 300;
    }

    public final String zzaba() {
        return this.j;
    }

    public final Set<Scope> zzabb() {
        HashSet hashSet = new HashSet(this.k);
        hashSet.addAll(this.n);
        return hashSet;
    }

    public final String zzabc() {
        c a2 = a();
        a2.remove("serverAuthCode");
        return a2.toString();
    }
}
