package f.a.a.c;

import c.c.a.c.a.b;
import c.c.a.e.d.k.c;
import com.farsitel.bazaar.common.model.inline.InlineAppInfo;
import com.farsitel.bazaar.common.model.inline.InlineRelayService;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;
import i.a.I;
import i.a.va;

/* compiled from: InlineNetwork.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final C1125ra f13942a = va.a(null, 1, null);

    /* renamed from: b  reason: collision with root package name */
    public final c f13943b;

    public a(c cVar) {
        j.b(cVar, "repository");
        this.f13943b = cVar;
    }

    public final void a(String str, b<InlineAppInfo> bVar) {
        j.b(str, "kashanId");
        j.b(bVar, "callback");
        C1125ra unused = C1103g.b(I.a(b.f4693c.b().plus(this.f13942a)), null, null, new InlineNetwork$getInlineAppInfo$1(this, str, bVar, null), 3, null);
    }

    public final void a(InlineRelayService inlineRelayService, b<String> bVar) {
        j.b(inlineRelayService, "payload");
        j.b(bVar, "callback");
        C1125ra unused = C1103g.b(I.a(b.f4693c.b().plus(this.f13942a)), null, null, new InlineNetwork$replyService$1(this, inlineRelayService, bVar, null), 3, null);
    }
}
