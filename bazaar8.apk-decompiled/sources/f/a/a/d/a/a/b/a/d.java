package f.a.a.d.a.a.b.a;

import f.a.a.d.f;
import f.a.a.e.b.b.B;
import ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater;
import org.w3c.dom.Element;

/* compiled from: ControllableInputFactory */
public abstract class d extends g {
    public final B a(Element element, f fVar) {
        ControllableInputInflater b2 = b(element, fVar);
        b(b2, element);
        a(b2, element);
        return b2;
    }

    public abstract ControllableInputInflater b(Element element, f fVar);

    public void b(ControllableInputInflater controllableInputInflater, Element element) {
        if (element.hasAttribute("placeholder")) {
            controllableInputInflater.d(element.getAttribute("placeholder"));
        }
    }

    public void a(ControllableInputInflater controllableInputInflater, Element element) {
        if (element.hasAttribute("optional")) {
            controllableInputInflater.a(true);
        } else {
            controllableInputInflater.a(false);
        }
    }
}
