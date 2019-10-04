package c.b.a;

import android.content.Context;
import android.util.Log;
import com.bumptech.glide.Registry;
import com.farsitel.bazaar.core.util.imageloader.BazaarGlideModule;
import java.util.Collections;
import java.util.Set;

/* compiled from: GeneratedAppGlideModuleImpl */
public final class b extends a {

    /* renamed from: a  reason: collision with root package name */
    public final BazaarGlideModule f3726a = new BazaarGlideModule();

    public b() {
        if (Log.isLoggable("Glide", 3)) {
            Log.d("Glide", "Discovered AppGlideModule from annotation: com.farsitel.bazaar.core.util.imageloader.BazaarGlideModule");
        }
    }

    public void a(Context context, f fVar) {
        this.f3726a.a(context, fVar);
    }

    public Set<Class<?>> b() {
        return Collections.emptySet();
    }

    public void a(Context context, e eVar, Registry registry) {
        this.f3726a.a(context, eVar, registry);
    }

    public c c() {
        return new c();
    }

    public boolean a() {
        return this.f3726a.a();
    }
}
