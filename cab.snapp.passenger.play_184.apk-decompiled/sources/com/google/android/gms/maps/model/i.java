package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.a.m;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.maps.model.a.a;
import java.util.List;

public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final a f3746a;

    public i(a aVar) {
        this.f3746a = (a) ap.checkNotNull(aVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof i)) {
            return false;
        }
        try {
            return this.f3746a.equalsRemote(((i) obj).f3746a);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final int getColor() {
        try {
            return this.f3746a.getColor();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final Cap getEndCap() {
        try {
            return this.f3746a.getEndCap().a();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final String getId() {
        try {
            return this.f3746a.getId();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final int getJointType() {
        try {
            return this.f3746a.getJointType();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final List<PatternItem> getPattern() {
        try {
            return PatternItem.a(this.f3746a.getPattern());
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final List<LatLng> getPoints() {
        try {
            return this.f3746a.getPoints();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final Cap getStartCap() {
        try {
            return this.f3746a.getStartCap().a();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final Object getTag() {
        try {
            return m.zzx(this.f3746a.getTag());
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final float getWidth() {
        try {
            return this.f3746a.getWidth();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final float getZIndex() {
        try {
            return this.f3746a.getZIndex();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final int hashCode() {
        try {
            return this.f3746a.hashCodeRemote();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean isClickable() {
        try {
            return this.f3746a.isClickable();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean isGeodesic() {
        try {
            return this.f3746a.isGeodesic();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean isVisible() {
        try {
            return this.f3746a.isVisible();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void remove() {
        try {
            this.f3746a.remove();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setClickable(boolean z) {
        try {
            this.f3746a.setClickable(z);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setColor(int i) {
        try {
            this.f3746a.setColor(i);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setEndCap(Cap cap) {
        ap.checkNotNull(cap, "endCap must not be null");
        try {
            this.f3746a.setEndCap(cap);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setGeodesic(boolean z) {
        try {
            this.f3746a.setGeodesic(z);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setJointType(int i) {
        try {
            this.f3746a.setJointType(i);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setPattern(List<PatternItem> list) {
        try {
            this.f3746a.setPattern(list);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setPoints(List<LatLng> list) {
        try {
            this.f3746a.setPoints(list);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setStartCap(Cap cap) {
        ap.checkNotNull(cap, "startCap must not be null");
        try {
            this.f3746a.setStartCap(cap);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setTag(Object obj) {
        try {
            this.f3746a.setTag(m.zzz(obj));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setVisible(boolean z) {
        try {
            this.f3746a.setVisible(z);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setWidth(float f) {
        try {
            this.f3746a.setWidth(f);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setZIndex(float f) {
        try {
            this.f3746a.setZIndex(f);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }
}
