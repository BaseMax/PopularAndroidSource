package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import c.e.a.b.b.a.b.a;
import c.e.a.b.d.d.r;
import c.e.a.b.d.g.e;
import c.e.a.b.d.g.h;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public static e f12930a = h.d();

    /* renamed from: b  reason: collision with root package name */
    public final int f12931b;

    /* renamed from: c  reason: collision with root package name */
    public String f12932c;

    /* renamed from: d  reason: collision with root package name */
    public String f12933d;

    /* renamed from: e  reason: collision with root package name */
    public String f12934e;

    /* renamed from: f  reason: collision with root package name */
    public String f12935f;

    /* renamed from: g  reason: collision with root package name */
    public Uri f12936g;

    /* renamed from: h  reason: collision with root package name */
    public String f12937h;

    /* renamed from: i  reason: collision with root package name */
    public long f12938i;

    /* renamed from: j  reason: collision with root package name */
    public String f12939j;

    /* renamed from: k  reason: collision with root package name */
    public List<Scope> f12940k;

    /* renamed from: l  reason: collision with root package name */
    public String f12941l;
    public String m;
    public Set<Scope> n = new HashSet();

    public GoogleSignInAccount(int i2, String str, String str2, String str3, String str4, Uri uri, String str5, long j2, String str6, List<Scope> list, String str7, String str8) {
        this.f12931b = i2;
        this.f12932c = str;
        this.f12933d = str2;
        this.f12934e = str3;
        this.f12935f = str4;
        this.f12936g = uri;
        this.f12937h = str5;
        this.f12938i = j2;
        this.f12939j = str6;
        this.f12940k = list;
        this.f12941l = str7;
        this.m = str8;
    }

    public static GoogleSignInAccount a(String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Long l2, String str7, Set<Scope> set) {
        long longValue = (l2 == null ? Long.valueOf(f12930a.c() / 1000) : l2).longValue();
        r.b(str7);
        r.a(set);
        GoogleSignInAccount googleSignInAccount = new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, longValue, str7, new ArrayList(set), str5, str6);
        return googleSignInAccount;
    }

    public static GoogleSignInAccount e(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl", null);
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            hashSet.add(new Scope(jSONArray.getString(i2)));
        }
        GoogleSignInAccount a2 = a(jSONObject.optString("id"), jSONObject.optString("tokenId", null), jSONObject.optString("email", null), jSONObject.optString("displayName", null), jSONObject.optString("givenName", null), jSONObject.optString("familyName", null), parse, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet);
        a2.f12937h = jSONObject.optString("serverAuthCode", null);
        return a2;
    }

    public String A() {
        return this.m;
    }

    public String B() {
        return this.f12941l;
    }

    public String C() {
        return this.f12932c;
    }

    public String D() {
        return this.f12933d;
    }

    public Uri E() {
        return this.f12936g;
    }

    public Set<Scope> F() {
        HashSet hashSet = new HashSet(this.f12940k);
        hashSet.addAll(this.n);
        return hashSet;
    }

    public String G() {
        return this.f12937h;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.f12939j.equals(this.f12939j) && googleSignInAccount.F().equals(F());
    }

    public int hashCode() {
        return ((this.f12939j.hashCode() + 527) * 31) + F().hashCode();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = c.e.a.b.d.d.a.a.a(parcel);
        c.e.a.b.d.d.a.a.a(parcel, 1, this.f12931b);
        c.e.a.b.d.d.a.a.a(parcel, 2, C(), false);
        c.e.a.b.d.d.a.a.a(parcel, 3, D(), false);
        c.e.a.b.d.d.a.a.a(parcel, 4, z(), false);
        c.e.a.b.d.d.a.a.a(parcel, 5, y(), false);
        c.e.a.b.d.d.a.a.a(parcel, 6, (Parcelable) E(), i2, false);
        c.e.a.b.d.d.a.a.a(parcel, 7, G(), false);
        c.e.a.b.d.d.a.a.a(parcel, 8, this.f12938i);
        c.e.a.b.d.d.a.a.a(parcel, 9, this.f12939j, false);
        c.e.a.b.d.d.a.a.b(parcel, 10, this.f12940k, false);
        c.e.a.b.d.d.a.a.a(parcel, 11, B(), false);
        c.e.a.b.d.d.a.a.a(parcel, 12, A(), false);
        c.e.a.b.d.d.a.a.a(parcel, a2);
    }

    public Account x() {
        String str = this.f12934e;
        if (str == null) {
            return null;
        }
        return new Account(str, "com.google");
    }

    public String y() {
        return this.f12935f;
    }

    public String z() {
        return this.f12934e;
    }
}
