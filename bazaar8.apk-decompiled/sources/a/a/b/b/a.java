package a.a.b.b;

import android.content.Intent;
import android.support.v4.media.MediaBrowserCompat;
import android.util.Log;

/* compiled from: MediaBrowserCompat */
class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MediaBrowserCompat.i f3a;

    public a(MediaBrowserCompat.i iVar) {
        this.f3a = iVar;
    }

    public void run() {
        MediaBrowserCompat.i iVar = this.f3a;
        if (iVar.f55g != 0) {
            iVar.f55g = 2;
            if (!MediaBrowserCompat.f22a || iVar.f56h == null) {
                MediaBrowserCompat.i iVar2 = this.f3a;
                if (iVar2.f57i != null) {
                    throw new RuntimeException("mServiceBinderWrapper should be null. Instead it is " + this.f3a.f57i);
                } else if (iVar2.f58j == null) {
                    Intent intent = new Intent("android.media.browse.MediaBrowserService");
                    intent.setComponent(this.f3a.f50b);
                    MediaBrowserCompat.i iVar3 = this.f3a;
                    iVar3.f56h = new MediaBrowserCompat.i.a();
                    boolean z = false;
                    try {
                        z = this.f3a.f49a.bindService(intent, this.f3a.f56h, 1);
                    } catch (Exception unused) {
                        Log.e("MediaBrowserCompat", "Failed binding to service " + this.f3a.f50b);
                    }
                    if (!z) {
                        this.f3a.d();
                        this.f3a.f51c.b();
                    }
                    if (MediaBrowserCompat.f22a) {
                        Log.d("MediaBrowserCompat", "connect...");
                        this.f3a.b();
                    }
                } else {
                    throw new RuntimeException("mCallbacksMessenger should be null. Instead it is " + this.f3a.f58j);
                }
            } else {
                throw new RuntimeException("mServiceConnection should be null. Instead it is " + this.f3a.f56h);
            }
        }
    }
}
