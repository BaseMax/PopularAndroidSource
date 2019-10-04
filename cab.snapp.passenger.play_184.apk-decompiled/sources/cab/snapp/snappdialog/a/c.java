package cab.snapp.snappdialog.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.snappdialog.a;
import cab.snapp.snappdialog.b.d;
import java.util.ArrayList;
import java.util.List;

public final class c extends RecyclerView.Adapter<a> {

    /* renamed from: a  reason: collision with root package name */
    private Context f1453a;

    /* renamed from: b  reason: collision with root package name */
    private List<String> f1454b;
    private List<RadioButton> c = new ArrayList();
    private List<View> d = new ArrayList();
    private int e;
    private d f;

    class a extends RecyclerView.ViewHolder {
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public View f1460b;
        /* access modifiers changed from: private */
        public AppCompatTextView c;
        /* access modifiers changed from: private */
        public RadioButton d;

        public a(View view) {
            super(view);
            this.f1460b = view;
            this.c = (AppCompatTextView) view.findViewById(a.e.title_item);
            this.d = (RadioButton) view.findViewById(a.e.radio_button_item);
        }
    }

    public c(Context context, List<String> list, int i, d dVar) {
        this.f1453a = context;
        this.f1454b = list;
        this.e = i;
        this.f = dVar;
    }

    public final a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new a(LayoutInflater.from(this.f1453a).inflate(a.f.list_item_radio_button, viewGroup, false));
    }

    public final void onBindViewHolder(final a aVar, final int i) {
        List<String> list = this.f1454b;
        if (list != null && !list.isEmpty() && this.f1454b.size() >= i + 1) {
            aVar.c.setText(this.f1454b.get(i));
            aVar.f1460b.setOnClickListener(new View.OnClickListener() {
                public final void onClick(View view) {
                    aVar.d.setChecked(true);
                }
            });
            this.d.add(aVar.f1460b);
            aVar.d.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    if (z) {
                        c.a(c.this, aVar.d, i);
                    }
                }
            });
            this.c.add(aVar.d);
            if (this.e == i) {
                aVar.d.setChecked(true);
            }
        }
    }

    public final int getItemCount() {
        List<String> list = this.f1454b;
        if (list == null || list.isEmpty()) {
            return 0;
        }
        return this.f1454b.size();
    }

    public final void onViewDetachedFromWindow(a aVar) {
        super.onViewDetachedFromWindow(aVar);
        List<RadioButton> list = this.c;
        if (list != null) {
            for (RadioButton onCheckedChangeListener : list) {
                onCheckedChangeListener.setOnCheckedChangeListener(null);
            }
            this.c.clear();
            this.c = null;
        }
        this.f = null;
        List<View> list2 = this.d;
        if (list2 != null) {
            for (View onClickListener : list2) {
                onClickListener.setOnClickListener(null);
            }
            this.d.clear();
            this.d = null;
        }
    }

    static /* synthetic */ void a(c cVar, RadioButton radioButton, int i) {
        List<RadioButton> list = cVar.c;
        if (list != null && list.contains(radioButton)) {
            for (RadioButton next : cVar.c) {
                if (cVar.c.indexOf(next) == cVar.c.indexOf(radioButton)) {
                    List<RadioButton> list2 = cVar.c;
                    list2.set(list2.indexOf(next), radioButton);
                } else {
                    next.setChecked(false);
                    List<RadioButton> list3 = cVar.c;
                    list3.set(list3.indexOf(next), next);
                }
            }
            d dVar = cVar.f;
            if (dVar != null) {
                dVar.onSingleItemSelected(i, cVar.f1454b.get(i));
            }
        }
    }
}
