package c.c.a.d.b;

import androidx.fragment.app.Fragment;
import androidx.lifecycle.LiveData;
import com.farsitel.bazaar.core.model.Resource;
import h.f.a.b;
import h.f.b.j;

/* compiled from: LiveDataExt.kt */
public final class h {
    public static final <T, L extends LiveData<Resource<? extends T>>> void a(Fragment fragment, L l2, b<? super Resource<? extends T>, h.h> bVar) {
        j.b(fragment, "$this$observe");
        j.b(l2, "liveData");
        j.b(bVar, "body");
        l2.a(fragment.ba(), new g(bVar));
    }
}
