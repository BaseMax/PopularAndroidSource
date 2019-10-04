package f.a.a.g.e;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import f.a.a.e;
import f.a.a.e.b.C1072n;
import f.a.a.e.c.b;
import f.a.a.e.g;
import f.a.a.f;

/* compiled from: LoadMoreInflater */
public class c extends C1072n {
    public View a(g gVar, View view) {
        ProgressBar progressBar = (ProgressBar) view.findViewById(e.progressBar);
        progressBar.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        progressBar.setIndeterminateDrawable(new b(gVar.g().h()));
        progressBar.setBackgroundColor(gVar.g().a());
        return view;
    }

    public int b() {
        return f.inline_load_more;
    }
}
