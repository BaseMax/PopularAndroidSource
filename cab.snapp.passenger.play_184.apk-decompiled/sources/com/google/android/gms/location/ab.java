package com.google.android.gms.location;

import android.os.RemoteException;
import com.google.android.gms.c.g;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.internal.z;
import com.google.android.gms.internal.gu;
import com.google.android.gms.internal.zzceo;

final class ab extends gu {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ g f3643a;

    ab(g gVar) {
        this.f3643a = gVar;
    }

    public final void zza(zzceo zzceo) throws RemoteException {
        Status status = zzceo.getStatus();
        if (status == null) {
            this.f3643a.trySetException(new b(new Status(8, "Got null status from location service")));
        } else if (status.getStatusCode() == 0) {
            this.f3643a.setResult(Boolean.TRUE);
        } else {
            this.f3643a.trySetException(z.zzy(status));
        }
    }
}
