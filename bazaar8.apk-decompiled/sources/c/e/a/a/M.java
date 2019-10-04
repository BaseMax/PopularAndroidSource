package c.e.a.a;

import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import c.e.a.a.k.k;
import c.e.a.a.l.o;
import c.e.a.a.p.r;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.source.TrackGroupArray;

/* compiled from: Player */
public interface M {

    /* compiled from: Player */
    public interface a {
    }

    /* compiled from: Player */
    public interface b {
        void a(int i2);

        void a(K k2);

        void a(Z z, Object obj, int i2);

        void a(ExoPlaybackException exoPlaybackException);

        void a(TrackGroupArray trackGroupArray, o oVar);

        void a(boolean z);

        void a(boolean z, int i2);

        void b();

        void b(int i2);

        void b(boolean z);
    }

    /* compiled from: Player */
    public interface c {
    }

    /* compiled from: Player */
    public interface d {
        void a(k kVar);

        void b(k kVar);
    }

    /* compiled from: Player */
    public interface e {
        void a(Surface surface);

        void a(SurfaceView surfaceView);

        void a(TextureView textureView);

        void a(c.e.a.a.p.a.a aVar);

        void a(c.e.a.a.p.o oVar);

        void a(r rVar);

        void b(Surface surface);

        void b(SurfaceView surfaceView);

        void b(TextureView textureView);

        void b(c.e.a.a.p.a.a aVar);

        void b(c.e.a.a.p.o oVar);

        void b(r rVar);
    }

    int a(int i2);

    K a();

    void a(int i2, long j2);

    void a(b bVar);

    void a(boolean z);

    int b();

    void b(int i2);

    void b(b bVar);

    void b(boolean z);

    boolean c();

    int d();

    long e();

    boolean f();

    ExoPlaybackException g();

    long getCurrentPosition();

    long getDuration();

    boolean h();

    boolean hasNext();

    boolean hasPrevious();

    int i();

    int j();

    e k();

    long l();

    int m();

    int n();

    int o();

    TrackGroupArray p();

    Z q();

    Looper r();

    boolean s();

    long t();

    o u();

    d v();
}
