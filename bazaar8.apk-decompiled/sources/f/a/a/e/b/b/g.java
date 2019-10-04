package f.a.a.e.b.b;

import android.content.res.ColorStateList;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import f.a.a.e;
import f.a.a.e.C1083c;
import f.a.a.f;

/* compiled from: CheckBoxInflater */
public class g extends B {

    /* renamed from: f  reason: collision with root package name */
    public boolean f14156f = false;

    /* renamed from: g  reason: collision with root package name */
    public boolean f14157g = false;

    public int b() {
        return f.inline_checkbox;
    }

    public void a(Object obj) {
        if (obj instanceof Boolean) {
            this.f14156f = ((Boolean) obj).booleanValue();
        }
    }

    public void a(boolean z) {
        this.f14157g = z;
    }

    public View a(f.a.a.e.g gVar, View view) {
        AppCompatCheckBox appCompatCheckBox = (AppCompatCheckBox) view.findViewById(e.checkbox);
        TextView textView = (TextView) view.findViewById(e.text);
        textView.setText(d());
        textView.setTextColor(gVar.g().j());
        textView.setOnClickListener(new C1059e(this, appCompatCheckBox));
        appCompatCheckBox.setChecked(this.f14156f);
        appCompatCheckBox.setSupportButtonTintList(new ColorStateList(new int[][]{new int[0]}, new int[]{gVar.g().h()}));
        C1060f fVar = new C1060f(this, appCompatCheckBox, (TextView) view.findViewById(e.error), view, gVar);
        a((C1083c) gVar.k(), fVar);
        return view;
    }
}
