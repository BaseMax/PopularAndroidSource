package com.google.android.gms.maps;

import android.location.Location;

public interface d {

    public interface a {
        void onLocationChanged(Location location);
    }

    void activate(a aVar);

    void deactivate();
}
