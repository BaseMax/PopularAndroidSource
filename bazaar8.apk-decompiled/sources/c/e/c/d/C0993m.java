package c.e.c.d;

import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import com.google.firebase.iid.zzm;

/* renamed from: c.e.c.d.m  reason: case insensitive filesystem */
public final class C0993m {

    /* renamed from: a  reason: collision with root package name */
    public final Messenger f11658a;

    /* renamed from: b  reason: collision with root package name */
    public final zzm f11659b;

    public C0993m(IBinder iBinder) {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if ("android.os.IMessenger".equals(interfaceDescriptor)) {
            this.f11658a = new Messenger(iBinder);
            this.f11659b = null;
        } else if ("com.google.android.gms.iid.IMessengerCompat".equals(interfaceDescriptor)) {
            this.f11659b = new zzm(iBinder);
            this.f11658a = null;
        } else {
            String valueOf = String.valueOf(interfaceDescriptor);
            Log.w("MessengerIpcClient", valueOf.length() != 0 ? "Invalid interface descriptor: ".concat(valueOf) : new String("Invalid interface descriptor: "));
            throw new RemoteException();
        }
    }

    public final void a(Message message) {
        Messenger messenger = this.f11658a;
        if (messenger != null) {
            messenger.send(message);
            return;
        }
        zzm zzm = this.f11659b;
        if (zzm != null) {
            zzm.a(message);
            return;
        }
        throw new IllegalStateException("Both messengers are null");
    }
}
