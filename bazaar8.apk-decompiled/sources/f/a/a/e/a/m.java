package f.a.a.e.a;

import android.os.Build;
import android.text.Html;
import android.view.View;
import android.widget.TextView;
import f.a.a.e;
import f.a.a.e.a.a.a;
import f.a.a.e.a.a.c;
import f.a.a.e.g;
import ir.cafebazaar.inline.ui.inflaters.TextInflater;

/* compiled from: TextChanger */
public class m extends d {

    /* renamed from: c  reason: collision with root package name */
    public String f14038c = null;

    public m() {
        a((a) new c());
    }

    public void b(String str) {
        this.f14038c = str;
    }

    public boolean c() {
        return this.f14038c != null;
    }

    public void b(View view, g gVar) {
        TextView textView = (TextView) view;
        if (this.f14038c != null) {
            String str = "&#8203;" + this.f14038c;
            if (((TextInflater.Style) textView.getTag(e.text_style_tag)) == TextInflater.Style.title) {
                textView.setText(this.f14038c);
            } else if (Build.VERSION.SDK_INT >= 24) {
                textView.setText(Html.fromHtml(str, 0, f.a.a.f.e.a().a(textView, gVar.k().S()), new TextInflater.a(gVar.g())));
            } else {
                textView.setText(Html.fromHtml(str, f.a.a.f.e.a().a(textView, gVar.k().S()), new TextInflater.a(gVar.g())));
            }
        }
    }
}
