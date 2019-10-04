package f.a.a.d.a.a.b;

import f.a.a.d.f;
import f.a.a.e.b.C1072n;
import f.a.a.g.d.a.b;
import ir.cafebazaar.inline.platform.xml.factory.CommonActionFactory;
import ir.cafebazaar.inline.ui.inflaters.CardInflater;
import ir.cafebazaar.inline.ui.inflaters.ImageInflater;
import ir.cafebazaar.inline.ui.inflaters.TextInflater;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* compiled from: CardFactory */
public class d extends i {
    public C1072n a(Element element, f fVar) {
        CardInflater cardInflater = new CardInflater();
        b(cardInflater, element, fVar);
        c(cardInflater, element, fVar);
        b(cardInflater, element);
        c(cardInflater, element);
        a(cardInflater, element);
        a(cardInflater, element, fVar);
        return cardInflater;
    }

    public void b(CardInflater cardInflater, Element element, f fVar) {
        cardInflater.a((ImageInflater) fVar.a("card:image", element.getElementsByTagName("image").item(0)));
    }

    public void c(CardInflater cardInflater, Element element, f fVar) {
        NodeList elementsByTagName = element.getElementsByTagName("text");
        for (int i2 = 0; i2 < elementsByTagName.getLength(); i2++) {
            cardInflater.a((TextInflater) fVar.a("text", elementsByTagName.item(i2)));
        }
    }

    public void b(CardInflater cardInflater, Element element) {
        if (element.hasAttribute("elevated")) {
            cardInflater.a(element.getAttribute("elevated").toLowerCase().equals("true"));
        }
    }

    public void c(CardInflater cardInflater, Element element) {
        if (element.hasAttribute("style")) {
            cardInflater.a(CardInflater.Style.valueOf(element.getAttribute("style")));
        }
    }

    public void a(CardInflater cardInflater, Element element) {
        if (element.hasAttribute("direction")) {
            cardInflater.a(CardInflater.Direction.valueOf(element.getAttribute("direction")));
        }
    }

    public void a(CardInflater cardInflater, Element element, f fVar) {
        if (element.hasAttribute("action")) {
            cardInflater.a((b) new CommonActionFactory(false).a(element, fVar));
        }
    }
}
