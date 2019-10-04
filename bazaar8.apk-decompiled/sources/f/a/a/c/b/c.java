package f.a.a.c.b;

import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.answers.CustomEvent;
import f.a.a.a.b;

/* compiled from: CachedAPICallHandler */
class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ d f13950a;

    public c(d dVar) {
        this.f13950a = dVar;
    }

    public void run() {
        d dVar = this.f13950a;
        dVar.f13952b.a((String) ((b) dVar.f13951a).b());
        Answers.getInstance().logCustom((CustomEvent) ((CustomEvent) ((CustomEvent) new CustomEvent("InlineRequests").putCustomAttribute("duration", (Number) Long.valueOf(System.currentTimeMillis() - this.f13950a.f13953c))).putCustomAttribute("cached", "true")).putCustomAttribute("status", "OK"));
    }
}
