package c.c.a.n.j.b.b;

import android.content.Context;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.f.Ob;
import c.c.a.n.c.d.n;
import c.c.a.n.j.b.a.b;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.CrewsItem;
import h.f.b.j;
import java.util.ArrayList;

/* compiled from: CrewsViewHolder.kt */
public final class d extends n<RecyclerData> {
    public final RecyclerView.o v;
    public final Ob w;
    public final a x;

    /* compiled from: CrewsViewHolder.kt */
    public interface a {
        void a(String str, String str2, String str3);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public d(RecyclerView.o oVar, Ob ob, a aVar) {
        super(ob);
        j.b(oVar, "sharedPool");
        j.b(ob, "viewBinding");
        j.b(aVar, "crewsPersonClickListener");
        this.v = oVar;
        this.w = ob;
        this.x = aVar;
    }

    public final LinearLayoutManager a(Context context) {
        return new LinearLayoutManager(context);
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        RecyclerView recyclerView = this.w.A;
        Context context = recyclerView.getContext();
        j.a((Object) context, "context");
        recyclerView.setLayoutManager(a(context));
        b bVar = new b(this.x);
        bVar.a(new ArrayList(((CrewsItem) recyclerData).getItems()));
        recyclerView.setAdapter(bVar);
        recyclerView.setHasFixedSize(true);
        recyclerView.setRecycledViewPool(this.v);
        recyclerView.setNestedScrollingEnabled(false);
    }
}
