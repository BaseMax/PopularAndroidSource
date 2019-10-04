package cab.snapp.passenger.data_access_layer.a;

import androidx.collection.SparseArrayCompat;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.z;

public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected SparseArrayCompat<z> f470a = new SparseArrayCompat<>();

    /* renamed from: b  reason: collision with root package name */
    protected SparseArrayCompat<c> f471b = new SparseArrayCompat<>();

    /* access modifiers changed from: protected */
    public final void a(int i) {
        b(i);
    }

    private void b(int i) {
        c cVar = this.f471b.get(i);
        if (cVar != null) {
            cVar.dispose();
        }
        this.f471b.remove(i);
    }

    public <T> void addDataSource(z<T> zVar, final int i) {
        this.f470a.append(i, zVar);
        zVar.subscribe((ag<? super T>) new ag<T>() {
            public final void onError(Throwable th) {
            }

            public final void onNext(T t) {
            }

            public final void onSubscribe(c cVar) {
                a.this.f471b.append(i, cVar);
            }

            public final void onComplete() {
                a.this.a(i);
            }
        });
    }

    public void removeDataSource(int i) {
        b(i);
        this.f470a.remove(i);
    }
}
