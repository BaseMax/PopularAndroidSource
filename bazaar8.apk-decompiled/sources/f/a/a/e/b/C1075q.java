package f.a.a.e.b;

import android.content.res.ColorStateList;
import android.view.View;
import android.view.ViewStub;
import androidx.appcompat.widget.AppCompatButton;
import f.a.a.e;
import f.a.a.e.g;
import f.a.a.f;
import f.a.a.g.d.a.b;

/* renamed from: f.a.a.e.b.q  reason: case insensitive filesystem */
/* compiled from: FooterInflater */
public class C1075q implements Q {

    /* renamed from: a  reason: collision with root package name */
    public a f14260a;

    /* renamed from: b  reason: collision with root package name */
    public a f14261b;

    /* renamed from: f.a.a.e.b.q$a */
    /* compiled from: FooterInflater */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f14262a;

        /* renamed from: b  reason: collision with root package name */
        public b f14263b;

        public a(String str, b bVar) {
            this.f14262a = str;
            this.f14263b = bVar;
        }
    }

    public int f() {
        return e.footer;
    }

    public void a(a aVar) {
        this.f14260a = aVar;
    }

    public void b(a aVar) {
        this.f14261b = aVar;
    }

    public View a(ViewStub viewStub, g gVar) {
        viewStub.setLayoutResource(f.inline_footer);
        View inflate = viewStub.inflate();
        inflate.setBackgroundColor(gVar.g().h());
        AppCompatButton appCompatButton = (AppCompatButton) inflate.findViewById(e.button);
        appCompatButton.setTextColor(gVar.g().g());
        appCompatButton.setText(this.f14260a.f14262a);
        appCompatButton.setSupportBackgroundTintList(new ColorStateList(new int[][]{new int[]{16842919}, new int[0]}, new int[]{c.c.a.d.g.a.a(gVar.g().a(), gVar.g().h(), 0.2f), gVar.g().h()}));
        if (this.f14260a.f14263b != null) {
            appCompatButton.setOnClickListener(new C1073o(this, gVar));
        }
        if (this.f14261b != null) {
            View findViewById = inflate.findViewById(e.separator);
            findViewById.setVisibility(0);
            findViewById.setBackgroundColor(gVar.g().a());
            AppCompatButton appCompatButton2 = (AppCompatButton) inflate.findViewById(e.secondarybutton);
            appCompatButton2.setVisibility(0);
            appCompatButton2.setTextColor(gVar.g().g());
            appCompatButton2.setText(this.f14261b.f14262a);
            appCompatButton2.setSupportBackgroundTintList(new ColorStateList(new int[][]{new int[]{16842919}, new int[0]}, new int[]{c.c.a.d.g.a.a(gVar.g().a(), gVar.g().h(), 0.2f), gVar.g().h()}));
            if (this.f14261b.f14263b != null) {
                appCompatButton2.setOnClickListener(new C1074p(this, gVar));
            }
        }
        return inflate;
    }
}
