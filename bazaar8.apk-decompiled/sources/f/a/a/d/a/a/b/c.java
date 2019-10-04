package f.a.a.d.a.a.b;

import f.a.a.d.f;
import f.a.a.e.b.C1072n;
import f.a.a.g.d.a.b;
import ir.cafebazaar.inline.platform.xml.factory.CommonActionFactory;
import ir.cafebazaar.inline.ui.inflaters.ButtonInflater;
import org.w3c.dom.Element;

/* compiled from: ButtonFactory */
public class c extends i {
    public C1072n a(Element element, f fVar) {
        ButtonInflater buttonInflater = new ButtonInflater();
        b(buttonInflater, element);
        a(buttonInflater, element);
        a(buttonInflater, element, fVar);
        return buttonInflater;
    }

    public void b(ButtonInflater buttonInflater, Element element) {
        buttonInflater.c(element.getTextContent());
    }

    public void a(ButtonInflater buttonInflater, Element element) {
        if (element.hasAttribute("style")) {
            buttonInflater.a(ButtonInflater.Style.valueOf(element.getAttribute("style")));
        }
    }

    public void a(ButtonInflater buttonInflater, Element element, f fVar) {
        if (element.hasAttribute("action")) {
            buttonInflater.a((b) new CommonActionFactory(true).a(element, fVar));
        }
    }
}
