package c.c.a.n.t.c;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import c.c.a.f.Ab;
import c.c.a.f.Cb;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.transaction.TransactionItemCommunicator;
import com.farsitel.bazaar.common.model.transaction.TransactionItemViewType;
import h.f.b.j;

/* compiled from: TransactionsAdapter.kt */
public final class a extends c.c.a.n.c.d.a<RecyclerData> {

    /* renamed from: f  reason: collision with root package name */
    public final TransactionItemCommunicator f6948f;

    /* renamed from: c.c.a.n.t.c.a$a  reason: collision with other inner class name */
    /* compiled from: TransactionsAdapter.kt */
    public static final class C0102a extends n<RecyclerData> {
        public final ViewDataBinding v;
        public final TransactionItemCommunicator w;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public C0102a(ViewDataBinding viewDataBinding, TransactionItemCommunicator transactionItemCommunicator) {
            super(viewDataBinding);
            j.b(viewDataBinding, "viewDataBinding");
            j.b(transactionItemCommunicator, "transactionItemCommunicator");
            this.v = viewDataBinding;
            this.w = transactionItemCommunicator;
        }

        public void b(RecyclerData recyclerData) {
            j.b(recyclerData, "item");
            this.v.a(9, (Object) this.w);
        }
    }

    public a(TransactionItemCommunicator transactionItemCommunicator) {
        j.b(transactionItemCommunicator, "transactionItemCommunicator");
        this.f6948f = transactionItemCommunicator;
    }

    public n<RecyclerData> c(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        if (i2 == TransactionItemViewType.TRANSACTION_ITEM.ordinal()) {
            Ab a2 = Ab.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) a2, "ItemTransactionBinding.i….context), parent, false)");
            return new C0102a(a2, this.f6948f);
        } else if (i2 == TransactionItemViewType.TRANSACTION_HEADER_ITEM.ordinal()) {
            Cb a3 = Cb.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) a3, "ItemTransactionHeaderBin….context), parent, false)");
            return new n<>(a3);
        } else {
            throw new IllegalAccessError("Invalid viewType in TransactionsAdapter");
        }
    }
}
