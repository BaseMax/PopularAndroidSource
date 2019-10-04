package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ag;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class PatternItem extends zzbfm {
    public static final Parcelable.Creator<PatternItem> CREATOR = new u();

    /* renamed from: a  reason: collision with root package name */
    private static final String f3726a = PatternItem.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private final int f3727b;
    private final Float c;

    public PatternItem(int i, Float f) {
        boolean z = true;
        if (i != 1 && (f == null || f.floatValue() < 0.0f)) {
            z = false;
        }
        String valueOf = String.valueOf(f);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 45);
        sb.append("Invalid PatternItem: type=");
        sb.append(i);
        sb.append(" length=");
        sb.append(valueOf);
        ap.checkArgument(z, sb.toString());
        this.f3727b = i;
        this.c = f;
    }

    static List<PatternItem> a(List<PatternItem> list) {
        PatternItem patternItem;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (PatternItem next : list) {
            if (next == null) {
                next = null;
            } else {
                int i = next.f3727b;
                if (i == 0) {
                    patternItem = new Dash(next.c.floatValue());
                } else if (i == 1) {
                    next = new Dot();
                } else if (i != 2) {
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Unknown PatternItem type: ");
                    sb.append(i);
                } else {
                    patternItem = new Gap(next.c.floatValue());
                }
                next = patternItem;
            }
            arrayList.add(next);
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PatternItem)) {
            return false;
        }
        PatternItem patternItem = (PatternItem) obj;
        return this.f3727b == patternItem.f3727b && ag.equal(this.c, patternItem.c);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3727b), this.c});
    }

    public String toString() {
        int i = this.f3727b;
        String valueOf = String.valueOf(this.c);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 39);
        sb.append("[PatternItem: type=");
        sb.append(i);
        sb.append(" length=");
        sb.append(valueOf);
        sb.append("]");
        return sb.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 2, this.f3727b);
        el.zza(parcel, 3, this.c, false);
        el.zzai(parcel, zze);
    }
}
