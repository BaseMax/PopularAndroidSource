package c.c.a.n.j.b.b;

import android.content.Context;
import android.view.View;
import c.c.a.n.j.b.b.d;
import com.farsitel.bazaar.common.model.cinema.PersonModel;
import h.f.b.j;

/* compiled from: CrewItemViewHolder.kt */
final class b implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ PersonModel f6463a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Context f6464b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ d.a f6465c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ c.e.a.c.h.d f6466d;

    public b(PersonModel personModel, Context context, d.a aVar, c.e.a.c.h.d dVar) {
        this.f6463a = personModel;
        this.f6464b = context;
        this.f6465c = aVar;
        this.f6466d = dVar;
    }

    public final void onClick(View view) {
        d.a aVar = this.f6465c;
        String slug = this.f6463a.getSlug();
        if (slug != null) {
            String name = this.f6463a.getName();
            if (name != null) {
                aVar.a(slug, name, this.f6463a.getReferrer());
            } else {
                j.a();
                throw null;
            }
        } else {
            j.a();
            throw null;
        }
    }
}
