package b.w;

import b.r.E;
import b.r.F;
import b.r.H;
import java.util.HashMap;
import java.util.Iterator;
import java.util.UUID;

/* renamed from: b.w.l  reason: case insensitive filesystem */
/* compiled from: NavControllerViewModel */
public class C0315l extends E {

    /* renamed from: c  reason: collision with root package name */
    public static final F.b f3304c = new C0314k();

    /* renamed from: d  reason: collision with root package name */
    public final HashMap<UUID, H> f3305d = new HashMap<>();

    public static C0315l a(H h2) {
        return (C0315l) new F(h2, f3304c).a(C0315l.class);
    }

    public H b(UUID uuid) {
        H h2 = this.f3305d.get(uuid);
        if (h2 != null) {
            return h2;
        }
        H h3 = new H();
        this.f3305d.put(uuid, h3);
        return h3;
    }

    public void d() {
        for (UUID a2 : this.f3305d.keySet()) {
            a(a2);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NavControllerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} ViewModelStores (");
        Iterator<UUID> it = this.f3305d.keySet().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public void a(UUID uuid) {
        H remove = this.f3305d.remove(uuid);
        if (remove != null) {
            remove.a();
        }
    }
}
