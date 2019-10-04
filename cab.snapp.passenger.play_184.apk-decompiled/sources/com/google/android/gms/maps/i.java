package com.google.android.gms.maps;

import android.graphics.Point;
import android.os.RemoteException;
import com.google.android.gms.a.m;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.maps.a.g;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;
import com.google.android.gms.maps.model.j;

public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final g f3708a;

    public interface a {
        void onStreetViewPanoramaCameraChange(StreetViewPanoramaCamera streetViewPanoramaCamera);
    }

    public interface b {
        void onStreetViewPanoramaChange(StreetViewPanoramaLocation streetViewPanoramaLocation);
    }

    public interface c {
        void onStreetViewPanoramaClick(StreetViewPanoramaOrientation streetViewPanoramaOrientation);
    }

    public interface d {
        void onStreetViewPanoramaLongClick(StreetViewPanoramaOrientation streetViewPanoramaOrientation);
    }

    public i(g gVar) {
        this.f3708a = (g) ap.checkNotNull(gVar, "delegate");
    }

    public final void animateTo(StreetViewPanoramaCamera streetViewPanoramaCamera, long j) {
        try {
            this.f3708a.animateTo(streetViewPanoramaCamera, j);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final StreetViewPanoramaLocation getLocation() {
        try {
            return this.f3708a.getStreetViewPanoramaLocation();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final StreetViewPanoramaCamera getPanoramaCamera() {
        try {
            return this.f3708a.getPanoramaCamera();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean isPanningGesturesEnabled() {
        try {
            return this.f3708a.isPanningGesturesEnabled();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean isStreetNamesEnabled() {
        try {
            return this.f3708a.isStreetNamesEnabled();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean isUserNavigationEnabled() {
        try {
            return this.f3708a.isUserNavigationEnabled();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean isZoomGesturesEnabled() {
        try {
            return this.f3708a.isZoomGesturesEnabled();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final Point orientationToPoint(StreetViewPanoramaOrientation streetViewPanoramaOrientation) {
        try {
            com.google.android.gms.a.a orientationToPoint = this.f3708a.orientationToPoint(streetViewPanoramaOrientation);
            if (orientationToPoint == null) {
                return null;
            }
            return (Point) m.zzx(orientationToPoint);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final StreetViewPanoramaOrientation pointToOrientation(Point point) {
        try {
            return this.f3708a.pointToOrientation(m.zzz(point));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setOnStreetViewPanoramaCameraChangeListener(a aVar) {
        if (aVar == null) {
            try {
                this.f3708a.setOnStreetViewPanoramaCameraChangeListener(null);
            } catch (RemoteException e) {
                throw new j(e);
            }
        } else {
            this.f3708a.setOnStreetViewPanoramaCameraChangeListener(new o(aVar));
        }
    }

    public final void setOnStreetViewPanoramaChangeListener(b bVar) {
        if (bVar == null) {
            try {
                this.f3708a.setOnStreetViewPanoramaChangeListener(null);
            } catch (RemoteException e) {
                throw new j(e);
            }
        } else {
            this.f3708a.setOnStreetViewPanoramaChangeListener(new n(bVar));
        }
    }

    public final void setOnStreetViewPanoramaClickListener(c cVar) {
        if (cVar == null) {
            try {
                this.f3708a.setOnStreetViewPanoramaClickListener(null);
            } catch (RemoteException e) {
                throw new j(e);
            }
        } else {
            this.f3708a.setOnStreetViewPanoramaClickListener(new p(cVar));
        }
    }

    public final void setOnStreetViewPanoramaLongClickListener(d dVar) {
        if (dVar == null) {
            try {
                this.f3708a.setOnStreetViewPanoramaLongClickListener(null);
            } catch (RemoteException e) {
                throw new j(e);
            }
        } else {
            this.f3708a.setOnStreetViewPanoramaLongClickListener(new q(dVar));
        }
    }

    public final void setPanningGesturesEnabled(boolean z) {
        try {
            this.f3708a.enablePanning(z);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setPosition(LatLng latLng) {
        try {
            this.f3708a.setPosition(latLng);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setPosition(LatLng latLng, int i) {
        try {
            this.f3708a.setPositionWithRadius(latLng, i);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setPosition(String str) {
        try {
            this.f3708a.setPositionWithID(str);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setStreetNamesEnabled(boolean z) {
        try {
            this.f3708a.enableStreetNames(z);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setUserNavigationEnabled(boolean z) {
        try {
            this.f3708a.enableUserNavigation(z);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final void setZoomGesturesEnabled(boolean z) {
        try {
            this.f3708a.enableZoom(z);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }
}
