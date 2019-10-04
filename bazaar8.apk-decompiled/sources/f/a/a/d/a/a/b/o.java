package f.a.a.d.a.a.b;

import f.a.a.d.f;
import f.a.a.e.b.A;
import f.a.a.e.b.C1072n;
import ir.cafebazaar.inline.ui.inflaters.ImageInflater;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* compiled from: PhotoSliderFactory */
public class o extends i {
    public C1072n a(Element element, f fVar) {
        A a2 = new A();
        a(a2, element, fVar);
        a(a2, element);
        return a2;
    }

    public final void a(A a2, Element element, f fVar) {
        NodeList elementsByTagName = element.getElementsByTagName("image");
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < elementsByTagName.getLength(); i2++) {
            arrayList.add((ImageInflater) fVar.a("image", elementsByTagName.item(i2)));
        }
        a2.a((List<ImageInflater>) arrayList);
    }

    public final void a(A a2, Element element) {
        if (element.hasAttribute("aspectRatio")) {
            String[] split = element.getAttribute("aspectRatio").split(":");
            a2.a(Float.parseFloat(split[0]) / Float.parseFloat(split[1]));
        }
    }
}
