package b;

import android.support.v4.media.session.PlaybackStateCompat;
import javax.annotation.Nullable;

final class s {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    static r f164a;

    /* renamed from: b  reason: collision with root package name */
    static long f165b;

    private s() {
    }

    static r a() {
        synchronized (s.class) {
            if (f164a == null) {
                return new r();
            }
            r rVar = f164a;
            f164a = rVar.f;
            rVar.f = null;
            f165b -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            return rVar;
        }
    }

    static void a(r rVar) {
        if (rVar.f != null || rVar.g != null) {
            throw new IllegalArgumentException();
        } else if (!rVar.d) {
            synchronized (s.class) {
                if (f165b + PlaybackStateCompat.ACTION_PLAY_FROM_URI <= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                    f165b += PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                    rVar.f = f164a;
                    rVar.c = 0;
                    rVar.f163b = 0;
                    f164a = rVar;
                }
            }
        }
    }
}
