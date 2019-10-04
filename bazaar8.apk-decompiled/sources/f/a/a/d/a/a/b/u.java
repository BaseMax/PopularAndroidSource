package f.a.a.d.a.a.b;

import f.a.a.d.a;
import f.a.a.d.f;
import f.a.a.e.b.M;
import f.a.a.g.d.a.b;
import ir.cafebazaar.inline.platform.xml.factory.CommonActionFactory;
import ir.cafebazaar.inline.ui.inflaters.PageInflater;
import org.w3c.dom.Element;

/* compiled from: SplashPageFactory */
public class u extends n {
    public PageInflater a() {
        return new M();
    }

    public a a(Object obj, f fVar) {
        M m = (M) super.a(obj, fVar);
        a(m, (Element) obj, fVar);
        return m;
    }

    public final void a(M m, Element element, f fVar) {
        if (element.hasAttribute("action")) {
            m.a((b) new CommonActionFactory(false).a(element, fVar));
        }
    }
}
