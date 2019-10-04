package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.a.a;
import c.e.a.b.d.d.r;
import c.e.a.b.d.e.b.c;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new c();

    /* renamed from: a  reason: collision with root package name */
    public final int f13119a;

    /* renamed from: b  reason: collision with root package name */
    public final HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> f13120b;

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList<zal> f13121c = null;

    /* renamed from: d  reason: collision with root package name */
    public final String f13122d;

    public zak(int i2, ArrayList<zal> arrayList, String str) {
        this.f13119a = i2;
        HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> hashMap = new HashMap<>();
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            zal zal = arrayList.get(i3);
            String str2 = zal.f13124b;
            HashMap hashMap2 = new HashMap();
            int size2 = zal.f13125c.size();
            for (int i4 = 0; i4 < size2; i4++) {
                zam zam = zal.f13125c.get(i4);
                hashMap2.put(zam.f13127b, zam.f13128c);
            }
            hashMap.put(str2, hashMap2);
        }
        this.f13120b = hashMap;
        r.a(str);
        this.f13122d = str;
        x();
    }

    public final Map<String, FastJsonResponse.Field<?, ?>> e(String str) {
        return this.f13120b.get(str);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (String next : this.f13120b.keySet()) {
            sb.append(next);
            sb.append(":\n");
            Map map = this.f13120b.get(next);
            for (String str : map.keySet()) {
                sb.append("  ");
                sb.append(str);
                sb.append(": ");
                sb.append(map.get(str));
            }
        }
        return sb.toString();
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f13119a);
        ArrayList arrayList = new ArrayList();
        for (String next : this.f13120b.keySet()) {
            arrayList.add(new zal(next, this.f13120b.get(next)));
        }
        a.b(parcel, 2, arrayList, false);
        a.a(parcel, 3, this.f13122d, false);
        a.a(parcel, a2);
    }

    public final void x() {
        for (String str : this.f13120b.keySet()) {
            Map map = this.f13120b.get(str);
            for (String str2 : map.keySet()) {
                ((FastJsonResponse.Field) map.get(str2)).a(this);
            }
        }
    }

    public final String y() {
        return this.f13122d;
    }
}
