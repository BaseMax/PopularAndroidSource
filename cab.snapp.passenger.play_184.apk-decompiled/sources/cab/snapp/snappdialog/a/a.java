package cab.snapp.snappdialog.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.snappdialog.a;
import java.util.List;

public final class a extends RecyclerView.Adapter<C0026a> {

    /* renamed from: a  reason: collision with root package name */
    private Context f1441a;

    /* renamed from: b  reason: collision with root package name */
    private List<String> f1442b;

    /* renamed from: cab.snapp.snappdialog.a.a$a  reason: collision with other inner class name */
    public class C0026a extends RecyclerView.ViewHolder {
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public AppCompatTextView f1444b;

        public C0026a(View view) {
            super(view);
            this.f1444b = (AppCompatTextView) view.findViewById(a.e.title_item);
        }
    }

    public a(Context context, List<String> list) {
        this.f1441a = context;
        this.f1442b = list;
    }

    public final C0026a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new C0026a(LayoutInflater.from(this.f1441a).inflate(a.f.list_item_bullet, viewGroup, false));
    }

    public final void onBindViewHolder(C0026a aVar, int i) {
        List<String> list = this.f1442b;
        if (list != null && !list.isEmpty() && this.f1442b.size() >= i + 1) {
            aVar.f1444b.setText(this.f1442b.get(i));
        }
    }

    public final int getItemCount() {
        List<String> list = this.f1442b;
        if (list == null || list.isEmpty()) {
            return 0;
        }
        return this.f1442b.size();
    }

    public final void onViewDetachedFromWindow(C0026a aVar) {
        super.onViewDetachedFromWindow(aVar);
        List<String> list = this.f1442b;
        if (list != null) {
            list.clear();
            this.f1442b = null;
        }
    }
}
