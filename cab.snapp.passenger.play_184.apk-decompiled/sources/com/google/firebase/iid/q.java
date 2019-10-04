package com.google.firebase.iid;

import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import com.google.android.gms.iid.MessengerCompat;

final class q {

    /* renamed from: a  reason: collision with root package name */
    final Messenger f4081a;

    /* renamed from: b  reason: collision with root package name */
    final MessengerCompat f4082b;

    q(IBinder iBinder) throws RemoteException {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if ("android.os.IMessenger".equals(interfaceDescriptor)) {
            this.f4081a = new Messenger(iBinder);
            this.f4082b = null;
        } else if ("com.google.android.gms.iid.IMessengerCompat".equals(interfaceDescriptor)) {
            this.f4082b = new MessengerCompat(iBinder);
            this.f4081a = null;
        } else {
            String valueOf = String.valueOf(interfaceDescriptor);
            if (valueOf.length() != 0) {
                "Invalid interface descriptor: ".concat(valueOf);
            } else {
                new String("Invalid interface descriptor: ");
            }
            throw new RemoteException();
        }
    }
}
