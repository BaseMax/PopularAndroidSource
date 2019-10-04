package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.adjust.sdk.Constants;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ag;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class Credential extends zzbfm implements ReflectedParcelable {
    public static final Parcelable.Creator<Credential> CREATOR = new c();
    public static final String EXTRA_KEY = "com.google.android.gms.credentials.Credential";

    /* renamed from: a  reason: collision with root package name */
    private final String f2624a;

    /* renamed from: b  reason: collision with root package name */
    private final String f2625b;
    private final Uri c;
    private final List<IdToken> d;
    private final String e;
    private final String f;
    private final String g;
    private final String h;
    private final String i;
    private final String j;

    Credential(String str, String str2, Uri uri, List<IdToken> list, String str3, String str4, String str5, String str6, String str7, String str8) {
        String trim = ((String) ap.checkNotNull(str, "credential identifier cannot be null")).trim();
        ap.zzh(trim, "credential identifier cannot be empty");
        if (str3 == null || !TextUtils.isEmpty(str3)) {
            if (str4 != null) {
                boolean z = false;
                if (!TextUtils.isEmpty(str4)) {
                    Uri parse = Uri.parse(str4);
                    if (parse.isAbsolute() && parse.isHierarchical() && !TextUtils.isEmpty(parse.getScheme()) && !TextUtils.isEmpty(parse.getAuthority()) && ("http".equalsIgnoreCase(parse.getScheme()) || Constants.SCHEME.equalsIgnoreCase(parse.getScheme()))) {
                        z = true;
                    }
                }
                if (!z) {
                    throw new IllegalArgumentException("Account type must be a valid Http/Https URI");
                }
            }
            if (TextUtils.isEmpty(str4) || TextUtils.isEmpty(str3)) {
                if (str2 != null && TextUtils.isEmpty(str2.trim())) {
                    str2 = null;
                }
                this.f2625b = str2;
                this.c = uri;
                this.d = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
                this.f2624a = trim;
                this.e = str3;
                this.f = str4;
                this.g = str5;
                this.h = str6;
                this.i = str7;
                this.j = str8;
                return;
            }
            throw new IllegalArgumentException("Password and AccountType are mutually exclusive");
        }
        throw new IllegalArgumentException("Password must not be empty if set");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Credential)) {
            return false;
        }
        Credential credential = (Credential) obj;
        return TextUtils.equals(this.f2624a, credential.f2624a) && TextUtils.equals(this.f2625b, credential.f2625b) && ag.equal(this.c, credential.c) && TextUtils.equals(this.e, credential.e) && TextUtils.equals(this.f, credential.f) && TextUtils.equals(this.g, credential.g);
    }

    public String getAccountType() {
        return this.f;
    }

    public String getFamilyName() {
        return this.j;
    }

    public String getGeneratedPassword() {
        return this.g;
    }

    public String getGivenName() {
        return this.i;
    }

    public String getId() {
        return this.f2624a;
    }

    public List<IdToken> getIdTokens() {
        return this.d;
    }

    public String getName() {
        return this.f2625b;
    }

    public String getPassword() {
        return this.e;
    }

    public Uri getProfilePictureUri() {
        return this.c;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2624a, this.f2625b, this.c, this.e, this.f, this.g});
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, getId(), false);
        el.zza(parcel, 2, getName(), false);
        el.zza(parcel, 3, (Parcelable) getProfilePictureUri(), i2, false);
        el.zzc(parcel, 4, getIdTokens(), false);
        el.zza(parcel, 5, getPassword(), false);
        el.zza(parcel, 6, getAccountType(), false);
        el.zza(parcel, 7, getGeneratedPassword(), false);
        el.zza(parcel, 8, this.h, false);
        el.zza(parcel, 9, getGivenName(), false);
        el.zza(parcel, 10, getFamilyName(), false);
        el.zzai(parcel, zze);
    }
}
