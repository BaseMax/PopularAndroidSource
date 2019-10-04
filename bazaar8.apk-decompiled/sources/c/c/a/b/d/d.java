package c.c.a.b.d;

import com.farsitel.bazaar.common.model.ui.EntityState;
import h.f.b.j;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: DownloadStateManager.kt */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final Map<String, EntityState> f4581a = new LinkedHashMap();

    public final void a(String str, EntityState entityState) {
        j.b(str, "entityId");
        j.b(entityState, "state");
        this.f4581a.put(str, entityState);
    }

    public final void b() {
        this.f4581a.clear();
    }

    public final boolean a(String str) {
        j.b(str, "entityId");
        return this.f4581a.remove(str) != null;
    }

    public final Map<String, EntityState> a() {
        return this.f4581a;
    }
}
