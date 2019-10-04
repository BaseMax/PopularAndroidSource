package f.a.a.g.b;

import android.content.Context;
import android.os.SystemClock;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import f.a.a.g.b.p;
import ir.cafebazaar.inline.ux.audio.MusicDescriptor;

/* compiled from: PlaybackManager */
public class r implements p.a {

    /* renamed from: a  reason: collision with root package name */
    public m f14420a = new m();

    /* renamed from: b  reason: collision with root package name */
    public p f14421b;

    /* renamed from: c  reason: collision with root package name */
    public b f14422c;

    /* renamed from: d  reason: collision with root package name */
    public a f14423d = new a();

    /* renamed from: e  reason: collision with root package name */
    public boolean f14424e;

    /* compiled from: PlaybackManager */
    private class a extends MediaSessionCompat.a {
        public a() {
        }

        public void a(long j2) {
            r.this.f14421b.seekTo((int) j2);
        }

        public void b() {
            r.this.f();
        }

        public void c() {
            r.this.g();
        }

        public void f() {
            if (r.this.f14420a.c()) {
                r.this.h();
                r.this.g();
            }
        }

        public void g() {
            r.this.f14420a.d();
            r.this.h();
            r.this.g();
        }

        public void h() {
            r.this.b((String) null);
        }
    }

    /* compiled from: PlaybackManager */
    public interface b {
        void a();

        void a(PlaybackStateCompat playbackStateCompat);

        void a(MusicDescriptor musicDescriptor);

        void b();

        void c();
    }

    public r(Context context) {
        this.f14421b = new e(context);
        this.f14421b.a(this);
    }

    public MediaSessionCompat.a d() {
        return this.f14423d;
    }

    public p e() {
        return this.f14421b;
    }

    public void f() {
        Log.d("PlaybackManager", "handlePauseRequest: mState=" + this.f14421b.getState());
        if (this.f14421b.isPlaying()) {
            this.f14421b.pause();
            this.f14422c.b();
        }
    }

    public void g() {
        c(this.f14420a.a());
    }

    public final void h() {
        PlaybackStateCompat.a aVar = new PlaybackStateCompat.a();
        aVar.a(1, 0, 1.0f, SystemClock.elapsedRealtime());
        this.f14422c.a(aVar.a());
    }

    public void a(MusicDescriptor musicDescriptor) {
        this.f14420a.a(musicDescriptor);
    }

    public void b(String str) {
        Log.d("PlaybackManager", "handleStopRequest: mState=" + this.f14421b.getState() + " error=" + str);
        this.f14421b.stop();
        this.f14422c.b();
        c(str);
    }

    public void c(int i2) {
        Log.d("PlaybackManager", "handlePlayRequest: mState=" + this.f14421b.getState());
        if (i2 != this.f14420a.b().d()) {
            h();
        }
        MusicDescriptor a2 = this.f14420a.a(Integer.valueOf(i2));
        if (a2 != null) {
            this.f14422c.c();
            this.f14422c.a(a2);
            this.f14421b.a(Integer.valueOf(a2.d()), a2.f());
        }
    }

    public void d(int i2) {
        Log.d("PlaybackManager", "handleSeekToRequest: mState=" + this.f14421b.getState());
        if (this.f14421b.isPlaying()) {
            this.f14421b.seekTo(i2);
        }
    }

    public void a() {
        if (this.f14420a.c()) {
            h();
            g();
            return;
        }
        b((String) null);
    }

    public void b(int i2) {
        if (i2 != 0) {
            if ((i2 == 1 || i2 == 2) && this.f14421b.isPlaying()) {
                f();
                this.f14424e = true;
            }
        } else if (this.f14421b.isConnected() && !this.f14421b.isPlaying() && this.f14424e) {
            g();
            this.f14424e = false;
        }
    }

    public void a(int i2) {
        c((String) null);
    }

    public void a(String str) {
        b(str);
    }

    public void a(b bVar) {
        this.f14422c = bVar;
    }

    public void c(String str) {
        int i2;
        Log.d("PlaybackManager", "updatePlaybackState, playback state=" + this.f14421b.getState());
        p pVar = this.f14421b;
        long a2 = pVar != null ? (long) pVar.a() : -1;
        PlaybackStateCompat.a aVar = new PlaybackStateCompat.a();
        aVar.a(c());
        int state = this.f14421b.getState();
        if (str != null) {
            aVar.a((CharSequence) str);
            i2 = 7;
        } else {
            i2 = state;
        }
        aVar.a(i2, a2, 1.0f, SystemClock.elapsedRealtime());
        MusicDescriptor b2 = this.f14420a.b();
        if (b2 != null) {
            aVar.b((long) b2.d());
        }
        this.f14422c.a(aVar.a());
        if (i2 == 3 || i2 == 2) {
            this.f14422c.a();
        }
    }

    public void b() {
        f();
    }

    public final long c() {
        return this.f14421b.isPlaying() ? 562 : 564;
    }
}
