package a.a.b.b;

import android.content.ComponentName;
import android.support.v4.media.MediaBrowserCompat;
import android.util.Log;

/* compiled from: MediaBrowserCompat */
class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ComponentName f17a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ MediaBrowserCompat.i.a f18b;

    public d(MediaBrowserCompat.i.a aVar, ComponentName componentName) {
        this.f18b = aVar;
        this.f17a = componentName;
    }

    public void run() {
        if (MediaBrowserCompat.f22a) {
            Log.d("MediaBrowserCompat", "MediaServiceConnection.onServiceDisconnected name=" + this.f17a + " this=" + this + " mServiceConnection=" + MediaBrowserCompat.i.this.f56h);
            MediaBrowserCompat.i.this.b();
        }
        if (this.f18b.a("onServiceDisconnected")) {
            MediaBrowserCompat.i iVar = MediaBrowserCompat.i.this;
            iVar.f57i = null;
            iVar.f58j = null;
            iVar.f53e.a(null);
            MediaBrowserCompat.i iVar2 = MediaBrowserCompat.i.this;
            iVar2.f55g = 4;
            iVar2.f51c.c();
        }
    }
}
