package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.a.a;
import com.google.android.gms.common.internal.ag;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.Arrays;

public class Cap extends zzbfm {
    public static final Parcelable.Creator<Cap> CREATOR = new n();

    /* renamed from: a  reason: collision with root package name */
    private static final String f3714a = Cap.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private final int f3715b;
    private final a c;
    private final Float d;

    protected Cap(int i) {
        this(i, (a) null, (Float) null);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    Cap(int i, IBinder iBinder, Float f) {
        this(i, iBinder == null ? null : new a(a.C0060a.zzaq(iBinder)), f);
    }

    private Cap(int i, a aVar, Float f) {
        ap.checkArgument(i != 3 || (aVar != null && (f != null && (f.floatValue() > 0.0f ? 1 : (f.floatValue() == 0.0f ? 0 : -1)) > 0)), String.format("Invalid Cap: type=%s bitmapDescriptor=%s bitmapRefWidth=%s", new Object[]{Integer.valueOf(i), aVar, f}));
        this.f3715b = i;
        this.c = aVar;
        this.d = f;
    }

    protected Cap(a aVar, float f) {
        this(3, aVar, Float.valueOf(f));
    }

    /* access modifiers changed from: package-private */
    public final Cap a() {
        int i = this.f3715b;
        if (i == 0) {
            return new ButtCap();
        }
        if (i == 1) {
            return new SquareCap();
        }
        if (i == 2) {
            return new RoundCap();
        }
        if (i == 3) {
            return new CustomCap(this.c, this.d.floatValue());
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Unknown Cap type: ");
        sb.append(i);
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cap)) {
            return false;
        }
        Cap cap = (Cap) obj;
        return this.f3715b == cap.f3715b && ag.equal(this.c, cap.c) && ag.equal(this.d, cap.d);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3715b), this.c, this.d});
    }

    public String toString() {
        int i = this.f3715b;
        StringBuilder sb = new StringBuilder(23);
        sb.append("[Cap: type=");
        sb.append(i);
        sb.append("]");
        return sb.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 2, this.f3715b);
        a aVar = this.c;
        el.zza(parcel, 3, aVar == null ? null : aVar.zzavz().asBinder(), false);
        el.zza(parcel, 4, this.d, false);
        el.zzai(parcel, zze);
    }
}
