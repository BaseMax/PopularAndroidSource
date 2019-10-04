package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.a.m;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.maps.model.a.g;
import java.util.List;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final g f3740a;

    public c(g gVar) {
        this.f3740a = (g) ap.checkNotNull(gVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        try {
            return this.f3740a.zzb(((c) obj).f3740a);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final LatLng getCenter() {
        try {
            return this.f3740a.getCenter();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final int getFillColor() {
        try {
            return this.f3740a.getFillColor();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final String getId() {
        try {
            return this.f3740a.getId();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final double getRadius() {
        try {
            return this.f3740a.getRadius();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final int getStrokeColor() {
        try {
            return this.f3740a.getStrokeColor();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final List<PatternItem> getStrokePattern() {
        try {
            return PatternItem.a(this.f3740a.getStrokePattern());
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final float getStrokeWidth() {
        try {
            return this.f3740a.getStrokeWidth();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final Object getTag() {
        try {
            return m.zzx(this.f3740a.getTag());
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final float getZIndex() {
        try {
            return this.f3740a.getZIndex();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final int hashCode() {
        try {
            return this.f3740a.hashCodeRemote();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean isClickable() {
        try {
            return this.f3740a.isClickable();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean isVisible() {
        try {
            return this.f3740a.isVisible();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void remove() {
        try {
            this.f3740a.remove();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setCenter(LatLng latLng) {
        try {
            this.f3740a.setCenter(latLng);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setClickable(boolean z) {
        try {
            this.f3740a.setClickable(z);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setFillColor(int i) {
        try {
            this.f3740a.setFillColor(i);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setRadius(double d) {
        try {
            this.f3740a.setRadius(d);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setStrokeColor(int i) {
        try {
            this.f3740a.setStrokeColor(i);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setStrokePattern(List<PatternItem> list) {
        try {
            this.f3740a.setStrokePattern(list);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setStrokeWidth(float f) {
        try {
            this.f3740a.setStrokeWidth(f);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setTag(Object obj) {
        try {
            this.f3740a.setTag(m.zzz(obj));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setVisible(boolean z) {
        try {
            this.f3740a.setVisible(z);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setZIndex(float f) {
        try {
            this.f3740a.setZIndex(f);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }
}
