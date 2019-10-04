package f.a.a.e;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.crashlytics.android.Crashlytics;
import ir.cafebazaar.inline.ux.audio.MediaPlayerService;

/* renamed from: f.a.a.e.b  reason: case insensitive filesystem */
/* compiled from: CommonPageFragment */
class C1052b implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1083c f14044a;

    public C1052b(C1083c cVar) {
        this.f14044a = cVar;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        MediaPlayerService unused = this.f14044a.da = ((MediaPlayerService.b) iBinder).a();
        boolean unused2 = this.f14044a.ea = true;
        Log.d("CommonPageFragment", "onConnected");
        try {
            this.f14044a.a(this.f14044a.da.d());
        } catch (RemoteException e2) {
            Crashlytics.logException(e2);
            Log.e("CommonPageFragment", e2 + "could not connect media controller");
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        boolean unused = this.f14044a.ea = false;
    }
}
