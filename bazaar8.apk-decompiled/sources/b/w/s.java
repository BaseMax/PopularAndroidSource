package b.w;

import android.os.Bundle;
import b.w.K;

@K.b("navigation")
/* compiled from: NavGraphNavigator */
public class s extends K<r> {

    /* renamed from: a  reason: collision with root package name */
    public final L f3332a;

    public s(L l2) {
        this.f3332a = l2;
    }

    public boolean c() {
        return true;
    }

    public r a() {
        return new r(this);
    }

    public o a(r rVar, Bundle bundle, w wVar, K.a aVar) {
        int h2 = rVar.h();
        if (h2 != 0) {
            o a2 = rVar.a(h2, false);
            if (a2 != null) {
                return this.f3332a.a(a2.e()).a(a2, a2.a(bundle), wVar, aVar);
            }
            String g2 = rVar.g();
            throw new IllegalArgumentException("navigation destination " + g2 + " is not a direct child of this NavGraph");
        }
        throw new IllegalStateException("no start destination defined via app:startDestination for " + rVar.c());
    }
}
