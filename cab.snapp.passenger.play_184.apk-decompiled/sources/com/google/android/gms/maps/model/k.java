package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.maps.model.a.z;

public final class k {

    /* renamed from: a  reason: collision with root package name */
    private final z f3747a;

    public k(z zVar) {
        this.f3747a = (z) ap.checkNotNull(zVar);
    }

    public final void clearTileCache() {
        try {
            this.f3747a.clearTileCache();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        try {
            return this.f3747a.zza(((k) obj).f3747a);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean getFadeIn() {
        try {
            return this.f3747a.getFadeIn();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final String getId() {
        try {
            return this.f3747a.getId();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final float getTransparency() {
        try {
            return this.f3747a.getTransparency();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final float getZIndex() {
        try {
            return this.f3747a.getZIndex();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final int hashCode() {
        try {
            return this.f3747a.hashCodeRemote();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean isVisible() {
        try {
            return this.f3747a.isVisible();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void remove() {
        try {
            this.f3747a.remove();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setFadeIn(boolean z) {
        try {
            this.f3747a.setFadeIn(z);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setTransparency(float f) {
        try {
            this.f3747a.setTransparency(f);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setVisible(boolean z) {
        try {
            this.f3747a.setVisible(z);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setZIndex(float f) {
        try {
            this.f3747a.setZIndex(f);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }
}
