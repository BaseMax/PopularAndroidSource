package com.google.android.gms.a;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.op;

public interface a extends IInterface {

    /* renamed from: com.google.android.gms.a.a$a  reason: collision with other inner class name */
    public static abstract class C0060a extends op implements a {
        public C0060a() {
            attachInterface(this, "com.google.android.gms.dynamic.IObjectWrapper");
        }

        public static a zzaq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            return queryLocalInterface instanceof a ? (a) queryLocalInterface : new l(iBinder);
        }
    }
}
