package f.a.a.e.a;

import android.view.View;
import androidx.appcompat.widget.AppCompatButton;
import f.a.a.e.a.a.a;
import f.a.a.e.a.a.c;
import f.a.a.e.g;
import f.a.a.g.d.a.b;

/* compiled from: FooterActionChanger */
public class h extends p {

    /* renamed from: c  reason: collision with root package name */
    public String f14029c;

    /* renamed from: d  reason: collision with root package name */
    public b f14030d;

    public h(boolean z) {
        a((q) new f(this, z));
        a((a) new c());
    }

    public void b(View view, g gVar) {
        AppCompatButton appCompatButton = (AppCompatButton) view;
        String str = this.f14029c;
        if (str != null) {
            appCompatButton.setText(str);
        }
        if (this.f14030d != null) {
            appCompatButton.setOnClickListener(new g(this, gVar, appCompatButton));
        }
    }

    public boolean c() {
        return (this.f14029c == null && this.f14030d == null) ? false : true;
    }

    public void a(String str) {
        this.f14029c = str;
    }

    public void a(b bVar) {
        this.f14030d = bVar;
    }
}
