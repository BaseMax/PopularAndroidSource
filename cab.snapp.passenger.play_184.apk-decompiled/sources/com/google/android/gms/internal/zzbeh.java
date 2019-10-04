package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ag;
import java.util.Arrays;

public final class zzbeh extends zzbfm {
    public static final Parcelable.Creator<zzbeh> CREATOR = new dv();

    /* renamed from: a  reason: collision with root package name */
    private int[] f3563a;

    /* renamed from: b  reason: collision with root package name */
    private String[] f3564b;
    private int[] c;
    private byte[][] d;
    private zzctx[] e;
    private boolean f;
    public final dt zzfjk;
    public final te zzfjr;
    public zzbew zzfjx;
    public byte[] zzfjy;
    public final dt zzfke;

    public zzbeh(zzbew zzbew, te teVar, dt dtVar, dt dtVar2, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr, zzctx[] zzctxArr, boolean z) {
        this.zzfjx = zzbew;
        this.zzfjr = teVar;
        this.zzfjk = dtVar;
        this.zzfke = null;
        this.f3563a = iArr;
        this.f3564b = null;
        this.c = iArr2;
        this.d = null;
        this.e = null;
        this.f = z;
    }

    zzbeh(zzbew zzbew, byte[] bArr, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr2, boolean z, zzctx[] zzctxArr) {
        this.zzfjx = zzbew;
        this.zzfjy = bArr;
        this.f3563a = iArr;
        this.f3564b = strArr;
        this.zzfjr = null;
        this.zzfjk = null;
        this.zzfke = null;
        this.c = iArr2;
        this.d = bArr2;
        this.e = zzctxArr;
        this.f = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzbeh) {
            zzbeh zzbeh = (zzbeh) obj;
            return ag.equal(this.zzfjx, zzbeh.zzfjx) && Arrays.equals(this.zzfjy, zzbeh.zzfjy) && Arrays.equals(this.f3563a, zzbeh.f3563a) && Arrays.equals(this.f3564b, zzbeh.f3564b) && ag.equal(this.zzfjr, zzbeh.zzfjr) && ag.equal(this.zzfjk, zzbeh.zzfjk) && ag.equal(this.zzfke, zzbeh.zzfke) && Arrays.equals(this.c, zzbeh.c) && Arrays.deepEquals(this.d, zzbeh.d) && Arrays.equals(this.e, zzbeh.e) && this.f == zzbeh.f;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzfjx, this.zzfjy, this.f3563a, this.f3564b, this.zzfjr, this.zzfjk, this.zzfke, this.c, this.d, this.e, Boolean.valueOf(this.f)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LogEventParcelable[");
        sb.append(this.zzfjx);
        sb.append(", LogEventBytes: ");
        byte[] bArr = this.zzfjy;
        sb.append(bArr == null ? null : new String(bArr));
        sb.append(", TestCodes: ");
        sb.append(Arrays.toString(this.f3563a));
        sb.append(", MendelPackages: ");
        sb.append(Arrays.toString(this.f3564b));
        sb.append(", LogEvent: ");
        sb.append(this.zzfjr);
        sb.append(", ExtensionProducer: ");
        sb.append(this.zzfjk);
        sb.append(", VeProducer: ");
        sb.append(this.zzfke);
        sb.append(", ExperimentIDs: ");
        sb.append(Arrays.toString(this.c));
        sb.append(", ExperimentTokens: ");
        sb.append(Arrays.toString(this.d));
        sb.append(", ExperimentTokensParcelables: ");
        sb.append(Arrays.toString(this.e));
        sb.append(", AddPhenotypeExperimentTokens: ");
        sb.append(this.f);
        sb.append("]");
        return sb.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 2, (Parcelable) this.zzfjx, i, false);
        el.zza(parcel, 3, this.zzfjy, false);
        el.zza(parcel, 4, this.f3563a, false);
        el.zza(parcel, 5, this.f3564b, false);
        el.zza(parcel, 6, this.c, false);
        el.zza(parcel, 7, this.d, false);
        el.zza(parcel, 8, this.f);
        el.zza(parcel, 9, (T[]) this.e, i, false);
        el.zzai(parcel, zze);
    }
}
