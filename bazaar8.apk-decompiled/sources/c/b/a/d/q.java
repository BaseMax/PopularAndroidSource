package c.b.a.d;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import androidx.fragment.app.Fragment;
import b.o.a.C0285i;
import c.b.a.e;
import c.b.a.n;
import java.util.HashSet;
import java.util.Set;

/* compiled from: SupportRequestManagerFragment */
public class q extends Fragment {
    public final a Y;
    public final o Z;
    public final Set<q> aa;
    public q ba;
    public n ca;
    public Fragment da;

    /* compiled from: SupportRequestManagerFragment */
    private class a implements o {
        public a() {
        }

        public String toString() {
            return super.toString() + "{fragment=" + q.this + "}";
        }
    }

    public q() {
        this(new a());
    }

    public a La() {
        return this.Y;
    }

    public final Fragment Ma() {
        Fragment Q = Q();
        return Q != null ? Q : this.da;
    }

    public n Na() {
        return this.ca;
    }

    public o Oa() {
        return this.Z;
    }

    public final void Pa() {
        q qVar = this.ba;
        if (qVar != null) {
            qVar.b(this);
            this.ba = null;
        }
    }

    public void a(n nVar) {
        this.ca = nVar;
    }

    public final void b(q qVar) {
        this.aa.remove(qVar);
    }

    public void oa() {
        super.oa();
        this.Y.a();
        Pa();
    }

    public void ra() {
        super.ra();
        this.da = null;
        Pa();
    }

    public String toString() {
        return super.toString() + "{parent=" + Ma() + "}";
    }

    public void ua() {
        super.ua();
        this.Y.b();
    }

    public void va() {
        super.va();
        this.Y.c();
    }

    @SuppressLint({"ValidFragment"})
    public q(a aVar) {
        this.Z = new a();
        this.aa = new HashSet();
        this.Y = aVar;
    }

    public final void a(q qVar) {
        this.aa.add(qVar);
    }

    public void b(Fragment fragment) {
        this.da = fragment;
        if (fragment != null && fragment.x() != null) {
            a(fragment.x());
        }
    }

    public final void a(C0285i iVar) {
        Pa();
        this.ba = e.b((Context) iVar).i().b(iVar);
        if (!equals(this.ba)) {
            this.ba.a(this);
        }
    }

    public void a(Context context) {
        super.a(context);
        try {
            a(x());
        } catch (IllegalStateException e2) {
            if (Log.isLoggable("SupportRMFragment", 5)) {
                Log.w("SupportRMFragment", "Unable to register fragment with root", e2);
            }
        }
    }
}
