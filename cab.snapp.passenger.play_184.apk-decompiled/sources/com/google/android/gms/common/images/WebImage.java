package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ag;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.Arrays;
import java.util.Locale;
import org.a.b;
import org.a.c;

public final class WebImage extends zzbfm {
    public static final Parcelable.Creator<WebImage> CREATOR = new e();

    /* renamed from: a  reason: collision with root package name */
    private int f2916a;

    /* renamed from: b  reason: collision with root package name */
    private final Uri f2917b;
    private final int c;
    private final int d;

    WebImage(int i, Uri uri, int i2, int i3) {
        this.f2916a = i;
        this.f2917b = uri;
        this.c = i2;
        this.d = i3;
    }

    public WebImage(Uri uri) throws IllegalArgumentException {
        this(uri, 0, 0);
    }

    public WebImage(Uri uri, int i, int i2) throws IllegalArgumentException {
        this(1, uri, i, i2);
        if (uri == null) {
            throw new IllegalArgumentException("url cannot be null");
        } else if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("width and height must not be negative");
        }
    }

    public WebImage(c cVar) throws IllegalArgumentException {
        this(a(cVar), cVar.optInt("width", 0), cVar.optInt("height", 0));
    }

    private static Uri a(c cVar) {
        if (cVar.has("url")) {
            try {
                return Uri.parse(cVar.getString("url"));
            } catch (b unused) {
            }
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof WebImage)) {
            WebImage webImage = (WebImage) obj;
            return ag.equal(this.f2917b, webImage.f2917b) && this.c == webImage.c && this.d == webImage.d;
        }
    }

    public final int getHeight() {
        return this.d;
    }

    public final Uri getUrl() {
        return this.f2917b;
    }

    public final int getWidth() {
        return this.c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2917b, Integer.valueOf(this.c), Integer.valueOf(this.d)});
    }

    public final c toJson() {
        c cVar = new c();
        try {
            cVar.put("url", (Object) this.f2917b.toString());
            cVar.put("width", this.c);
            cVar.put("height", this.d);
        } catch (b unused) {
        }
        return cVar;
    }

    public final String toString() {
        return String.format(Locale.US, "Image %dx%d %s", new Object[]{Integer.valueOf(this.c), Integer.valueOf(this.d), this.f2917b.toString()});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f2916a);
        el.zza(parcel, 2, (Parcelable) getUrl(), i, false);
        el.zzc(parcel, 3, getWidth());
        el.zzc(parcel, 4, getHeight());
        el.zzai(parcel, zze);
    }
}
