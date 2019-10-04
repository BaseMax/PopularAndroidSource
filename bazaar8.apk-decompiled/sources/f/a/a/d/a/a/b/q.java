package f.a.a.d.a.a.b;

import f.a.a.d.f;
import f.a.a.e.b.C1072n;
import ir.cafebazaar.inline.ui.inflaters.ImageInflater;
import org.w3c.dom.Element;

/* compiled from: ScalableImageFactory */
public class q extends C1050b {
    public C1072n a(Element element, f fVar) {
        ImageInflater imageInflater = (ImageInflater) super.a(element, fVar);
        e(imageInflater, element);
        return imageInflater;
    }

    public void e(ImageInflater imageInflater, Element element) {
        if (element.hasAttribute("width")) {
            String attribute = element.getAttribute("width");
            if (attribute.endsWith("%")) {
                imageInflater.a(Integer.valueOf(attribute.substring(0, attribute.length() - 1)).intValue());
            }
        }
    }
}
