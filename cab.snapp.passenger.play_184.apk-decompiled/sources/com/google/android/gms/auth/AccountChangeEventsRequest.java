package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public class AccountChangeEventsRequest extends zzbfm {
    public static final Parcelable.Creator<AccountChangeEventsRequest> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    private int f2602a;

    /* renamed from: b  reason: collision with root package name */
    private int f2603b;
    @Deprecated
    private String c;
    private Account d;

    public AccountChangeEventsRequest() {
        this.f2602a = 1;
    }

    AccountChangeEventsRequest(int i, int i2, String str, Account account) {
        this.f2602a = i;
        this.f2603b = i2;
        this.c = str;
        if (account != null || TextUtils.isEmpty(str)) {
            this.d = account;
        } else {
            this.d = new Account(str, "com.google");
        }
    }

    public Account getAccount() {
        return this.d;
    }

    @Deprecated
    public String getAccountName() {
        return this.c;
    }

    public int getEventIndex() {
        return this.f2603b;
    }

    public AccountChangeEventsRequest setAccount(Account account) {
        this.d = account;
        return this;
    }

    @Deprecated
    public AccountChangeEventsRequest setAccountName(String str) {
        this.c = str;
        return this;
    }

    public AccountChangeEventsRequest setEventIndex(int i) {
        this.f2603b = i;
        return this;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f2602a);
        el.zzc(parcel, 2, this.f2603b);
        el.zza(parcel, 3, this.c, false);
        el.zza(parcel, 4, (Parcelable) this.d, i, false);
        el.zzai(parcel, zze);
    }
}
