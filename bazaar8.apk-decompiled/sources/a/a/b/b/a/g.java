package a.a.b.b.a;

import android.media.Rating;
import android.media.RemoteControlClient;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.MediaSessionCompat;

/* compiled from: MediaSessionCompat */
class g implements RemoteControlClient.OnMetadataUpdateListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MediaSessionCompat.d f10a;

    public g(MediaSessionCompat.d dVar) {
        this.f10a = dVar;
    }

    public void onMetadataUpdate(int i2, Object obj) {
        if (i2 == 268435457 && (obj instanceof Rating)) {
            this.f10a.a(19, -1, -1, RatingCompat.a(obj), null);
        }
    }
}
