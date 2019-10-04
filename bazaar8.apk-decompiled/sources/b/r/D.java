package b.r;

import androidx.lifecycle.LiveData;
import b.c.a.c.a;

/* compiled from: Transformations */
public class D {
    public static <X, Y> LiveData<Y> a(LiveData<X> liveData, a<X, Y> aVar) {
        r rVar = new r();
        rVar.a(liveData, new C(rVar, aVar));
        return rVar;
    }
}
