package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.maps.model.a.p;

public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final p f3743a;

    public f(p pVar) {
        this.f3743a = (p) ap.checkNotNull(pVar);
    }

    public final void activate() {
        try {
            this.f3743a.activate();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        try {
            return this.f3743a.zza(((f) obj).f3743a);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final String getName() {
        try {
            return this.f3743a.getName();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final String getShortName() {
        try {
            return this.f3743a.getShortName();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final int hashCode() {
        try {
            return this.f3743a.hashCodeRemote();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }
}
