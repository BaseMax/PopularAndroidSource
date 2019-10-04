package f.a.a.d.a.a.b;

import f.a.a.d.f;
import f.a.a.e.b.C1072n;
import f.a.a.e.b.W;
import org.w3c.dom.Element;

/* compiled from: VideoFactory */
public class A extends i {
    public C1072n a(Element element, f fVar) {
        W w = new W();
        b(w, element);
        a(w, element);
        return w;
    }

    public void b(W w, Element element) {
        if (element.hasAttribute("src")) {
            w.c(element.getAttribute("src"));
        }
    }

    public final void a(W w, Element element) {
        if (element.hasAttribute("isVideoOnline")) {
            w.a(Boolean.parseBoolean(element.getAttribute("isVideoOnline")));
        }
    }
}
