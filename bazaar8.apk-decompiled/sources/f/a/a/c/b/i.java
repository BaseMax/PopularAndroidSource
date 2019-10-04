package f.a.a.c.b;

import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.answers.CustomEvent;
import f.a.a.c.b.o;

/* compiled from: SyncAPICallHandler */
class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f13962a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ k f13963b;

    public i(k kVar, String str) {
        this.f13963b = kVar;
        this.f13962a = str;
    }

    public void run() {
        Answers.getInstance().logCustom((CustomEvent) ((CustomEvent) ((CustomEvent) new CustomEvent("InlineRequests").putCustomAttribute("duration", (Number) Long.valueOf(System.currentTimeMillis() - this.f13963b.f13966a))).putCustomAttribute("cached", "false")).putCustomAttribute("status", "OK"));
        o.a aVar = this.f13963b.f13967b;
        if (aVar != null) {
            aVar.a(this.f13962a);
        }
    }
}
