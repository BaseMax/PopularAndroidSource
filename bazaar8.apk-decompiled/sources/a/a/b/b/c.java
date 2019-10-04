package a.a.b.b;

import android.content.ComponentName;
import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserCompat;
import android.util.Log;

/* compiled from: MediaBrowserCompat */
class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ComponentName f14a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ IBinder f15b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ MediaBrowserCompat.i.a f16c;

    public c(MediaBrowserCompat.i.a aVar, ComponentName componentName, IBinder iBinder) {
        this.f16c = aVar;
        this.f14a = componentName;
        this.f15b = iBinder;
    }

    public void run() {
        if (MediaBrowserCompat.f22a) {
            Log.d("MediaBrowserCompat", "MediaServiceConnection.onServiceConnected name=" + this.f14a + " binder=" + this.f15b);
            MediaBrowserCompat.i.this.b();
        }
        if (this.f16c.a("onServiceConnected")) {
            MediaBrowserCompat.i iVar = MediaBrowserCompat.i.this;
            iVar.f57i = new MediaBrowserCompat.l(this.f15b, iVar.f52d);
            MediaBrowserCompat.i iVar2 = MediaBrowserCompat.i.this;
            iVar2.f58j = new Messenger(iVar2.f53e);
            MediaBrowserCompat.i iVar3 = MediaBrowserCompat.i.this;
            iVar3.f53e.a(iVar3.f58j);
            MediaBrowserCompat.i.this.f55g = 2;
            try {
                if (MediaBrowserCompat.f22a) {
                    Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                    MediaBrowserCompat.i.this.b();
                }
                MediaBrowserCompat.i.this.f57i.a(MediaBrowserCompat.i.this.f49a, MediaBrowserCompat.i.this.f58j);
            } catch (RemoteException unused) {
                Log.w("MediaBrowserCompat", "RemoteException during connect for " + MediaBrowserCompat.i.this.f50b);
                if (MediaBrowserCompat.f22a) {
                    Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                    MediaBrowserCompat.i.this.b();
                }
            }
        }
    }
}
