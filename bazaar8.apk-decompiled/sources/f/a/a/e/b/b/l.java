package f.a.a.e.b.b;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.TextView;
import b.i.b.a;
import b.i.k.z;
import f.a.a.b;
import f.a.a.d;
import f.a.a.d.e;
import f.a.a.e.b.b.B;
import f.a.a.e.g;
import f.a.a.f;
import ir.cafebazaar.inline.ui.Theme;
import ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater;
import java.util.List;

/* compiled from: ChoicesInflater */
public class l extends ControllableInputInflater {

    /* renamed from: g  reason: collision with root package name */
    public List<e> f14175g;

    /* renamed from: h  reason: collision with root package name */
    public int f14176h = -1;

    public int e(String str) {
        for (int i2 = 0; i2 < this.f14175g.size(); i2++) {
            if (this.f14175g.get(i2).b().equals(str)) {
                return i2;
            }
        }
        return -1;
    }

    public int f() {
        return f.inline_choices;
    }

    public void a(List<e> list) {
        this.f14175g = list;
    }

    public void a(Object obj) {
        if (obj instanceof Integer) {
            this.f14176h = ((Integer) obj).intValue();
        } else if (obj instanceof String) {
            this.f14176h = e((String) obj);
        }
    }

    public B.a a(View view, g gVar, ControllableInputInflater.InputController inputController) {
        TextView textView = (TextView) view;
        Theme g2 = gVar.g();
        ColorStateList colorStateList = new ColorStateList(new int[][]{new int[0]}, new int[]{g2.h()});
        textView.setTextColor(g2.j());
        z.a((View) textView, colorStateList);
        h hVar = new h(this, gVar, textView, inputController, new ColorStateList(new int[][]{new int[]{16842908}, new int[0]}, new int[]{g2.h(), gVar.k().S().getColor(b.red_notif)}), colorStateList);
        Drawable c2 = a.c(gVar.k().E(), d.ic_menu);
        b.i.c.a.a.b(c2, g2.h());
        textView.setCompoundDrawablesWithIntrinsicBounds(c2, null, null, null);
        o oVar = new o(gVar, this.f14175g);
        oVar.a(new i(this, textView));
        textView.setOnClickListener(new j(this, oVar, gVar, textView));
        k kVar = new k(this, textView, inputController, oVar, gVar);
        textView.setOnFocusChangeListener(kVar);
        int i2 = this.f14176h;
        if (i2 != -1) {
            textView.setText(this.f14175g.get(i2).a());
            if (!textView.getText().toString().isEmpty()) {
                inputController.a(ControllableInputInflater.InputController.Placeholder.UP, false);
            }
        }
        return hVar;
    }
}
