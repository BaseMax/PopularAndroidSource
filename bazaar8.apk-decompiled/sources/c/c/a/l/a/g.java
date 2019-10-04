package c.c.a.l.a;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.l.k;
import h.f.a.b;
import h.f.b.j;
import h.h;

/* compiled from: TrackViewHolder.kt */
public final class g extends RecyclerView.w {
    public final ImageView t;
    public final TextView u;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public g(View view) {
        super(view);
        j.b(view, "view");
        View findViewById = view.findViewById(k.icon);
        j.a((Object) findViewById, "view.findViewById(R.id.icon)");
        this.t = (ImageView) findViewById;
        View findViewById2 = view.findViewById(k.title);
        j.a((Object) findViewById2, "view.findViewById(R.id.title)");
        this.u = (TextView) findViewById2;
    }

    public final void a(c cVar, int i2, b<? super Integer, h> bVar) {
        j.b(cVar, "entity");
        j.b(bVar, "click");
        this.f891b.setOnClickListener(new f(bVar, i2));
        this.u.setText(cVar.b());
        this.t.setVisibility(cVar.c() ^ true ? 4 : 0);
    }
}
