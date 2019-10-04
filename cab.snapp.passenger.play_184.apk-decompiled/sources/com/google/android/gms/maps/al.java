package com.google.android.gms.maps;

import android.graphics.Bitmap;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.m;
import com.google.android.gms.maps.a.bh;
import com.google.android.gms.maps.c;

final class al extends bh {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ c.y f3693a;

    al(c.y yVar) {
        this.f3693a = yVar;
    }

    public final void onSnapshotReady(Bitmap bitmap) throws RemoteException {
        this.f3693a.onSnapshotReady(bitmap);
    }

    public final void zzz(a aVar) throws RemoteException {
        this.f3693a.onSnapshotReady((Bitmap) m.zzx(aVar));
    }
}
