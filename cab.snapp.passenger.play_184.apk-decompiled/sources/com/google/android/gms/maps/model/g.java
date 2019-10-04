package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.a.m;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.maps.model.a.s;

public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final s f3744a;

    public g(s sVar) {
        this.f3744a = (s) ap.checkNotNull(sVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        try {
            return this.f3744a.zzj(((g) obj).f3744a);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final float getAlpha() {
        try {
            return this.f3744a.getAlpha();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final String getId() {
        try {
            return this.f3744a.getId();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final LatLng getPosition() {
        try {
            return this.f3744a.getPosition();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final float getRotation() {
        try {
            return this.f3744a.getRotation();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final String getSnippet() {
        try {
            return this.f3744a.getSnippet();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final Object getTag() {
        try {
            return m.zzx(this.f3744a.getTag());
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final String getTitle() {
        try {
            return this.f3744a.getTitle();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final float getZIndex() {
        try {
            return this.f3744a.getZIndex();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final int hashCode() {
        try {
            return this.f3744a.hashCodeRemote();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void hideInfoWindow() {
        try {
            this.f3744a.hideInfoWindow();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean isDraggable() {
        try {
            return this.f3744a.isDraggable();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean isFlat() {
        try {
            return this.f3744a.isFlat();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean isInfoWindowShown() {
        try {
            return this.f3744a.isInfoWindowShown();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean isVisible() {
        try {
            return this.f3744a.isVisible();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void remove() {
        try {
            this.f3744a.remove();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setAlpha(float f) {
        try {
            this.f3744a.setAlpha(f);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setAnchor(float f, float f2) {
        try {
            this.f3744a.setAnchor(f, f2);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setDraggable(boolean z) {
        try {
            this.f3744a.setDraggable(z);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setFlat(boolean z) {
        try {
            this.f3744a.setFlat(z);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setIcon(a aVar) {
        if (aVar == null) {
            try {
                this.f3744a.zzad(null);
            } catch (RemoteException e) {
                throw new j(e);
            }
        } else {
            this.f3744a.zzad(aVar.zzavz());
        }
    }

    public final void setInfoWindowAnchor(float f, float f2) {
        try {
            this.f3744a.setInfoWindowAnchor(f, f2);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setPosition(LatLng latLng) {
        if (latLng != null) {
            try {
                this.f3744a.setPosition(latLng);
            } catch (RemoteException e) {
                throw new j(e);
            }
        } else {
            throw new IllegalArgumentException("latlng cannot be null - a position is required.");
        }
    }

    public final void setRotation(float f) {
        try {
            this.f3744a.setRotation(f);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setSnippet(String str) {
        try {
            this.f3744a.setSnippet(str);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setTag(Object obj) {
        try {
            this.f3744a.setTag(m.zzz(obj));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setTitle(String str) {
        try {
            this.f3744a.setTitle(str);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setVisible(boolean z) {
        try {
            this.f3744a.setVisible(z);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setZIndex(float f) {
        try {
            this.f3744a.setZIndex(f);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void showInfoWindow() {
        try {
            this.f3744a.showInfoWindow();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }
}
