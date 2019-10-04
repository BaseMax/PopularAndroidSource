package f.a.a.d.a.a.b;

import f.a.a.d.a;
import f.a.a.d.f;
import f.a.a.e.b.L;
import f.a.a.g.d.a.o;
import f.a.a.g.d.a.p;
import org.w3c.dom.Element;

/* compiled from: SearchFactory */
public abstract class r implements a.C0141a {
    public a a(Object obj, f fVar) {
        L a2 = a();
        Element element = (Element) obj;
        d(a2, element);
        e(a2, element);
        b(a2, element);
        c(a2, element);
        a(a2, element);
        return a2;
    }

    public abstract L a();

    public void b(L l2, Element element) {
        if (element.hasAttribute("autofocus")) {
            l2.a(element.getAttribute("autofocus").toLowerCase().trim().equals("true"));
        }
    }

    public void c(L l2, Element element) {
        l2.a(element.getTextContent().trim());
    }

    public void d(L l2, Element element) {
        if (element.hasAttribute("placeholder")) {
            l2.b(element.getAttribute("placeholder"));
        }
    }

    public void e(L l2, Element element) {
        if (element.hasAttribute("update")) {
            l2.a(new p(element.getAttribute("update")));
        }
    }

    public void a(L l2, Element element) {
        if (element.hasAttribute("action")) {
            l2.a(new o(element.getAttribute("action")));
        }
    }
}
