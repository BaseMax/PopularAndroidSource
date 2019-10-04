package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.a.m;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.maps.model.a.j;

public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final j f3741a;

    public d(j jVar) {
        this.f3741a = (j) ap.checkNotNull(jVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        try {
            return this.f3741a.zzb(((d) obj).f3741a);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final float getBearing() {
        try {
            return this.f3741a.getBearing();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final LatLngBounds getBounds() {
        try {
            return this.f3741a.getBounds();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final float getHeight() {
        try {
            return this.f3741a.getHeight();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final String getId() {
        try {
            return this.f3741a.getId();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final LatLng getPosition() {
        try {
            return this.f3741a.getPosition();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final Object getTag() {
        try {
            return m.zzx(this.f3741a.getTag());
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final float getTransparency() {
        try {
            return this.f3741a.getTransparency();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final float getWidth() {
        try {
            return this.f3741a.getWidth();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final float getZIndex() {
        try {
            return this.f3741a.getZIndex();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final int hashCode() {
        try {
            return this.f3741a.hashCodeRemote();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean isClickable() {
        try {
            return this.f3741a.isClickable();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean isVisible() {
        try {
            return this.f3741a.isVisible();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void remove() {
        try {
            this.f3741a.remove();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setBearing(float f) {
        try {
            this.f3741a.setBearing(f);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setClickable(boolean z) {
        try {
            this.f3741a.setClickable(z);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setDimensions(float f) {
        try {
            this.f3741a.setDimensions(f);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setDimensions(float f, float f2) {
        try {
            this.f3741a.zzf(f, f2);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setImage(a aVar) {
        ap.checkNotNull(aVar, "imageDescriptor must not be null");
        try {
            this.f3741a.zzac(aVar.zzavz());
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setPosition(LatLng latLng) {
        try {
            this.f3741a.setPosition(latLng);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setPositionFromBounds(LatLngBounds latLngBounds) {
        try {
            this.f3741a.setPositionFromBounds(latLngBounds);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setTag(Object obj) {
        try {
            this.f3741a.setTag(m.zzz(obj));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setTransparency(float f) {
        try {
            this.f3741a.setTransparency(f);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setVisible(boolean z) {
        try {
            this.f3741a.setVisible(z);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setZIndex(float f) {
        try {
            this.f3741a.setZIndex(f);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }
}
