package f.a.a.d.a.a.b.a;

import f.a.a.d.f;
import f.a.a.e.b.b.B;
import f.a.a.e.b.b.g;
import org.w3c.dom.Element;

/* compiled from: CheckBoxFactory */
public class b extends g {
    public B a(Element element, f fVar) {
        g gVar = new g();
        b(gVar, element);
        c(gVar, element);
        a(gVar, element);
        return gVar;
    }

    public void b(g gVar, Element element) {
        gVar.d(element.getTextContent().trim());
    }

    public void c(g gVar, Element element) {
        if (element.hasAttribute("value")) {
            gVar.a((Object) Boolean.valueOf(element.getAttribute("value").toLowerCase().equals("true")));
        }
    }

    public void a(g gVar, Element element) {
        if (element.hasAttribute("mandatory")) {
            gVar.a(element.getAttribute("mandatory").toLowerCase().equals("true"));
        }
    }
}
