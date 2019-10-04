package f.a.a.d.a.a.b.a;

import f.a.a.d.a;
import f.a.a.d.f;
import f.a.a.e.b.b.B;
import ir.cafebazaar.inline.ux.prefill.PrefillDomain;
import org.w3c.dom.Element;

/* compiled from: InputFactory */
public abstract class g implements a.C0141a {
    public a a(Object obj, f fVar) {
        Element element = (Element) obj;
        B a2 = a(element, fVar);
        a(a2, element);
        b(a2, element);
        return a2;
    }

    public abstract B a(Element element, f fVar);

    public void b(B b2, Element element) {
        if (element.hasAttribute("prefill")) {
            b2.a(PrefillDomain.valueOf(element.getAttribute("prefill")));
        }
    }

    public void a(B b2, Element element) {
        if (element.hasAttribute("field")) {
            b2.c(element.getAttribute("field"));
        }
    }
}
