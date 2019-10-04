package c.c.a.n.q;

import android.content.Context;
import c.c.a.e.d.b.ba;
import c.c.a.n.c.c.t;
import c.c.a.n.c.c.u;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.data.entity.None;
import h.c;
import h.d;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import i.a.C1103g;
import i.a.C1125ra;
import java.util.Locale;
import java.util.Map;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: MaliciousAppViewModel.kt */
public final class e extends t<None> {
    public static final /* synthetic */ i[] x;
    public final int A;
    public final Context B;
    public final ba C;
    public final boolean y;
    public final c z = d.a(new MaliciousAppViewModel$locale$2(this));

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(e.class), "locale", "getLocale()Ljava/util/Locale;");
        k.a((PropertyReference1) propertyReference1Impl);
        x = new i[]{propertyReference1Impl};
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public e(Context context, u uVar, ba baVar) {
        super(context, uVar);
        j.b(context, "context");
        j.b(uVar, "env");
        j.b(baVar, "upgradableAppRepository");
        this.B = context;
        this.C = baVar;
    }

    public void a(Map<String, ? extends EntityState> map) {
        j.b(map, "entitiesState");
    }

    public boolean o() {
        return this.y;
    }

    public final Locale q() {
        c cVar = this.z;
        i iVar = x[0];
        return (Locale) cVar.getValue();
    }

    /* renamed from: a */
    public void d(None none) {
        j.b(none, "params");
        C1125ra unused = C1103g.b(this, null, null, new MaliciousAppViewModel$makeData$1(this, null), 3, null);
    }
}
