package f.a.a.d.a.a.b;

import f.a.a.d.f;
import f.a.a.e.b.C1072n;
import ir.cafebazaar.inline.ui.inflaters.DividerInflater;
import org.w3c.dom.Element;

/* compiled from: DividerFactory */
public class g extends i {
    public C1072n a(Element element, f fVar) {
        DividerInflater dividerInflater = new DividerInflater();
        b(dividerInflater, element);
        a(dividerInflater, element);
        return dividerInflater;
    }

    public void b(DividerInflater dividerInflater, Element element) {
        if (element.hasAttribute("style")) {
            dividerInflater.a(DividerInflater.Style.valueOf(element.getAttribute("style")));
        }
    }

    public final void a(DividerInflater dividerInflater, Element element) {
        if (element.hasAttribute("margin")) {
            dividerInflater.a(Integer.valueOf(element.getAttribute("margin")).intValue());
            return;
        }
        if (element.hasAttribute("marginLeft")) {
            dividerInflater.c(Integer.parseInt(element.getAttribute("marginLeft")));
        }
        if (element.hasAttribute("marginRight")) {
            dividerInflater.d(Integer.parseInt(element.getAttribute("marginRight")));
        }
        if (element.hasAttribute("marginBottom")) {
            dividerInflater.b(Integer.parseInt(element.getAttribute("marginBottom")));
        }
        if (element.hasAttribute("marginTop")) {
            dividerInflater.e(Integer.parseInt(element.getAttribute("marginTop")));
        }
    }
}
