package c.c.a.n.u.a;

import android.content.Context;
import b.r.t;
import c.c.a.e.d.r.e;
import c.c.a.e.g.a;
import c.c.a.n.c.d.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;
import h.a.k;
import i.a.C1103g;
import i.a.C1125ra;

/* compiled from: DeveloperReplyViewModel.kt */
public final class j extends g<RecyclerData, Integer> {

    /* renamed from: j  reason: collision with root package name */
    public final t<ToolbarInfoModel> f6980j = new t<>();

    /* renamed from: k  reason: collision with root package name */
    public final Context f6981k;

    /* renamed from: l  reason: collision with root package name */
    public final e f6982l;

    public j(Context context, e eVar) {
        h.f.b.j.b(context, "context");
        h.f.b.j.b(eVar, "reviewRepository");
        this.f6981k = context;
        this.f6982l = eVar;
    }

    public void c(int i2) {
        C1125ra unused = C1103g.b(this, null, null, new DeveloperReplyViewModel$makeData$1(this, i2, null), 3, null);
    }

    public /* bridge */ /* synthetic */ void d(Object obj) {
        c(((Number) obj).intValue());
    }

    public final t<ToolbarInfoModel> j() {
        return this.f6980j;
    }

    public final void a(a aVar) {
        a(k.a(aVar.c()));
        t<ToolbarInfoModel> tVar = this.f6980j;
        String b2 = aVar.b();
        String a2 = aVar.a();
        String string = this.f6981k.getString(R.string.developer_reply);
        h.f.b.j.a((Object) string, "context.getString(\n     …loper_reply\n            )");
        tVar.b(new ToolbarInfoModel(b2, a2, string));
    }
}
