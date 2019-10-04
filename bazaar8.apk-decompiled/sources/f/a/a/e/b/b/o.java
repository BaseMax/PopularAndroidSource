package f.a.a.e.b.b;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;
import b.i.k.z;
import f.a.a.d;
import f.a.a.d.e;
import f.a.a.e.g;
import f.a.a.f;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ChoicesPopup */
public class o extends A<Integer> {

    /* renamed from: d  reason: collision with root package name */
    public List<e> f14181d;

    /* compiled from: ChoicesPopup */
    class a extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        public List<Pair<Integer, e>> f14182a;

        /* renamed from: b  reason: collision with root package name */
        public String f14183b;

        public a() {
            a("");
        }

        public void a(String str) {
            String str2 = this.f14183b;
            if (str2 == null || !str2.equals(str)) {
                this.f14183b = str.toLowerCase();
                this.f14182a = new ArrayList();
                for (int i2 = 0; i2 < o.this.f14181d.size(); i2++) {
                    e eVar = (e) o.this.f14181d.get(i2);
                    if (eVar.a().toLowerCase().startsWith(this.f14183b) || eVar.b().toLowerCase().startsWith(this.f14183b)) {
                        this.f14182a.add(new Pair(Integer.valueOf(i2), eVar));
                    }
                }
                super.notifyDataSetChanged();
            }
        }

        public int getCount() {
            return this.f14182a.size();
        }

        public Object getItem(int i2) {
            return this.f14182a.get(i2);
        }

        public long getItemId(int i2) {
            return 0;
        }

        public View getView(int i2, View view, ViewGroup viewGroup) {
            TextView textView;
            if (view == null) {
                textView = (TextView) LayoutInflater.from(o.this.d().f()).inflate(f.inline_choices_popup_item, viewGroup, false);
            } else {
                textView = (TextView) view;
            }
            textView.setText(((e) this.f14182a.get(i2).second).a());
            return textView;
        }

        public int a(int i2) {
            return ((Integer) this.f14182a.get(i2).first).intValue();
        }
    }

    public o(g gVar, List<e> list) {
        super(gVar);
        this.f14181d = list;
    }

    public View a(LayoutInflater layoutInflater, g gVar) {
        View inflate = layoutInflater.inflate(f.inline_choices_popup, null);
        ListView listView = (ListView) inflate.findViewById(f.a.a.e.list);
        a aVar = new a();
        listView.setAdapter(aVar);
        listView.setOnItemClickListener(new m(this, aVar));
        EditText editText = (EditText) inflate.findViewById(f.a.a.e.search);
        if (this.f14181d.size() <= 7) {
            editText.setVisibility(8);
        } else {
            z.a((View) editText, new ColorStateList(new int[][]{new int[0]}, new int[]{-12303292}));
            Drawable c2 = b.i.b.a.c(gVar.f().getApplicationContext(), d.ic_search);
            b.i.c.a.a.b(c2, -12303292);
            editText.setCompoundDrawablesWithIntrinsicBounds(c2, null, null, null);
            editText.addTextChangedListener(new n(this, aVar));
        }
        return inflate;
    }
}
