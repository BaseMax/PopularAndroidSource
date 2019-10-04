package c.c.a.n.t.c;

import c.c.a.e.d.m.d;
import c.c.a.n.c.d.g;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.transaction.TransactionHeaderItem;
import com.farsitel.bazaar.common.model.transaction.TransactionItem;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.data.entity.None;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;
import java.util.ArrayList;
import java.util.List;

/* compiled from: TransactionsViewModel.kt */
public final class c extends g<RecyclerData, None> {

    /* renamed from: j  reason: collision with root package name */
    public final d f6950j;

    public c(d dVar) {
        j.b(dVar, "paymentRepository");
        this.f6950j = dVar;
    }

    public final void b(List<TransactionItem> list) {
        j.b(list, "items");
        ArrayList arrayList = new ArrayList();
        Resource e2 = e();
        List list2 = e2 != null ? (List) e2.a() : null;
        if (list2 == null || list2.isEmpty()) {
            arrayList.add(new TransactionHeaderItem());
        }
        arrayList.addAll(list);
        a(arrayList);
    }

    /* renamed from: a */
    public void d(None none) {
        j.b(none, "params");
        C1125ra unused = C1103g.b(this, null, null, new TransactionsViewModel$makeData$1(this, null), 3, null);
    }
}
