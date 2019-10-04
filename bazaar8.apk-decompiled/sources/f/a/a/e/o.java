package f.a.a.e;

import android.content.DialogInterface;
import b.b.a.C0201l;
import f.a.a.g;
import f.a.a.g.c;
import f.a.a.h;

/* compiled from: InlineSpamConfirmDialog */
public class o extends c {

    /* renamed from: c  reason: collision with root package name */
    public a f14312c;

    /* compiled from: InlineSpamConfirmDialog */
    public interface a {
        void a();
    }

    public o(g gVar, a aVar) {
        super(gVar);
        this.f14312c = aVar;
    }

    public void e() {
        c().f().w().f();
    }

    public C0201l a() {
        C0201l.a aVar = new C0201l.a(c().f(), h.DialogInline);
        aVar.a((CharSequence) c().getApplicationContext().getString(g.you_want_to_report_review));
        aVar.b(c().getApplicationContext().getString(g.ok), new n(this));
        aVar.a((CharSequence) c().getApplicationContext().getString(g.inline_cancel), (DialogInterface.OnClickListener) null);
        return aVar.a();
    }
}
