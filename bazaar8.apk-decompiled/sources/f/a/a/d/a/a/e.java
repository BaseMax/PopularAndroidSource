package f.a.a.d.a.a;

import f.a.a.d.a;
import f.a.a.d.f;
import ir.cafebazaar.inline.ux.flow.pull.Puller;
import org.w3c.dom.Element;

/* compiled from: PullerFactory */
public class e implements a.C0141a {
    public a a(Object obj, f fVar) {
        Element element = (Element) obj;
        Puller puller = new Puller();
        c(puller, element);
        a(puller, element);
        b(puller, element);
        return puller;
    }

    public void b(Puller puller, Element element) {
        if (element.hasAttribute("keepOnPolicy")) {
            puller.a(Puller.ContextAgnosticPolicy.valueOf(element.getAttribute("keepOnPolicy")));
        }
    }

    public void c(Puller puller, Element element) {
        if (element.hasAttribute("target")) {
            puller.a(element.getAttribute("target"));
        }
    }

    public void a(Puller puller, Element element) {
        if (element.hasAttribute("frequency")) {
            puller.a(Puller.Frequency.valueOf(element.getAttribute("frequency")));
        }
    }
}
