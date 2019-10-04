package c.e.a.a.o;

import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: EventDispatcher */
public final class l<T> {

    /* renamed from: a  reason: collision with root package name */
    public final CopyOnWriteArrayList<b<T>> f9591a = new CopyOnWriteArrayList<>();

    /* compiled from: EventDispatcher */
    public interface a<T> {
        void a(T t);
    }

    /* compiled from: EventDispatcher */
    private static final class b<T> {

        /* renamed from: a  reason: collision with root package name */
        public final Handler f9592a;

        /* renamed from: b  reason: collision with root package name */
        public final T f9593b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f9594c;

        public b(Handler handler, T t) {
            this.f9592a = handler;
            this.f9593b = t;
        }

        public /* synthetic */ void b(a aVar) {
            if (!this.f9594c) {
                aVar.a(this.f9593b);
            }
        }

        public void a() {
            this.f9594c = true;
        }

        public void a(a<T> aVar) {
            this.f9592a.post(new C0733a(this, aVar));
        }
    }

    public void a(Handler handler, T t) {
        C0737e.a((handler == null || t == null) ? false : true);
        a(t);
        this.f9591a.add(new b(handler, t));
    }

    public void a(T t) {
        Iterator<b<T>> it = this.f9591a.iterator();
        while (it.hasNext()) {
            b next = it.next();
            if (next.f9593b == t) {
                next.a();
                this.f9591a.remove(next);
            }
        }
    }

    public void a(a<T> aVar) {
        Iterator<b<T>> it = this.f9591a.iterator();
        while (it.hasNext()) {
            it.next().a(aVar);
        }
    }
}
