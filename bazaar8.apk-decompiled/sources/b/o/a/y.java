package b.o.a;

import android.util.Log;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.F;
import b.r.H;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: FragmentManagerViewModel */
public class y extends E {

    /* renamed from: c  reason: collision with root package name */
    public static final F.b f3122c = new x();

    /* renamed from: d  reason: collision with root package name */
    public final HashSet<Fragment> f3123d = new HashSet<>();

    /* renamed from: e  reason: collision with root package name */
    public final HashMap<String, y> f3124e = new HashMap<>();

    /* renamed from: f  reason: collision with root package name */
    public final HashMap<String, H> f3125f = new HashMap<>();

    /* renamed from: g  reason: collision with root package name */
    public final boolean f3126g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f3127h = false;

    /* renamed from: i  reason: collision with root package name */
    public boolean f3128i = false;

    public y(boolean z) {
        this.f3126g = z;
    }

    public static y a(H h2) {
        return (y) new F(h2, f3122c).a(y.class);
    }

    public void b(Fragment fragment) {
        if (v.f3095c) {
            Log.d("FragmentManager", "Clearing non-config state for " + fragment);
        }
        y yVar = this.f3124e.get(fragment.f662f);
        if (yVar != null) {
            yVar.d();
            this.f3124e.remove(fragment.f662f);
        }
        H h2 = this.f3125f.get(fragment.f662f);
        if (h2 != null) {
            h2.a();
            this.f3125f.remove(fragment.f662f);
        }
    }

    public y c(Fragment fragment) {
        y yVar = this.f3124e.get(fragment.f662f);
        if (yVar != null) {
            return yVar;
        }
        y yVar2 = new y(this.f3126g);
        this.f3124e.put(fragment.f662f, yVar2);
        return yVar2;
    }

    public void d() {
        if (v.f3095c) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f3127h = true;
    }

    public Collection<Fragment> e() {
        return this.f3123d;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || y.class != obj.getClass()) {
            return false;
        }
        y yVar = (y) obj;
        if (!this.f3123d.equals(yVar.f3123d) || !this.f3124e.equals(yVar.f3124e) || !this.f3125f.equals(yVar.f3125f)) {
            z = false;
        }
        return z;
    }

    public boolean f() {
        return this.f3127h;
    }

    public int hashCode() {
        return (((this.f3123d.hashCode() * 31) + this.f3124e.hashCode()) * 31) + this.f3125f.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it = this.f3123d.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it2 = this.f3124e.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it3 = this.f3125f.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public boolean e(Fragment fragment) {
        return this.f3123d.remove(fragment);
    }

    public boolean f(Fragment fragment) {
        if (!this.f3123d.contains(fragment)) {
            return true;
        }
        if (this.f3126g) {
            return this.f3127h;
        }
        return !this.f3128i;
    }

    public boolean a(Fragment fragment) {
        return this.f3123d.add(fragment);
    }

    public H d(Fragment fragment) {
        H h2 = this.f3125f.get(fragment.f662f);
        if (h2 != null) {
            return h2;
        }
        H h3 = new H();
        this.f3125f.put(fragment.f662f, h3);
        return h3;
    }
}
