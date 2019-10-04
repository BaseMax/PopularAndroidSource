package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.a.m;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.maps.model.a.v;
import java.util.List;

public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final v f3745a;

    public h(v vVar) {
        this.f3745a = (v) ap.checkNotNull(vVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof h)) {
            return false;
        }
        try {
            return this.f3745a.zzb(((h) obj).f3745a);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final int getFillColor() {
        try {
            return this.f3745a.getFillColor();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final List<List<LatLng>> getHoles() {
        try {
            return this.f3745a.getHoles();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final String getId() {
        try {
            return this.f3745a.getId();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final List<LatLng> getPoints() {
        try {
            return this.f3745a.getPoints();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final int getStrokeColor() {
        try {
            return this.f3745a.getStrokeColor();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final int getStrokeJointType() {
        try {
            return this.f3745a.getStrokeJointType();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final List<PatternItem> getStrokePattern() {
        try {
            return PatternItem.a(this.f3745a.getStrokePattern());
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final float getStrokeWidth() {
        try {
            return this.f3745a.getStrokeWidth();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final Object getTag() {
        try {
            return m.zzx(this.f3745a.getTag());
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final float getZIndex() {
        try {
            return this.f3745a.getZIndex();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final int hashCode() {
        try {
            return this.f3745a.hashCodeRemote();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean isClickable() {
        try {
            return this.f3745a.isClickable();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean isGeodesic() {
        try {
            return this.f3745a.isGeodesic();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean isVisible() {
        try {
            return this.f3745a.isVisible();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void remove() {
        try {
            this.f3745a.remove();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setClickable(boolean z) {
        try {
            this.f3745a.setClickable(z);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setFillColor(int i) {
        try {
            this.f3745a.setFillColor(i);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setGeodesic(boolean z) {
        try {
            this.f3745a.setGeodesic(z);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setHoles(List<? extends List<LatLng>> list) {
        try {
            this.f3745a.setHoles(list);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setPoints(List<LatLng> list) {
        try {
            this.f3745a.setPoints(list);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setStrokeColor(int i) {
        try {
            this.f3745a.setStrokeColor(i);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setStrokeJointType(int i) {
        try {
            this.f3745a.setStrokeJointType(i);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setStrokePattern(List<PatternItem> list) {
        try {
            this.f3745a.setStrokePattern(list);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setStrokeWidth(float f) {
        try {
            this.f3745a.setStrokeWidth(f);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setTag(Object obj) {
        try {
            this.f3745a.setTag(m.zzz(obj));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setVisible(boolean z) {
        try {
            this.f3745a.setVisible(z);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setZIndex(float f) {
        try {
            this.f3745a.setZIndex(f);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }
}
