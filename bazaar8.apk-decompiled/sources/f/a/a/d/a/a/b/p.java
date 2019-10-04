package f.a.a.d.a.a.b;

import f.a.a.d.f;
import f.a.a.e.b.B;
import f.a.a.e.b.C1072n;
import org.w3c.dom.Element;

/* compiled from: RatingFactory */
public class p extends i {
    public C1072n a(Element element, f fVar) {
        B b2 = new B();
        a(b2, element);
        return b2;
    }

    public void a(B b2, Element element) {
        if (element.hasAttribute("value")) {
            b2.a(Float.valueOf(element.getAttribute("value")));
        }
    }
}
