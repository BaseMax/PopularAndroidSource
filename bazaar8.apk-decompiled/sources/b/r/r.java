package b.r;

import androidx.lifecycle.LiveData;
import b.c.a.b.b;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MediatorLiveData */
public class r<T> extends t<T> {

    /* renamed from: k  reason: collision with root package name */
    public b<LiveData<?>, a<?>> f3180k = new b<>();

    /* compiled from: MediatorLiveData */
    private static class a<V> implements u<V> {

        /* renamed from: a  reason: collision with root package name */
        public final LiveData<V> f3181a;

        /* renamed from: b  reason: collision with root package name */
        public final u<? super V> f3182b;

        /* renamed from: c  reason: collision with root package name */
        public int f3183c = -1;

        public a(LiveData<V> liveData, u<? super V> uVar) {
            this.f3181a = liveData;
            this.f3182b = uVar;
        }

        public void a() {
            this.f3181a.a(this);
        }

        public void b() {
            this.f3181a.b(this);
        }

        public void a(V v) {
            if (this.f3183c != this.f3181a.b()) {
                this.f3183c = this.f3181a.b();
                this.f3182b.a(v);
            }
        }
    }

    public <S> void a(LiveData<S> liveData, u<? super S> uVar) {
        a aVar = new a(liveData, uVar);
        a b2 = this.f3180k.b(liveData, aVar);
        if (b2 == null || b2.f3182b == uVar) {
            if (b2 == null && c()) {
                aVar.a();
            }
            return;
        }
        throw new IllegalArgumentException("This source was already added with the different observer");
    }

    public void d() {
        Iterator<Map.Entry<LiveData<?>, a<?>>> it = this.f3180k.iterator();
        while (it.hasNext()) {
            ((a) it.next().getValue()).a();
        }
    }

    public void e() {
        Iterator<Map.Entry<LiveData<?>, a<?>>> it = this.f3180k.iterator();
        while (it.hasNext()) {
            ((a) it.next().getValue()).b();
        }
    }
}
