package a.a.b.b.a;

import android.media.RemoteControlClient;
import android.support.v4.media.session.MediaSessionCompat;

/* compiled from: MediaSessionCompat */
class f implements RemoteControlClient.OnPlaybackPositionUpdateListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MediaSessionCompat.c f9a;

    public f(MediaSessionCompat.c cVar) {
        this.f9a = cVar;
    }

    public void onPlaybackPositionUpdate(long j2) {
        this.f9a.a(18, -1, -1, Long.valueOf(j2), null);
    }
}
