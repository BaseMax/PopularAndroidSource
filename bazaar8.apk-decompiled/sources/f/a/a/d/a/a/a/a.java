package f.a.a.d.a.a.a;

import f.a.a.d.f;
import f.a.a.e.a.b;
import f.a.a.e.a.d;
import ir.cafebazaar.inline.ui.inflaters.ButtonInflater;
import org.w3c.dom.Element;

/* compiled from: ButtonChangerFactory */
public class a extends c {
    public d a(Element element, f fVar) {
        b bVar = new b();
        b(bVar, element);
        a(bVar, element, fVar);
        a(bVar, element);
        return bVar;
    }

    public void b(b bVar, Element element) {
        String trim = element.getTextContent().trim();
        if (trim.length() > 0) {
            bVar.b(trim);
        }
    }

    public void a(b bVar, Element element, f fVar) {
        if (element.hasAttribute("action")) {
            bVar.a((f.a.a.g.d.a.b) fVar.a("action", element));
        }
    }

    public void a(b bVar, Element element) {
        if (element.hasAttribute("style")) {
            bVar.a(ButtonInflater.Style.valueOf(element.getAttribute("style")));
        }
    }
}
