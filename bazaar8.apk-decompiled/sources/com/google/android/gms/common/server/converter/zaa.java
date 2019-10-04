package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.e.a.a;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;

public final class zaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaa> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final int f13099a;

    /* renamed from: b  reason: collision with root package name */
    public final StringToIntConverter f13100b;

    public zaa(int i2, StringToIntConverter stringToIntConverter) {
        this.f13099a = i2;
        this.f13100b = stringToIntConverter;
    }

    public static zaa a(FastJsonResponse.a<?, ?> aVar) {
        if (aVar instanceof StringToIntConverter) {
            return new zaa((StringToIntConverter) aVar);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = c.e.a.b.d.d.a.a.a(parcel);
        c.e.a.b.d.d.a.a.a(parcel, 1, this.f13099a);
        c.e.a.b.d.d.a.a.a(parcel, 2, (Parcelable) this.f13100b, i2, false);
        c.e.a.b.d.d.a.a.a(parcel, a2);
    }

    public final FastJsonResponse.a<?, ?> x() {
        StringToIntConverter stringToIntConverter = this.f13100b;
        if (stringToIntConverter != null) {
            return stringToIntConverter;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }

    public zaa(StringToIntConverter stringToIntConverter) {
        this.f13099a = 1;
        this.f13100b = stringToIntConverter;
    }
}
