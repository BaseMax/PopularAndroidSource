package cab.snapp.passenger.data_access_layer.a;

import androidx.collection.SparseArrayCompat;
import io.reactivex.b.c;
import io.reactivex.e.g;
import io.reactivex.observers.e;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    SparseArrayCompat<io.reactivex.j.b<?>> f474a = new SparseArrayCompat<>();

    public final <T> void emit(int i, T t) {
        a(i).onNext(t);
    }

    public final <T> c subscribe(int i, g<T> gVar) {
        return a(i).subscribe(gVar, $$Lambda$b$GoEHnUsKzYUz5IM6DCQdeNidIUg.INSTANCE);
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void a(Throwable th) throws Exception {
        if (th == null || !(th instanceof ClassCastException)) {
            throw new Exception(th);
        }
        th.printStackTrace();
    }

    public final void clearAll() {
        for (int i = 0; i < this.f474a.size(); i++) {
            SparseArrayCompat<io.reactivex.j.b<?>> sparseArrayCompat = this.f474a;
            sparseArrayCompat.get(sparseArrayCompat.keyAt(i)).onComplete();
        }
        this.f474a.clear();
    }

    public final int size() {
        return this.f474a.size();
    }

    private io.reactivex.j.b a(int i) {
        if (this.f474a.get(i) == null) {
            this.f474a.append(i, io.reactivex.j.b.create());
        }
        return this.f474a.get(i);
    }

    public final e test(int i) {
        return a(i).test();
    }
}
