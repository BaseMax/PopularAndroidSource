package f.a.a.g.d.a;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import f.a.a.e.g;

/* compiled from: TelAction */
public class u extends t {
    public u(String str) {
        super(str);
    }

    public void a(g gVar, View view) {
        String a2 = a();
        if (a2.matches("[0-9]+")) {
            gVar.f().startActivity(new Intent("android.intent.action.DIAL", Uri.fromParts("tel", a2, null)));
        }
    }
}
