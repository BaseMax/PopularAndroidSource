package f.a.a.c.a;

import com.farsitel.bazaar.common.model.inline.InlineAppInfo;
import f.a.a.c.b;
import f.a.a.c.e;
import ir.cafebazaar.inline.platform.InlineApplication;

/* compiled from: AppInfoHandler */
class a implements b<InlineAppInfo> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ e f13944a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ b f13945b;

    public a(b bVar, e eVar) {
        this.f13945b = bVar;
        this.f13944a = eVar;
    }

    public void a(InlineAppInfo inlineAppInfo) {
        if (inlineAppInfo.getVersion() <= 100709) {
            e eVar = this.f13944a;
            InlineApplication inlineApplication = new InlineApplication(this.f13945b.f13946a, inlineAppInfo.getPackageName(), inlineAppInfo.getName(), inlineAppInfo.getIcon(), inlineAppInfo.getAccessible());
            eVar.a(inlineApplication);
            return;
        }
        this.f13944a.a(11, "");
    }

    public void a(String str) {
        this.f13944a.a(1, str);
    }
}
