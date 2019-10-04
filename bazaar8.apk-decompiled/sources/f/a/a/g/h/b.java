package f.a.a.g.h;

import android.content.SharedPreferences;
import f.a.a.a.c.c;
import f.a.a.e.g;
import f.a.a.g.h.a.a;
import java.util.HashMap;
import java.util.Map;

/* compiled from: PrefillManager */
public class b implements c {

    /* renamed from: a  reason: collision with root package name */
    public g f14499a;

    /* renamed from: b  reason: collision with root package name */
    public f.a.a.g.h.a.b f14500b;

    /* renamed from: c  reason: collision with root package name */
    public f.a.a.g.h.a.b f14501c;

    /* renamed from: d  reason: collision with root package name */
    public a f14502d = new a(this.f14501c);

    /* renamed from: e  reason: collision with root package name */
    public Map<String, f.a.a.g.h.a.b> f14503e = new HashMap();

    public b(g gVar) {
        this.f14499a = gVar;
        SharedPreferences sharedPreferences = gVar.f().getApplicationContext().getSharedPreferences("inline_prefill_pref", 0);
        this.f14500b = new f.a.a.g.h.a.c(sharedPreferences, "global");
        f.a.a.g.h.a.b bVar = this.f14500b;
        this.f14501c = new f.a.a.g.h.a.c(bVar, sharedPreferences, "app_" + gVar.h().d());
    }

    public f.a.a.g.h.a.b a() {
        String c2 = this.f14499a.f().w().c();
        if (!this.f14503e.containsKey(c2)) {
            this.f14503e.put(c2, new a(this.f14502d));
        }
        return this.f14503e.get(c2);
    }
}
