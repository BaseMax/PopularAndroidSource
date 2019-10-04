package c.c.a.n.t.c;

import android.content.Context;
import c.c.a.d.b.d;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.transaction.TransactionItemCommunicator;
import com.farsitel.bazaar.ui.profile.transactions.TransactionsFragment;
import h.f.b.j;

/* compiled from: TransactionsFragment.kt */
public final class b implements TransactionItemCommunicator {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ TransactionsFragment f6949a;

    public b(TransactionsFragment transactionsFragment) {
        this.f6949a = transactionsFragment;
    }

    public boolean onTokenItemLongClicked(String str) {
        j.b(str, "text");
        Context Ha = this.f6949a.Ha();
        j.a((Object) Ha, "requireContext()");
        d.a(Ha, str);
        this.f6949a.Qa().a(this.f6949a.b((int) R.string.copied_to_clipboard));
        return true;
    }
}
