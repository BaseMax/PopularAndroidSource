package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.a.a;
import c.e.a.b.d.e.b.d;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.Map;

public final class zal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zal> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    public final int f13123a;

    /* renamed from: b  reason: collision with root package name */
    public final String f13124b;

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList<zam> f13125c;

    public zal(int i2, String str, ArrayList<zam> arrayList) {
        this.f13123a = i2;
        this.f13124b = str;
        this.f13125c = arrayList;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f13123a);
        a.a(parcel, 2, this.f13124b, false);
        a.b(parcel, 3, this.f13125c, false);
        a.a(parcel, a2);
    }

    public zal(String str, Map<String, FastJsonResponse.Field<?, ?>> map) {
        ArrayList<zam> arrayList;
        this.f13123a = 1;
        this.f13124b = str;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList<>();
            for (String next : map.keySet()) {
                arrayList.add(new zam(next, map.get(next)));
            }
        }
        this.f13125c = arrayList;
    }
}
