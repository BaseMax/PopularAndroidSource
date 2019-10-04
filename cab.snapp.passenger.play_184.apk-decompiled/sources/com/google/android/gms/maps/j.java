package com.google.android.gms.maps;

import android.os.RemoteException;

public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.gms.maps.a.j f3709a;

    j(com.google.android.gms.maps.a.j jVar) {
        this.f3709a = jVar;
    }

    public final boolean isCompassEnabled() {
        try {
            return this.f3709a.isCompassEnabled();
        } catch (RemoteException e) {
            throw new com.google.android.gms.maps.model.j(e);
        }
    }

    public final boolean isIndoorLevelPickerEnabled() {
        try {
            return this.f3709a.isIndoorLevelPickerEnabled();
        } catch (RemoteException e) {
            throw new com.google.android.gms.maps.model.j(e);
        }
    }

    public final boolean isMapToolbarEnabled() {
        try {
            return this.f3709a.isMapToolbarEnabled();
        } catch (RemoteException e) {
            throw new com.google.android.gms.maps.model.j(e);
        }
    }

    public final boolean isMyLocationButtonEnabled() {
        try {
            return this.f3709a.isMyLocationButtonEnabled();
        } catch (RemoteException e) {
            throw new com.google.android.gms.maps.model.j(e);
        }
    }

    public final boolean isRotateGesturesEnabled() {
        try {
            return this.f3709a.isRotateGesturesEnabled();
        } catch (RemoteException e) {
            throw new com.google.android.gms.maps.model.j(e);
        }
    }

    public final boolean isScrollGesturesEnabled() {
        try {
            return this.f3709a.isScrollGesturesEnabled();
        } catch (RemoteException e) {
            throw new com.google.android.gms.maps.model.j(e);
        }
    }

    public final boolean isTiltGesturesEnabled() {
        try {
            return this.f3709a.isTiltGesturesEnabled();
        } catch (RemoteException e) {
            throw new com.google.android.gms.maps.model.j(e);
        }
    }

    public final boolean isZoomControlsEnabled() {
        try {
            return this.f3709a.isZoomControlsEnabled();
        } catch (RemoteException e) {
            throw new com.google.android.gms.maps.model.j(e);
        }
    }

    public final boolean isZoomGesturesEnabled() {
        try {
            return this.f3709a.isZoomGesturesEnabled();
        } catch (RemoteException e) {
            throw new com.google.android.gms.maps.model.j(e);
        }
    }

    public final void setAllGesturesEnabled(boolean z) {
        try {
            this.f3709a.setAllGesturesEnabled(z);
        } catch (RemoteException e) {
            throw new com.google.android.gms.maps.model.j(e);
        }
    }

    public final void setCompassEnabled(boolean z) {
        try {
            this.f3709a.setCompassEnabled(z);
        } catch (RemoteException e) {
            throw new com.google.android.gms.maps.model.j(e);
        }
    }

    public final void setIndoorLevelPickerEnabled(boolean z) {
        try {
            this.f3709a.setIndoorLevelPickerEnabled(z);
        } catch (RemoteException e) {
            throw new com.google.android.gms.maps.model.j(e);
        }
    }

    public final void setMapToolbarEnabled(boolean z) {
        try {
            this.f3709a.setMapToolbarEnabled(z);
        } catch (RemoteException e) {
            throw new com.google.android.gms.maps.model.j(e);
        }
    }

    public final void setMyLocationButtonEnabled(boolean z) {
        try {
            this.f3709a.setMyLocationButtonEnabled(z);
        } catch (RemoteException e) {
            throw new com.google.android.gms.maps.model.j(e);
        }
    }

    public final void setRotateGesturesEnabled(boolean z) {
        try {
            this.f3709a.setRotateGesturesEnabled(z);
        } catch (RemoteException e) {
            throw new com.google.android.gms.maps.model.j(e);
        }
    }

    public final void setScrollGesturesEnabled(boolean z) {
        try {
            this.f3709a.setScrollGesturesEnabled(z);
        } catch (RemoteException e) {
            throw new com.google.android.gms.maps.model.j(e);
        }
    }

    public final void setTiltGesturesEnabled(boolean z) {
        try {
            this.f3709a.setTiltGesturesEnabled(z);
        } catch (RemoteException e) {
            throw new com.google.android.gms.maps.model.j(e);
        }
    }

    public final void setZoomControlsEnabled(boolean z) {
        try {
            this.f3709a.setZoomControlsEnabled(z);
        } catch (RemoteException e) {
            throw new com.google.android.gms.maps.model.j(e);
        }
    }

    public final void setZoomGesturesEnabled(boolean z) {
        try {
            this.f3709a.setZoomGesturesEnabled(z);
        } catch (RemoteException e) {
            throw new com.google.android.gms.maps.model.j(e);
        }
    }
}
