package f.a.a.g.d.a;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.view.View;
import f.a.a.e.g;

/* compiled from: IntentAction */
public class i extends t {
    public i(String str) {
        super(str);
    }

    public void a(g gVar, View view) {
        Uri parse = Uri.parse(a());
        PackageManager packageManager = gVar.f().getPackageManager();
        Intent data = new Intent("android.intent.action.VIEW").setData(parse);
        if (data.resolveActivity(packageManager) != null) {
            gVar.f().startActivity(data);
        }
    }
}
