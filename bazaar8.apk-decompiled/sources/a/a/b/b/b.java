package a.a.b.b;

import android.os.Messenger;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserCompat;
import android.util.Log;

/* compiled from: MediaBrowserCompat */
class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MediaBrowserCompat.i f13a;

    public b(MediaBrowserCompat.i iVar) {
        this.f13a = iVar;
    }

    public void run() {
        MediaBrowserCompat.i iVar = this.f13a;
        Messenger messenger = iVar.f58j;
        if (messenger != null) {
            try {
                iVar.f57i.a(messenger);
            } catch (RemoteException unused) {
                Log.w("MediaBrowserCompat", "RemoteException during connect for " + this.f13a.f50b);
            }
        }
        MediaBrowserCompat.i iVar2 = this.f13a;
        int i2 = iVar2.f55g;
        iVar2.d();
        if (i2 != 0) {
            this.f13a.f55g = i2;
        }
        if (MediaBrowserCompat.f22a) {
            Log.d("MediaBrowserCompat", "disconnect...");
            this.f13a.b();
        }
    }
}
