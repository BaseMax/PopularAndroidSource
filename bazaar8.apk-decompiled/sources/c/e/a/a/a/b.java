package c.e.a.a.a;

import android.view.Surface;
import c.e.a.a.K;
import c.e.a.a.Z;
import c.e.a.a.c.e;
import c.e.a.a.j.v;
import c.e.a.a.j.w;
import c.e.a.a.l.o;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.TrackGroupArray;
import java.io.IOException;

/* compiled from: AnalyticsListener */
public interface b {

    /* compiled from: AnalyticsListener */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f7370a;

        /* renamed from: b  reason: collision with root package name */
        public final Z f7371b;

        /* renamed from: c  reason: collision with root package name */
        public final int f7372c;

        /* renamed from: d  reason: collision with root package name */
        public final v.a f7373d;

        /* renamed from: e  reason: collision with root package name */
        public final long f7374e;

        /* renamed from: f  reason: collision with root package name */
        public final long f7375f;

        /* renamed from: g  reason: collision with root package name */
        public final long f7376g;

        public a(long j2, Z z, int i2, v.a aVar, long j3, long j4, long j5) {
            this.f7370a = j2;
            this.f7371b = z;
            this.f7372c = i2;
            this.f7373d = aVar;
            this.f7374e = j3;
            this.f7375f = j4;
            this.f7376g = j5;
        }
    }

    void a(a aVar);

    void a(a aVar, int i2);

    void a(a aVar, int i2, int i3);

    void a(a aVar, int i2, int i3, int i4, float f2);

    void a(a aVar, int i2, long j2);

    void a(a aVar, int i2, long j2, long j3);

    void a(a aVar, int i2, e eVar);

    void a(a aVar, int i2, Format format);

    void a(a aVar, int i2, String str, long j2);

    void a(a aVar, Surface surface);

    void a(a aVar, K k2);

    void a(a aVar, w.b bVar, w.c cVar);

    void a(a aVar, w.b bVar, w.c cVar, IOException iOException, boolean z);

    void a(a aVar, w.c cVar);

    void a(a aVar, ExoPlaybackException exoPlaybackException);

    void a(a aVar, Metadata metadata);

    void a(a aVar, TrackGroupArray trackGroupArray, o oVar);

    void a(a aVar, Exception exc);

    void a(a aVar, boolean z);

    void a(a aVar, boolean z, int i2);

    void b(a aVar);

    void b(a aVar, int i2);

    void b(a aVar, int i2, long j2, long j3);

    void b(a aVar, int i2, e eVar);

    void b(a aVar, w.b bVar, w.c cVar);

    void b(a aVar, w.c cVar);

    void b(a aVar, boolean z);

    void c(a aVar);

    void c(a aVar, int i2);

    void c(a aVar, w.b bVar, w.c cVar);

    void d(a aVar);

    void d(a aVar, int i2);

    void e(a aVar);

    void f(a aVar);

    void g(a aVar);

    void h(a aVar);

    void i(a aVar);
}
