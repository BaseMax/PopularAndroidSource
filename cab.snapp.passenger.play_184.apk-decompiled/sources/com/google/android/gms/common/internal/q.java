package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;

public final class q extends oo implements o {
    q(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
    }

    public final Account getAccount() throws RemoteException {
        Parcel a2 = a(2, a());
        Account account = (Account) oq.zza(a2, Account.CREATOR);
        a2.recycle();
        return account;
    }
}
