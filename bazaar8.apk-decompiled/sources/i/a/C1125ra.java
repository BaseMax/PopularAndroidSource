package i.a;

import h.c.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import h.j.d;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* renamed from: i.a.ra  reason: case insensitive filesystem */
/* compiled from: Job.kt */
public interface C1125ra extends e.b {

    /* renamed from: c  reason: collision with root package name */
    public static final b f14859c = b.f14860a;

    /* renamed from: i.a.ra$a */
    /* compiled from: Job.kt */
    public static final class a {
        public static <E extends e.b> E a(C1125ra raVar, e.c<E> cVar) {
            j.b(cVar, "key");
            return e.b.a.a((e.b) raVar, cVar);
        }

        public static e a(C1125ra raVar, e eVar) {
            j.b(eVar, "context");
            return e.b.a.a((e.b) raVar, eVar);
        }

        public static <R> R a(C1125ra raVar, R r, c<? super R, ? super e.b, ? extends R> cVar) {
            j.b(cVar, "operation");
            return e.b.a.a(raVar, r, cVar);
        }

        public static /* synthetic */ void a(C1125ra raVar, CancellationException cancellationException, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 1) != 0) {
                    cancellationException = null;
                }
                raVar.a(cancellationException);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }

        public static e b(C1125ra raVar, e.c<?> cVar) {
            j.b(cVar, "key");
            return e.b.a.b(raVar, cVar);
        }

        public static /* synthetic */ X a(C1125ra raVar, boolean z, boolean z2, h.f.a.b bVar, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 1) != 0) {
                    z = false;
                }
                if ((i2 & 2) != 0) {
                    z2 = true;
                }
                return raVar.a(z, z2, bVar);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invokeOnCompletion");
        }
    }

    /* renamed from: i.a.ra$b */
    /* compiled from: Job.kt */
    public static final class b implements e.c<C1125ra> {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ b f14860a = new b();

        static {
            CoroutineExceptionHandler.a aVar = CoroutineExceptionHandler.f15794c;
        }
    }

    X a(boolean z, boolean z2, h.f.a.b<? super Throwable, h> bVar);

    C1119o a(C1123q qVar);

    void a(CancellationException cancellationException);

    d<C1125ra> getChildren();

    boolean s();

    boolean start();

    CancellationException t();
}
