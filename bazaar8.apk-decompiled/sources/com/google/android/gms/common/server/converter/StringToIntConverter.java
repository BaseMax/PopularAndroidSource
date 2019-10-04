package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import c.e.a.b.d.d.a.a;
import c.e.a.b.d.e.a.b;
import c.e.a.b.d.e.a.c;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;

public final class StringToIntConverter extends AbstractSafeParcelable implements FastJsonResponse.a<String, Integer> {
    public static final Parcelable.Creator<StringToIntConverter> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    public final int f13092a;

    /* renamed from: b  reason: collision with root package name */
    public final HashMap<String, Integer> f13093b;

    /* renamed from: c  reason: collision with root package name */
    public final SparseArray<String> f13094c;

    /* renamed from: d  reason: collision with root package name */
    public final ArrayList<zaa> f13095d;

    public static final class zaa extends AbstractSafeParcelable {
        public static final Parcelable.Creator<zaa> CREATOR = new c();

        /* renamed from: a  reason: collision with root package name */
        public final int f13096a;

        /* renamed from: b  reason: collision with root package name */
        public final String f13097b;

        /* renamed from: c  reason: collision with root package name */
        public final int f13098c;

        public zaa(int i2, String str, int i3) {
            this.f13096a = i2;
            this.f13097b = str;
            this.f13098c = i3;
        }

        public final void writeToParcel(Parcel parcel, int i2) {
            int a2 = a.a(parcel);
            a.a(parcel, 1, this.f13096a);
            a.a(parcel, 2, this.f13097b, false);
            a.a(parcel, 3, this.f13098c);
            a.a(parcel, a2);
        }

        public zaa(String str, int i2) {
            this.f13096a = 1;
            this.f13097b = str;
            this.f13098c = i2;
        }
    }

    public StringToIntConverter(int i2, ArrayList<zaa> arrayList) {
        this.f13092a = i2;
        this.f13093b = new HashMap<>();
        this.f13094c = new SparseArray<>();
        this.f13095d = null;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            zaa zaa2 = arrayList.get(i3);
            i3++;
            zaa zaa3 = zaa2;
            a(zaa3.f13097b, zaa3.f13098c);
        }
    }

    public final StringToIntConverter a(String str, int i2) {
        this.f13093b.put(str, Integer.valueOf(i2));
        this.f13094c.put(i2, str);
        return this;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f13092a);
        ArrayList arrayList = new ArrayList();
        for (String next : this.f13093b.keySet()) {
            arrayList.add(new zaa(next, this.f13093b.get(next).intValue()));
        }
        a.b(parcel, 2, arrayList, false);
        a.a(parcel, a2);
    }

    public final /* synthetic */ Object a(Object obj) {
        String str = this.f13094c.get(((Integer) obj).intValue());
        return (str != null || !this.f13093b.containsKey("gms_unknown")) ? str : "gms_unknown";
    }

    public StringToIntConverter() {
        this.f13092a = 1;
        this.f13093b = new HashMap<>();
        this.f13094c = new SparseArray<>();
        this.f13095d = null;
    }
}
