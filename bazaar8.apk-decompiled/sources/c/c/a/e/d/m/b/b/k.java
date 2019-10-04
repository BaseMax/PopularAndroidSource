package c.c.a.e.d.m.b.b;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.transaction.TransactionItem;
import h.a.m;
import java.util.ArrayList;
import java.util.List;

/* compiled from: GetTransactionsResponseDto.kt */
public final class k {
    @c("transactions")
    public final List<q> transactions;

    public final List<TransactionItem> a() {
        List<q> list = this.transactions;
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (q a2 : list) {
            arrayList.add(a2.a());
        }
        return arrayList;
    }
}
