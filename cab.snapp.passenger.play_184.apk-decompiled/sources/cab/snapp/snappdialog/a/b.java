package cab.snapp.snappdialog.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.snappdialog.a;
import cab.snapp.snappdialog.b.c;
import java.util.ArrayList;
import java.util.List;

public final class b extends RecyclerView.Adapter<a> {

    /* renamed from: a  reason: collision with root package name */
    private Context f1445a;

    /* renamed from: b  reason: collision with root package name */
    private List<String> f1446b;
    /* access modifiers changed from: private */
    public List<Integer> c = new ArrayList();
    /* access modifiers changed from: private */
    public List<String> d = new ArrayList();
    private List<CheckBox> e = new ArrayList();
    private List<View> f = new ArrayList();
    private int g;
    /* access modifiers changed from: private */
    public c h;

    class a extends RecyclerView.ViewHolder {
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public View f1452b;
        /* access modifiers changed from: private */
        public AppCompatTextView c;
        /* access modifiers changed from: private */
        public CheckBox d;

        /* synthetic */ a(b bVar, View view, byte b2) {
            this(view);
        }

        private a(View view) {
            super(view);
            this.f1452b = view;
            this.c = (AppCompatTextView) view.findViewById(a.e.title_item);
            this.d = (CheckBox) view.findViewById(a.e.checkbox_item);
        }
    }

    public b(Context context, List<String> list, int i, c cVar) {
        this.f1445a = context;
        this.f1446b = list;
        this.g = i;
        this.h = cVar;
    }

    public final a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new a(this, LayoutInflater.from(this.f1445a).inflate(a.f.list_item_checkbox, viewGroup, false), (byte) 0);
    }

    public final void onBindViewHolder(final a aVar, final int i) {
        List<String> list = this.f1446b;
        if (list != null && !list.isEmpty() && this.f1446b.size() >= i + 1) {
            aVar.c.setText(this.f1446b.get(i));
            aVar.f1452b.setOnClickListener(new View.OnClickListener() {
                public final void onClick(View view) {
                    if (aVar.d.isChecked()) {
                        aVar.d.setChecked(false);
                    } else {
                        aVar.d.setChecked(true);
                    }
                }
            });
            this.f.add(aVar.f1452b);
            aVar.d.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    if (z) {
                        if (b.this.d.contains(aVar.c.getText().toString())) {
                            b.this.d.set(b.this.d.indexOf(aVar.c.getText().toString()), aVar.c.getText().toString());
                        } else {
                            b.this.d.add(aVar.c.getText().toString());
                        }
                        if (b.this.c.contains(Integer.valueOf(i))) {
                            b.this.c.set(b.this.c.indexOf(Integer.valueOf(i)), Integer.valueOf(i));
                        } else {
                            b.this.c.add(Integer.valueOf(i));
                        }
                    } else {
                        if (b.this.d.contains(aVar.c.getText().toString())) {
                            b.this.d.remove(aVar.c.getText().toString());
                        }
                        if (b.this.c.contains(Integer.valueOf(i))) {
                            b.this.c.remove(b.this.c.indexOf(Integer.valueOf(i)));
                        }
                    }
                    if (b.this.h != null) {
                        b.this.h.onMultipleItemsSelected(b.this.c, b.this.d);
                    }
                }
            });
            this.e.add(aVar.d);
            if (this.g == i) {
                aVar.d.setChecked(true);
            }
        }
    }

    public final int getItemCount() {
        List<String> list = this.f1446b;
        if (list == null || list.isEmpty()) {
            return 0;
        }
        return this.f1446b.size();
    }

    public final void onViewDetachedFromWindow(a aVar) {
        super.onViewDetachedFromWindow(aVar);
        List<Integer> list = this.c;
        if (list != null) {
            list.clear();
            this.c = null;
        }
        List<String> list2 = this.d;
        if (list2 != null) {
            list2.clear();
            this.d = null;
        }
        this.h = null;
        List<CheckBox> list3 = this.e;
        if (list3 != null) {
            for (CheckBox onCheckedChangeListener : list3) {
                onCheckedChangeListener.setOnCheckedChangeListener(null);
            }
            this.e.clear();
            this.e = null;
        }
        List<View> list4 = this.f;
        if (list4 != null) {
            for (View onClickListener : list4) {
                onClickListener.setOnClickListener(null);
            }
            this.f.clear();
            this.f = null;
        }
    }
}
