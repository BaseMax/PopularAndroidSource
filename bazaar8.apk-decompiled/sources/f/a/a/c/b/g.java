package f.a.a.c.b;

import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.answers.CustomEvent;
import f.a.a.a.b;
import f.a.a.c.b.o;
import ir.cafebazaar.inline.platform.InlineApplication;
import java.util.Map;

/* compiled from: CachedAPICallHandler */
public class g extends o {

    /* renamed from: d  reason: collision with root package name */
    public String f13959d;

    public g(InlineApplication inlineApplication, String str, Map<String, Object> map, String str2) {
        super(inlineApplication, str, map);
        this.f13959d = str2;
    }

    public void a(o.a aVar) {
        if (this.f13979b.a().b(this.f13959d)) {
            long currentTimeMillis = System.currentTimeMillis();
            aVar.a();
            Object a2 = this.f13979b.a().a(this.f13959d);
            if (a2 instanceof String) {
                aVar.a((String) this.f13979b.a().a(this.f13959d));
                Answers.getInstance().logCustom((CustomEvent) ((CustomEvent) ((CustomEvent) new CustomEvent("InlineRequests").putCustomAttribute("duration", (Number) Long.valueOf(System.currentTimeMillis() - currentTimeMillis))).putCustomAttribute("cached", "true")).putCustomAttribute("status", "OK"));
            } else if (a2 instanceof b) {
                d dVar = new d(this, a2, aVar, currentTimeMillis);
                new Thread(dVar).start();
            } else {
                new Thread(new e(this, aVar)).start();
            }
        } else {
            new Thread(new f(this, aVar)).start();
        }
    }
}
