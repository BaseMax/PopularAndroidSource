package f.a.a.g.d.a;

import android.content.Intent;
import android.view.View;
import f.a.a.e.g;

/* compiled from: ShareAction */
public class q extends t {
    public q(String str) {
        super(str);
    }

    public void a(g gVar, View view) {
        String a2 = a();
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", a2);
        intent.setType("text/plain");
        gVar.f().startActivity(intent);
    }
}
