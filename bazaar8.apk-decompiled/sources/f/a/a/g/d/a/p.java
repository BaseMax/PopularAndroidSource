package f.a.a.g.d.a;

import android.view.View;
import com.crashlytics.android.answers.SearchEvent;
import f.a.a.c.b.b;
import f.a.a.e.g;
import f.a.a.g.d.j;
import java.util.HashMap;

/* compiled from: SearchInstantAction */
public class p extends t {

    /* renamed from: b  reason: collision with root package name */
    public String f14454b = "";

    public p(String str) {
        super(str);
    }

    public void a(String str) {
        this.f14454b = str;
    }

    public void a(g gVar, View view) {
        HashMap hashMap = new HashMap();
        hashMap.put(SearchEvent.QUERY_ATTRIBUTE, this.f14454b);
        new b(gVar.h(), a(), hashMap).a(new j(gVar));
    }
}
