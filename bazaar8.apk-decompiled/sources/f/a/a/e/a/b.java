package f.a.a.e.a;

import android.content.res.ColorStateList;
import android.view.View;
import androidx.appcompat.widget.AppCompatButton;
import f.a.a.e;
import f.a.a.e.a.a.a;
import f.a.a.e.a.a.c;
import f.a.a.e.g;
import ir.cafebazaar.inline.ui.Theme;
import ir.cafebazaar.inline.ui.inflaters.ButtonInflater;

/* compiled from: ButtonChanger */
public class b extends d {

    /* renamed from: c  reason: collision with root package name */
    public String f14020c = null;

    /* renamed from: d  reason: collision with root package name */
    public f.a.a.g.d.a.b f14021d = null;

    /* renamed from: e  reason: collision with root package name */
    public ButtonInflater.Style f14022e = null;

    public b() {
        a((a) new c());
    }

    public void b(String str) {
        this.f14020c = str;
    }

    public boolean c() {
        return (this.f14021d == null && this.f14020c == null && this.f14022e == null) ? false : true;
    }

    public void a(f.a.a.g.d.a.b bVar) {
        this.f14021d = bVar;
    }

    public void b(View view, g gVar) {
        AppCompatButton appCompatButton;
        if (view instanceof AppCompatButton) {
            appCompatButton = (AppCompatButton) view;
        } else {
            appCompatButton = (AppCompatButton) view.findViewById(e.button);
        }
        String str = this.f14020c;
        if (str != null) {
            appCompatButton.setText(str);
        }
        if (this.f14021d != null) {
            appCompatButton.setOnClickListener(new a(this, gVar));
        }
        if (this.f14022e != null) {
            Theme g2 = gVar.g();
            if (g2 != null) {
                appCompatButton.setBackgroundResource(this.f14022e.f());
                appCompatButton.setTextColor(this.f14022e.a(g2));
                int[][] iArr = {new int[]{16842919}, new int[0]};
                int[] iArr2 = new int[2];
                iArr2[0] = c.c.a.d.g.a.a(g2.a(), g2.h(), this.f14022e.h() == ButtonInflater.Style.primary ? 0.2f : 0.8f);
                iArr2[1] = g2.h();
                appCompatButton.setSupportBackgroundTintList(new ColorStateList(iArr, iArr2));
            }
        }
    }

    public void a(ButtonInflater.Style style) {
        this.f14022e = style;
    }
}
