package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.ax;
import com.google.android.gms.common.internal.az;
import com.google.android.gms.common.internal.ba;

public final class iy extends ax<ir> {
    public iy(Context context, Looper looper, az azVar, ba baVar) {
        super(context, looper, azVar, baVar);
    }

    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        return queryLocalInterface instanceof ir ? (ir) queryLocalInterface : new it(iBinder);
    }

    public final String zzhi() {
        return "com.google.android.gms.measurement.START";
    }

    public final String zzhj() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }
}
