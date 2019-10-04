package f.a.a.g.d;

import android.widget.Toast;
import f.a.a.c.d;
import f.a.a.e.g;
import ir.cafebazaar.inline.ui.InlineActivity;

/* compiled from: BackActionCallListener */
public class c extends h {
    public c(g gVar) {
        super(gVar);
        this.f14442b.setCancelable(false);
    }

    public void a(String str) {
        if (this.f14442b.isShowing()) {
            super.a(str);
            b().f().w().h();
        }
    }

    public void a(int i2, String str) {
        if (this.f14442b.isShowing()) {
            InlineActivity f2 = b().f();
            Toast.makeText(f2, d.b(b().f(), i2, str) + ": " + d.a(b().f(), i2, str), 1).show();
            b().f().a(true);
        }
    }
}
