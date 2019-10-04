package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.c;
import java.util.Locale;

public final class zzcfs extends zzbfm implements c {
    public static final Parcelable.Creator<zzcfs> CREATOR = new hp();

    /* renamed from: a  reason: collision with root package name */
    private final String f3599a;

    /* renamed from: b  reason: collision with root package name */
    private final long f3600b;
    private final short c;
    private final double d;
    private final double e;
    private final float f;
    private final int g;
    private final int h;
    private final int i;

    public zzcfs(String str, int i2, short s, double d2, double d3, float f2, long j, int i3, int i4) {
        if (str == null || str.length() > 100) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "requestId is null or too long: ".concat(valueOf) : new String("requestId is null or too long: "));
        } else if (f2 <= 0.0f) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("invalid radius: ");
            sb.append(f2);
            throw new IllegalArgumentException(sb.toString());
        } else if (d2 > 90.0d || d2 < -90.0d) {
            StringBuilder sb2 = new StringBuilder(42);
            sb2.append("invalid latitude: ");
            sb2.append(d2);
            throw new IllegalArgumentException(sb2.toString());
        } else if (d3 > 180.0d || d3 < -180.0d) {
            StringBuilder sb3 = new StringBuilder(43);
            sb3.append("invalid longitude: ");
            sb3.append(d3);
            throw new IllegalArgumentException(sb3.toString());
        } else {
            int i5 = i2 & 7;
            if (i5 != 0) {
                this.c = s;
                this.f3599a = str;
                this.d = d2;
                this.e = d3;
                this.f = f2;
                this.f3600b = j;
                this.g = i5;
                this.h = i3;
                this.i = i4;
                return;
            }
            StringBuilder sb4 = new StringBuilder(46);
            sb4.append("No supported transition specified: ");
            sb4.append(i2);
            throw new IllegalArgumentException(sb4.toString());
        }
    }

    public static zzcfs zzp(byte[] bArr) {
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        zzcfs createFromParcel = CREATOR.createFromParcel(obtain);
        obtain.recycle();
        return createFromParcel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzcfs)) {
            return false;
        }
        zzcfs zzcfs = (zzcfs) obj;
        return this.f == zzcfs.f && this.d == zzcfs.d && this.e == zzcfs.e && this.c == zzcfs.c;
    }

    public final String getRequestId() {
        return this.f3599a;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.d);
        long doubleToLongBits2 = Double.doubleToLongBits(this.e);
        return ((((((((((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) + 31) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + Float.floatToIntBits(this.f)) * 31) + this.c) * 31) + this.g;
    }

    public final String toString() {
        Locale locale = Locale.US;
        Object[] objArr = new Object[9];
        objArr[0] = this.c != 1 ? null : "CIRCLE";
        objArr[1] = this.f3599a.replaceAll("\\p{C}", "?");
        objArr[2] = Integer.valueOf(this.g);
        objArr[3] = Double.valueOf(this.d);
        objArr[4] = Double.valueOf(this.e);
        objArr[5] = Float.valueOf(this.f);
        objArr[6] = Integer.valueOf(this.h / 1000);
        objArr[7] = Integer.valueOf(this.i);
        objArr[8] = Long.valueOf(this.f3600b);
        return String.format(locale, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", objArr);
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, getRequestId(), false);
        el.zza(parcel, 2, this.f3600b);
        el.zza(parcel, 3, this.c);
        el.zza(parcel, 4, this.d);
        el.zza(parcel, 5, this.e);
        el.zza(parcel, 6, this.f);
        el.zzc(parcel, 7, this.g);
        el.zzc(parcel, 8, this.h);
        el.zzc(parcel, 9, this.i);
        el.zzai(parcel, zze);
    }
}
