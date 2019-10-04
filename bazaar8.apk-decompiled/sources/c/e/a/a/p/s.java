package c.e.a.a.p;

import android.os.Handler;
import android.view.Surface;
import c.e.a.a.c.e;
import c.e.a.a.o.C0737e;
import com.google.android.exoplayer2.Format;

/* compiled from: VideoRendererEventListener */
public interface s {

    /* compiled from: VideoRendererEventListener */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Handler f9726a;

        /* renamed from: b  reason: collision with root package name */
        public final s f9727b;

        public a(Handler handler, s sVar) {
            Handler handler2;
            if (sVar != null) {
                C0737e.a(handler);
                handler2 = handler;
            } else {
                handler2 = null;
            }
            this.f9726a = handler2;
            this.f9727b = sVar;
        }

        public void a(String str, long j2, long j3) {
            if (this.f9727b != null) {
                Handler handler = this.f9726a;
                d dVar = new d(this, str, j2, j3);
                handler.post(dVar);
            }
        }

        public void b(e eVar) {
            if (this.f9727b != null) {
                this.f9726a.post(new e(this, eVar));
            }
        }

        public /* synthetic */ void c(e eVar) {
            eVar.a();
            this.f9727b.d(eVar);
        }

        public /* synthetic */ void d(e eVar) {
            this.f9727b.c(eVar);
        }

        public void a(Format format) {
            if (this.f9727b != null) {
                this.f9726a.post(new a(this, format));
            }
        }

        public /* synthetic */ void b(String str, long j2, long j3) {
            this.f9727b.a(str, j2, j3);
        }

        public /* synthetic */ void b(Format format) {
            this.f9727b.a(format);
        }

        public void a(int i2, long j2) {
            if (this.f9727b != null) {
                this.f9726a.post(new g(this, i2, j2));
            }
        }

        public /* synthetic */ void b(int i2, long j2) {
            this.f9727b.a(i2, j2);
        }

        public void b(int i2, int i3, int i4, float f2) {
            if (this.f9727b != null) {
                Handler handler = this.f9726a;
                c cVar = new c(this, i2, i3, i4, f2);
                handler.post(cVar);
            }
        }

        public /* synthetic */ void a(int i2, int i3, int i4, float f2) {
            this.f9727b.a(i2, i3, i4, f2);
        }

        public /* synthetic */ void a(Surface surface) {
            this.f9727b.a(surface);
        }

        public void b(Surface surface) {
            if (this.f9727b != null) {
                this.f9726a.post(new b(this, surface));
            }
        }

        public void a(e eVar) {
            eVar.a();
            if (this.f9727b != null) {
                this.f9726a.post(new f(this, eVar));
            }
        }
    }

    void a(int i2, int i3, int i4, float f2);

    void a(int i2, long j2);

    void a(Surface surface);

    void a(Format format);

    void a(String str, long j2, long j3);

    void c(e eVar);

    void d(e eVar);
}
