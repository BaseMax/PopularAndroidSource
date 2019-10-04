package f.a.a.d.a.a.b;

import f.a.a.d.a;
import f.a.a.d.f;
import f.a.a.e.b.C1072n;
import org.w3c.dom.Element;

/* compiled from: ElementFactory */
public abstract class i implements a.C0141a {
    public a a(Object obj, f fVar) {
        Element element = (Element) obj;
        C1072n a2 = a(element, fVar);
        b(a2, element);
        a(a2, element);
        return a2;
    }

    public abstract C1072n a(Element element, f fVar);

    public void b(C1072n nVar, Element element) {
        if (element.hasAttribute("tag")) {
            nVar.b(element.getAttribute("tag"));
        }
    }

    public final void a(C1072n nVar, Element element) {
        if (element.hasAttribute("weight")) {
            nVar.a(element.getAttribute("weight"));
        }
    }
}
