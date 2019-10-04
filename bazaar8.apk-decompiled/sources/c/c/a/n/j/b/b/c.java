package c.c.a.n.j.b.b;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import c.c.a.f.Ib;
import c.c.a.n.c.d.n;
import c.c.a.n.j.b.b.d;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.CrewItem;
import com.farsitel.bazaar.common.model.cinema.PersonModel;
import h.f.b.j;
import java.util.List;
import kotlin.TypeCastException;

/* compiled from: CrewItemViewHolder.kt */
public final class c extends n<RecyclerData> {
    public final Ib v;
    public final d.a w;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public c(Ib ib, d.a aVar) {
        super(ib);
        j.b(ib, "viewBinding");
        j.b(aVar, "crewsPersonClickListener");
        this.v = ib;
        this.w = aVar;
        a(false);
    }

    public final c.e.a.c.h.d a(Context context, CrewItem crewItem, d.a aVar) {
        TextView textView;
        c.e.a.c.h.d dVar = new c.e.a.c.h.d(context);
        dVar.setChipSpacingVertical((int) context.getResources().getDimension(R.dimen.default_margin_half));
        dVar.setChipSpacingHorizontal((int) context.getResources().getDimension(R.dimen.default_margin_double));
        List<PersonModel> persons = crewItem.getPersons();
        if (persons != null) {
            for (PersonModel personModel : persons) {
                if (personModel.isLinkable()) {
                    View inflate = c.c.a.d.b.d.c(context).inflate(R.layout.item_video_detail_crew_persons_item_bold, null);
                    if (inflate != null) {
                        textView = (TextView) inflate;
                        textView.setOnClickListener(new b(personModel, context, aVar, dVar));
                    } else {
                        throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
                    }
                } else {
                    View inflate2 = c.c.a.d.b.d.c(context).inflate(R.layout.item_video_detail_crew_persons_item_normal, null);
                    if (inflate2 != null) {
                        textView = (TextView) inflate2;
                    } else {
                        throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
                    }
                }
                textView.setText(personModel.getName());
                dVar.addView(textView);
            }
        }
        return dVar;
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        if (recyclerData instanceof CrewItem) {
            FrameLayout frameLayout = this.v.B;
            frameLayout.removeAllViews();
            Context context = frameLayout.getContext();
            j.a((Object) context, "context");
            frameLayout.addView(a(context, (CrewItem) recyclerData, this.w));
            return;
        }
        throw new IllegalStateException("Check failed.");
    }
}
