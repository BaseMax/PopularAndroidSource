package f.a.a.g.d.a;

import android.view.View;
import f.a.a.c.b.b;
import f.a.a.e.g;
import java.util.HashMap;

/* compiled from: SubmitCommentAction */
public class s extends l {

    /* renamed from: d  reason: collision with root package name */
    public String f14455d;

    public s(String str) {
        super("comments/new", false, false);
        this.f14455d = str;
    }

    public void a(g gVar, View view) {
        super.a(gVar, view);
        HashMap hashMap = new HashMap();
        hashMap.put("comment", this.f14455d);
        new b(gVar.h(), a(), hashMap).a(null);
    }
}
