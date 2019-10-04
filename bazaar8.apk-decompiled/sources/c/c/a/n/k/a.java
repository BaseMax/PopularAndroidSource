package c.c.a.n.k;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import c.c.a.f.C0440la;
import c.c.a.n.c.c.a.a.a.i;
import c.c.a.n.c.c.a.a.a.j;
import c.c.a.n.c.c.a.a.a.k;
import c.c.a.n.c.c.a.b;
import c.c.a.n.c.d.n;
import c.c.a.n.c.d.o;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.page.CommonItemType;
import com.farsitel.bazaar.common.model.page.HamiItem;
import com.farsitel.bazaar.common.model.page.ListItem;

/* compiled from: EditorChoiceAdapter.kt */
public final class a extends b {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public a(o.a aVar, o.a aVar2, o.a aVar3, c.c.a.n.c.c.a.a<HamiItem> aVar4, c.c.a.n.c.c.a.a<ListItem> aVar5, k kVar, j jVar, i iVar) {
        super(aVar, aVar2, aVar3, aVar4, aVar5, kVar, jVar, iVar);
        h.f.b.j.b(aVar, "onAppScrollListener");
        h.f.b.j.b(aVar2, "onVideoScrollListener");
        h.f.b.j.b(aVar3, "onPromoScrollListener");
        h.f.b.j.b(aVar4, "onPageHamiCommunicator");
        h.f.b.j.b(aVar5, "onPageListAppCommunicator");
        h.f.b.j.b(kVar, "onVideoListViewHolderCommunicator");
        h.f.b.j.b(jVar, "onSerialViewHolderCommunicator");
        h.f.b.j.b(iVar, "onEpisodeViewHolderCommunicator");
    }

    public n<RecyclerData> c(ViewGroup viewGroup, int i2) {
        h.f.b.j.b(viewGroup, "parent");
        if (i2 != CommonItemType.EDITOR_CHOICE_HEADER.getValue()) {
            return super.c(viewGroup, i2);
        }
        C0440la a2 = C0440la.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        h.f.b.j.a((Object) a2, "ItemEditorChoiceHeaderBi….context), parent, false)");
        return new n<>(a2);
    }
}
