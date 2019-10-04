package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.c.c;
import c.e.a.b.d.d.C0794q;
import c.e.a.b.d.d.a.a;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Locale;

public final class WebImage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<WebImage> CREATOR = new c();

    /* renamed from: a  reason: collision with root package name */
    public final int f13045a;

    /* renamed from: b  reason: collision with root package name */
    public final Uri f13046b;

    /* renamed from: c  reason: collision with root package name */
    public final int f13047c;

    /* renamed from: d  reason: collision with root package name */
    public final int f13048d;

    public WebImage(int i2, Uri uri, int i3, int i4) {
        this.f13045a = i2;
        this.f13046b = uri;
        this.f13047c = i3;
        this.f13048d = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof WebImage)) {
            WebImage webImage = (WebImage) obj;
            return C0794q.a(this.f13046b, webImage.f13046b) && this.f13047c == webImage.f13047c && this.f13048d == webImage.f13048d;
        }
    }

    public final int hashCode() {
        return C0794q.a(this.f13046b, Integer.valueOf(this.f13047c), Integer.valueOf(this.f13048d));
    }

    public final String toString() {
        return String.format(Locale.US, "Image %dx%d %s", new Object[]{Integer.valueOf(this.f13047c), Integer.valueOf(this.f13048d), this.f13046b.toString()});
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f13045a);
        a.a(parcel, 2, (Parcelable) y(), i2, false);
        a.a(parcel, 3, z());
        a.a(parcel, 4, x());
        a.a(parcel, a2);
    }

    public final int x() {
        return this.f13048d;
    }

    public final Uri y() {
        return this.f13046b;
    }

    public final int z() {
        return this.f13047c;
    }
}
