package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.transaction.TransactionItem;
import com.farsitel.bazaar.common.model.transaction.TransactionItemCommunicator;

/* compiled from: ItemTransactionBinding */
public abstract class Ab extends ViewDataBinding {
    public TransactionItem A;
    public TransactionItemCommunicator B;
    public Integer C;

    public Ab(Object obj, View view, int i2) {
        super(obj, view, i2);
    }

    public static Ab a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Ab a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Ab) ViewDataBinding.a(layoutInflater, (int) R.layout.item_transaction, viewGroup, z, obj);
    }
}
