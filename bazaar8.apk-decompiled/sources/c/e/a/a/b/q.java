package c.e.a.a.b;

import android.os.Handler;
import c.e.a.a.c.e;
import c.e.a.a.o.C0737e;
import com.google.android.exoplayer2.Format;

/* compiled from: AudioRendererEventListener */
public interface q {

    /* compiled from: AudioRendererEventListener */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Handler f7476a;

        /* renamed from: b  reason: collision with root package name */
        public final q f7477b;

        public a(Handler handler, q qVar) {
            Handler handler2;
            if (qVar != null) {
                C0737e.a(handler);
                handler2 = handler;
            } else {
                handler2 = null;
            }
            this.f7476a = handler2;
            this.f7477b = qVar;
        }

        public void a(String str, long j2, long j3) {
            if (this.f7477b != null) {
                Handler handler = this.f7476a;
                C0689b bVar = new C0689b(this, str, j2, j3);
                handler.post(bVar);
            }
        }

        public void b(e eVar) {
            if (this.f7477b != null) {
                this.f7476a.post(new C0690c(this, eVar));
            }
        }

        public /* synthetic */ void c(e eVar) {
            eVar.a();
            this.f7477b.a(eVar);
        }

        public /* synthetic */ void d(e eVar) {
            this.f7477b.b(eVar);
        }

        public void a(Format format) {
            if (this.f7477b != null) {
                this.f7476a.post(new C0688a(this, format));
            }
        }

        public /* synthetic */ void b(String str, long j2, long j3) {
            this.f7477b.b(str, j2, j3);
        }

        public /* synthetic */ void b(Format format) {
            this.f7477b.b(format);
        }

        public void a(int i2, long j2, long j3) {
            if (this.f7477b != null) {
                Handler handler = this.f7476a;
                C0693f fVar = new C0693f(this, i2, j2, j3);
                handler.post(fVar);
            }
        }

        public /* synthetic */ void b(int i2, long j2, long j3) {
            this.f7477b.a(i2, j2, j3);
        }

        public /* synthetic */ void b(int i2) {
            this.f7477b.c(i2);
        }

        public void a(e eVar) {
            eVar.a();
            if (this.f7477b != null) {
                this.f7476a.post(new C0692e(this, eVar));
            }
        }

        public void a(int i2) {
            if (this.f7477b != null) {
                this.f7476a.post(new C0691d(this, i2));
            }
        }
    }

    void a(int i2, long j2, long j3);

    void a(e eVar);

    void b(e eVar);

    void b(Format format);

    void b(String str, long j2, long j3);

    void c(int i2);
}
