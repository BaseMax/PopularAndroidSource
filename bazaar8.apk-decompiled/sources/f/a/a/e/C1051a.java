package f.a.a.e;

import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;

/* renamed from: f.a.a.e.a  reason: case insensitive filesystem */
/* compiled from: CommonPageFragment */
class C1051a extends MediaControllerCompat.a {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1083c f14012d;

    public C1051a(C1083c cVar) {
        this.f14012d = cVar;
    }

    public void a(PlaybackStateCompat playbackStateCompat) {
        Log.d("CommonPageFragment", "onPlaybackstate changed: " + playbackStateCompat);
        MediaControllerCompat.a a2 = this.f14012d.Z.a();
        if (a2 != null) {
            a2.a(playbackStateCompat);
        }
    }

    public void a(MediaMetadataCompat mediaMetadataCompat) {
        if (mediaMetadataCompat != null) {
            this.f14012d.Z.a(Integer.valueOf(mediaMetadataCompat.b().c()));
            MediaControllerCompat.a a2 = this.f14012d.Z.a();
            if (a2 != null) {
                a2.a(mediaMetadataCompat);
            }
        }
    }
}
