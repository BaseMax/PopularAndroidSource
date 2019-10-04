package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.List;

public class AccountChangeEventsResponse extends zzbfm {
    public static final Parcelable.Creator<AccountChangeEventsResponse> CREATOR = new c();

    /* renamed from: a  reason: collision with root package name */
    private int f2604a;

    /* renamed from: b  reason: collision with root package name */
    private List<AccountChangeEvent> f2605b;

    AccountChangeEventsResponse(int i, List<AccountChangeEvent> list) {
        this.f2604a = i;
        this.f2605b = (List) ap.checkNotNull(list);
    }

    public AccountChangeEventsResponse(List<AccountChangeEvent> list) {
        this.f2604a = 1;
        this.f2605b = (List) ap.checkNotNull(list);
    }

    public List<AccountChangeEvent> getEvents() {
        return this.f2605b;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f2604a);
        el.zzc(parcel, 2, this.f2605b, false);
        el.zzai(parcel, zze);
    }
}
