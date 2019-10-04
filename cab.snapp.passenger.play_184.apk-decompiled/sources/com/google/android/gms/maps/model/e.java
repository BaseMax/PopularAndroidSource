package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.maps.model.a.m;
import com.google.android.gms.maps.model.a.q;
import java.util.ArrayList;
import java.util.List;

public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final m f3742a;

    public e(m mVar) {
        this.f3742a = (m) ap.checkNotNull(mVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        try {
            return this.f3742a.zzb(((e) obj).f3742a);
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final int getActiveLevelIndex() {
        try {
            return this.f3742a.getActiveLevelIndex();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final int getDefaultLevelIndex() {
        try {
            return this.f3742a.getActiveLevelIndex();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final List<f> getLevels() {
        try {
            List<IBinder> levels = this.f3742a.getLevels();
            ArrayList arrayList = new ArrayList(levels.size());
            for (IBinder zzbj : levels) {
                arrayList.add(new f(q.zzbj(zzbj)));
            }
            return arrayList;
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final int hashCode() {
        try {
            return this.f3742a.hashCodeRemote();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public final boolean isUnderground() {
        try {
            return this.f3742a.isUnderground();
        } catch (RemoteException e) {
            throw new j(e);
        }
    }
}
