package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;

public final class a extends p {
    public static Account zza(o oVar) {
        if (oVar != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return oVar.getAccount();
            } catch (RemoteException unused) {
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return null;
    }

    public final boolean equals(Object obj) {
        throw new NoSuchMethodError();
    }

    public final Account getAccount() {
        throw new NoSuchMethodError();
    }
}
