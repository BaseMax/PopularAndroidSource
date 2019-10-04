package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ag;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.Arrays;

public class AccountChangeEvent extends zzbfm {
    public static final Parcelable.Creator<AccountChangeEvent> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private int f2600a;

    /* renamed from: b  reason: collision with root package name */
    private long f2601b;
    private String c;
    private int d;
    private int e;
    private String f;

    AccountChangeEvent(int i, long j, String str, int i2, int i3, String str2) {
        this.f2600a = i;
        this.f2601b = j;
        this.c = (String) ap.checkNotNull(str);
        this.d = i2;
        this.e = i3;
        this.f = str2;
    }

    public AccountChangeEvent(long j, String str, int i, int i2, String str2) {
        this.f2600a = 1;
        this.f2601b = j;
        this.c = (String) ap.checkNotNull(str);
        this.d = i;
        this.e = i2;
        this.f = str2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AccountChangeEvent) {
            AccountChangeEvent accountChangeEvent = (AccountChangeEvent) obj;
            return this.f2600a == accountChangeEvent.f2600a && this.f2601b == accountChangeEvent.f2601b && ag.equal(this.c, accountChangeEvent.c) && this.d == accountChangeEvent.d && this.e == accountChangeEvent.e && ag.equal(this.f, accountChangeEvent.f);
        }
    }

    public String getAccountName() {
        return this.c;
    }

    public String getChangeData() {
        return this.f;
    }

    public int getChangeType() {
        return this.d;
    }

    public int getEventIndex() {
        return this.e;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f2600a), Long.valueOf(this.f2601b), this.c, Integer.valueOf(this.d), Integer.valueOf(this.e), this.f});
    }

    public String toString() {
        int i = this.d;
        String str = i != 1 ? i != 2 ? i != 3 ? i != 4 ? "UNKNOWN" : "RENAMED_TO" : "RENAMED_FROM" : "REMOVED" : "ADDED";
        String str2 = this.c;
        String str3 = this.f;
        int i2 = this.e;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 91 + str.length() + String.valueOf(str3).length());
        sb.append("AccountChangeEvent {accountName = ");
        sb.append(str2);
        sb.append(", changeType = ");
        sb.append(str);
        sb.append(", changeData = ");
        sb.append(str3);
        sb.append(", eventIndex = ");
        sb.append(i2);
        sb.append("}");
        return sb.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f2600a);
        el.zza(parcel, 2, this.f2601b);
        el.zza(parcel, 3, this.c, false);
        el.zzc(parcel, 4, this.d);
        el.zzc(parcel, 5, this.e);
        el.zza(parcel, 6, this.f, false);
        el.zzai(parcel, zze);
    }
}
