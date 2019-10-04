package com.crashlytics.android.core;

import e.a.a.a.a.f.a;
import e.a.a.a.f;
import e.a.a.a.o;
import java.io.File;
import java.io.IOException;

public class CrashlyticsFileMarker {
    public final a fileStore;
    public final String markerName;

    public CrashlyticsFileMarker(String str, a aVar) {
        this.markerName = str;
        this.fileStore = aVar;
    }

    private File getMarkerFile() {
        return new File(this.fileStore.a(), this.markerName);
    }

    public boolean create() {
        try {
            return getMarkerFile().createNewFile();
        } catch (IOException e2) {
            o e3 = f.e();
            e3.b(CrashlyticsCore.TAG, "Error creating marker: " + this.markerName, e2);
            return false;
        }
    }

    public boolean isPresent() {
        return getMarkerFile().exists();
    }

    public boolean remove() {
        return getMarkerFile().delete();
    }
}
