package f.a.a.e.a;

import android.view.View;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import f.a.a.e.b.C1072n;
import f.a.a.e.g;
import f.a.a.g.e.b;
import java.util.List;

/* compiled from: ListChanger */
public class l extends d {

    /* renamed from: c  reason: collision with root package name */
    public List<C1072n> f14037c;

    public void a(List<C1072n> list) {
        this.f14037c = list;
    }

    public void b(View view, g gVar) {
        if (view instanceof LinearLayout) {
            int i2 = 0;
            while (true) {
                LinearLayout linearLayout = (LinearLayout) view;
                if (i2 >= linearLayout.getChildCount()) {
                    break;
                }
                View childAt = linearLayout.getChildAt(i2);
                if (childAt instanceof RecyclerView) {
                    view = childAt;
                    break;
                }
                i2++;
            }
        }
        if (view instanceof RecyclerView) {
            RecyclerView.a adapter = ((RecyclerView) view).getAdapter();
            if (adapter != null) {
                if (adapter instanceof b) {
                    ((b) adapter).a(this.f14037c);
                    return;
                }
                throw new IllegalArgumentException("Adapter must be is InlineListAdapter");
            }
        }
    }

    public boolean c() {
        List<C1072n> list = this.f14037c;
        return list != null && list.size() > 0;
    }
}
