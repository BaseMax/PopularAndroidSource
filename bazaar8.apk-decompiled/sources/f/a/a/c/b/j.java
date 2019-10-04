package f.a.a.c.b;

import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.answers.CustomEvent;
import f.a.a.c.b.o;

/* compiled from: SyncAPICallHandler */
class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f13964a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ k f13965b;

    public j(k kVar, String str) {
        this.f13965b = kVar;
        this.f13964a = str;
    }

    public void run() {
        Answers.getInstance().logCustom((CustomEvent) ((CustomEvent) ((CustomEvent) new CustomEvent("InlineRequests").putCustomAttribute("duration", (Number) Long.valueOf(System.currentTimeMillis() - this.f13965b.f13966a))).putCustomAttribute("cached", "false")).putCustomAttribute("status", "Error"));
        o.a aVar = this.f13965b.f13967b;
        if (aVar != null) {
            aVar.a(3, this.f13964a);
        }
    }
}
