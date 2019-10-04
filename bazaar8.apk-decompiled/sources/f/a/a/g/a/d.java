package f.a.a.g.a;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageButton;
import b.i.c.a.a;
import f.a.a.e;
import f.a.a.f;
import f.a.a.g.a.n;
import java.util.Collections;
import java.util.List;

/* compiled from: AddressListAdapter */
public class d extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    public List<a> f14346a;

    /* renamed from: b  reason: collision with root package name */
    public n.a f14347b;

    /* renamed from: c  reason: collision with root package name */
    public Context f14348c;

    public d(Context context, List<a> list, n.a aVar) {
        this.f14348c = context;
        this.f14346a = list;
        this.f14347b = aVar;
    }

    public int getCount() {
        return this.f14346a.size();
    }

    public Object getItem(int i2) {
        return this.f14346a.get(i2);
    }

    public long getItemId(int i2) {
        return 0;
    }

    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(this.f14348c).inflate(f.inline_address_popup_item, viewGroup, false);
        }
        a aVar = (a) getItem(i2);
        View findViewById = view.findViewById(e.clickable_view);
        TextView textView = (TextView) view.findViewById(e.raw_address);
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) view.findViewById(e.edit);
        Drawable drawable = this.f14348c.getResources().getDrawable(f.a.a.d.ic_edit);
        a.b(drawable, -7829368);
        appCompatImageButton.setBackgroundDrawable(drawable);
        ((TextView) view.findViewById(e.title)).setText(aVar.e());
        if (aVar.b().length() > 50) {
            textView.setText(String.format("%s ...", new Object[]{aVar.b().substring(0, 50)}));
        } else {
            textView.setText(aVar.b());
        }
        findViewById.setOnClickListener(new b(this, aVar));
        appCompatImageButton.setOnClickListener(new c(this, aVar));
        return view;
    }

    public int getViewTypeCount() {
        return 2;
    }

    public void a(List<a> list) {
        this.f14346a.clear();
        this.f14346a.addAll(list);
        Collections.reverse(this.f14346a);
        notifyDataSetChanged();
    }
}
