package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import c.e.a.a.j.d.a.e;
import c.e.a.a.j.d.a.f;
import c.e.a.a.j.d.a.i;
import c.e.a.a.j.d.g;
import c.e.a.a.j.w;
import c.e.a.a.n.v;
import java.io.IOException;

public interface HlsPlaylistTracker {

    public static final class PlaylistResetException extends IOException {
        public final Uri url;

        public PlaylistResetException(Uri uri) {
            this.url = uri;
        }
    }

    public static final class PlaylistStuckException extends IOException {
        public final Uri url;

        public PlaylistStuckException(Uri uri) {
            this.url = uri;
        }
    }

    public interface a {
        HlsPlaylistTracker a(g gVar, v vVar, i iVar);
    }

    public interface b {
        boolean a(Uri uri, long j2);

        void c();
    }

    public interface c {
        void a(f fVar);
    }

    long a();

    f a(Uri uri, boolean z);

    void a(Uri uri, w.a aVar, c cVar);

    void a(b bVar);

    boolean a(Uri uri);

    void b(Uri uri);

    void b(b bVar);

    boolean b();

    e c();

    void c(Uri uri);

    void d();

    void stop();
}
