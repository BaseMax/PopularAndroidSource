package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d;
import c.e.a.b.d.d.C0778a;
import c.e.a.b.d.d.C0789l;
import c.e.a.b.d.d.G;
import c.e.a.b.d.d.a.a;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class GetServiceRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new G();

    /* renamed from: a  reason: collision with root package name */
    public final int f13062a;

    /* renamed from: b  reason: collision with root package name */
    public final int f13063b;

    /* renamed from: c  reason: collision with root package name */
    public int f13064c;

    /* renamed from: d  reason: collision with root package name */
    public String f13065d;

    /* renamed from: e  reason: collision with root package name */
    public IBinder f13066e;

    /* renamed from: f  reason: collision with root package name */
    public Scope[] f13067f;

    /* renamed from: g  reason: collision with root package name */
    public Bundle f13068g;

    /* renamed from: h  reason: collision with root package name */
    public Account f13069h;

    /* renamed from: i  reason: collision with root package name */
    public Feature[] f13070i;

    /* renamed from: j  reason: collision with root package name */
    public Feature[] f13071j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f13072k;

    public GetServiceRequest(int i2) {
        this.f13062a = 4;
        this.f13064c = d.f9943a;
        this.f13063b = i2;
        this.f13072k = true;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f13062a);
        a.a(parcel, 2, this.f13063b);
        a.a(parcel, 3, this.f13064c);
        a.a(parcel, 4, this.f13065d, false);
        a.a(parcel, 5, this.f13066e, false);
        a.a(parcel, 6, (T[]) this.f13067f, i2, false);
        a.a(parcel, 7, this.f13068g, false);
        a.a(parcel, 8, (Parcelable) this.f13069h, i2, false);
        a.a(parcel, 10, (T[]) this.f13070i, i2, false);
        a.a(parcel, 11, (T[]) this.f13071j, i2, false);
        a.a(parcel, 12, this.f13072k);
        a.a(parcel, a2);
    }

    public GetServiceRequest(int i2, int i3, int i4, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, Feature[] featureArr, Feature[] featureArr2, boolean z) {
        this.f13062a = i2;
        this.f13063b = i3;
        this.f13064c = i4;
        if ("com.google.android.gms".equals(str)) {
            this.f13065d = "com.google.android.gms";
        } else {
            this.f13065d = str;
        }
        if (i2 < 2) {
            this.f13069h = iBinder != null ? C0778a.a(C0789l.a.a(iBinder)) : null;
        } else {
            this.f13066e = iBinder;
            this.f13069h = account;
        }
        this.f13067f = scopeArr;
        this.f13068g = bundle;
        this.f13070i = featureArr;
        this.f13071j = featureArr2;
        this.f13072k = z;
    }
}
