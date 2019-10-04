package b.x;

import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: PreferenceViewHolder */
public class B extends RecyclerView.w {
    public final SparseArray<View> t = new SparseArray<>(4);
    public boolean u;
    public boolean v;

    public B(View view) {
        super(view);
        this.t.put(16908310, view.findViewById(16908310));
        this.t.put(16908304, view.findViewById(16908304));
        this.t.put(16908294, view.findViewById(16908294));
        SparseArray<View> sparseArray = this.t;
        int i2 = E.icon_frame;
        sparseArray.put(i2, view.findViewById(i2));
        this.t.put(16908350, view.findViewById(16908350));
    }

    public boolean B() {
        return this.u;
    }

    public boolean C() {
        return this.v;
    }

    public void b(boolean z) {
        this.u = z;
    }

    public View c(int i2) {
        View view = this.t.get(i2);
        if (view != null) {
            return view;
        }
        View findViewById = this.f891b.findViewById(i2);
        if (findViewById != null) {
            this.t.put(i2, findViewById);
        }
        return findViewById;
    }

    public void c(boolean z) {
        this.v = z;
    }
}
