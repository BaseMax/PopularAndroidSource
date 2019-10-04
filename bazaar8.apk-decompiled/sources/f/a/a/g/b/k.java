package f.a.a.g.b;

import android.app.Notification;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import com.crashlytics.android.Crashlytics;

/* compiled from: MusicNotificationManager */
class k extends MediaControllerCompat.a {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ l f14402d;

    public k(l lVar) {
        this.f14402d = lVar;
    }

    public void a(PlaybackStateCompat playbackStateCompat) {
        PlaybackStateCompat unused = this.f14402d.f14412j = playbackStateCompat;
        Log.d("NotificationManager", "Received new playback state" + playbackStateCompat);
        Notification a2 = this.f14402d.a();
        if (a2 != null) {
            this.f14402d.f14404b.a(148, a2);
        }
    }

    public void a(MediaMetadataCompat mediaMetadataCompat) {
        MediaMetadataCompat unused = this.f14402d.f14413k = mediaMetadataCompat;
        Log.d("NotificationManager", "Received new metadata " + mediaMetadataCompat);
        Notification a2 = this.f14402d.a();
        if (a2 != null) {
            this.f14402d.f14404b.a(148, a2);
        }
    }

    public void a() {
        super.a();
        Log.d("NotificationManager", "Session was destroyed, resetting to the new session token");
        try {
            this.f14402d.d();
        } catch (RemoteException e2) {
            Crashlytics.logException(e2);
            Log.e("NotificationManager", e2 + "could not connect media controller");
        }
    }
}
