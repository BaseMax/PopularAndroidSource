package f.a.a.d.a.a.b;

import f.a.a.d.f;
import f.a.a.e.b.C1072n;
import ir.cafebazaar.inline.ui.inflaters.ImageInflater;
import org.w3c.dom.Element;

/* renamed from: f.a.a.d.a.a.b.b  reason: case insensitive filesystem */
/* compiled from: BaseImageFactory */
public class C1050b extends i {
    public C1072n a(Element element, f fVar) {
        ImageInflater imageInflater = new ImageInflater();
        c(imageInflater, element);
        d(imageInflater, element);
        a(imageInflater, element);
        b(imageInflater, element);
        return imageInflater;
    }

    public void b(ImageInflater imageInflater, Element element) {
        if (element.hasAttribute("fullScreenOnClick")) {
            imageInflater.a(element.getAttribute("fullScreenOnClick").equals("true"));
        }
    }

    public void c(ImageInflater imageInflater, Element element) {
        if (element.hasAttribute("src")) {
            imageInflater.c(element.getAttribute("src"));
        }
    }

    public void d(ImageInflater imageInflater, Element element) {
        if (element.hasAttribute("style")) {
            imageInflater.a(ImageInflater.Style.valueOf(element.getAttribute("style")));
        }
    }

    public void a(ImageInflater imageInflater, Element element) {
        if (element.hasAttribute("aspectRatio")) {
            String[] split = element.getAttribute("aspectRatio").split(":");
            imageInflater.a(Float.parseFloat(split[0]) / Float.parseFloat(split[1]));
        }
    }
}
