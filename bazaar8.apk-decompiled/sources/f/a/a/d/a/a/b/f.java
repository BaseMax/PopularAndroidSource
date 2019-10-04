package f.a.a.d.a.a.b;

import f.a.a.d.a;
import f.a.a.e.b.C1070l;
import ir.cafebazaar.inline.ui.inflaters.PageInflater;
import org.w3c.dom.Element;

/* compiled from: CommonPageFactory */
public class f extends n {
    public PageInflater a() {
        return new C1070l();
    }

    public void c(PageInflater pageInflater, Element element) {
        if (element.hasAttribute("skipBackstack")) {
            pageInflater.a(element.getAttribute("skipBackstack").toLowerCase().equals("true"));
        }
    }

    public a a(Object obj, f.a.a.d.f fVar) {
        C1070l lVar = (C1070l) super.a(obj, fVar);
        c(lVar, (Element) obj);
        return lVar;
    }
}
