package f.a.a.d.a.a.a;

import f.a.a.d.f;
import f.a.a.e.a.d;
import f.a.a.e.a.k;
import org.w3c.dom.Element;

/* compiled from: ImageChangerFactory */
public class e extends c {
    public d a(Element element, f fVar) {
        k kVar = new k();
        a(kVar, element);
        return kVar;
    }

    public void a(k kVar, Element element) {
        if (element.hasAttribute("src")) {
            kVar.b(element.getAttribute("src"));
        }
    }
}
