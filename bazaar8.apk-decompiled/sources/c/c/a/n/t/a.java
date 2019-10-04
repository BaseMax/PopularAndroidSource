package c.c.a.n.t;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import c.c.a.f.C0401ab;
import c.c.a.f.C0409cb;
import c.c.a.f.C0417eb;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.ui.profile.ProfileItemViewType;
import com.farsitel.bazaar.ui.profile.ProfileRowItem;
import h.f.b.j;

/* compiled from: ProfileAdapter.kt */
public final class a extends c.c.a.n.c.d.a<ProfileRowItem> {
    public n<ProfileRowItem> c(ViewGroup viewGroup, int i2) {
        ViewDataBinding viewDataBinding;
        j.b(viewGroup, "parent");
        if (i2 == ProfileItemViewType.PROFILE_ITEM.ordinal()) {
            viewDataBinding = C0401ab.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) viewDataBinding, "ItemProfileBinding.infla….context), parent, false)");
        } else if (i2 == ProfileItemViewType.PROFILE_CREDIT_ITEM.ordinal()) {
            viewDataBinding = C0409cb.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) viewDataBinding, "ItemProfileCreditBinding….context), parent, false)");
        } else if (i2 == ProfileItemViewType.PROFILE_HEADER_ITEM.ordinal()) {
            viewDataBinding = C0417eb.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) viewDataBinding, "ItemProfileHeaderBinding….context), parent, false)");
        } else {
            throw new RuntimeException("Invalid item type for Profile Adapter");
        }
        return new n<>(viewDataBinding);
    }
}
