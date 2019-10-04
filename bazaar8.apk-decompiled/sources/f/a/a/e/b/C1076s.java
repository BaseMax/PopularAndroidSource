package f.a.a.e.b;

import android.content.res.ColorStateList;
import android.view.View;
import android.view.ViewStub;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageButton;
import c.c.a.d.g.a;
import f.a.a.e;
import f.a.a.e.g;
import f.a.a.f;

/* renamed from: f.a.a.e.b.s  reason: case insensitive filesystem */
/* compiled from: HeaderInflater */
public class C1076s implements Q {

    /* renamed from: a  reason: collision with root package name */
    public String f14267a;

    public void a(String str) {
        this.f14267a = str;
    }

    public int f() {
        return e.header;
    }

    public View a(ViewStub viewStub, g gVar) {
        viewStub.setLayoutResource(f.inline_header);
        View inflate = viewStub.inflate();
        inflate.setBackgroundColor(gVar.g().h());
        TextView textView = (TextView) inflate.findViewById(e.title);
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) inflate.findViewById(e.backbutton);
        textView.setText(this.f14267a);
        textView.setTextColor(gVar.g().g());
        if (!gVar.f().w().d()) {
            appCompatImageButton.setOnClickListener(new r(this, gVar, appCompatImageButton));
            appCompatImageButton.setSupportBackgroundTintList(new ColorStateList(new int[][]{new int[]{16842919}, new int[0]}, new int[]{a.a(gVar.g().a(), gVar.g().g(), 0.2f), gVar.g().g()}));
        } else {
            appCompatImageButton.setVisibility(8);
        }
        return inflate;
    }
}
