package f.a.a.d.a.a.a;

import f.a.a.d.a;
import f.a.a.d.f;
import f.a.a.e.a.d;
import org.w3c.dom.Element;

/* compiled from: ElementChangerFactory */
public abstract class c implements a.C0141a {
    public a a(Object obj, f fVar) {
        Element element = (Element) obj;
        d a2 = a(element, fVar);
        a(a2, element);
        return a2;
    }

    public abstract d a(Element element, f fVar);

    public void a(d dVar, Element element) {
        if (element.hasAttribute("tag")) {
            dVar.a(element.getAttribute("tag"));
        }
    }
}
