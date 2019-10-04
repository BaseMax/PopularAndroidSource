package f.a.a.d.a.a;

import android.graphics.Color;
import f.a.a.d.a;
import ir.cafebazaar.inline.ui.Theme;
import org.w3c.dom.Element;

/* compiled from: ThemeFactory */
public class f implements a.C0141a {
    public a a(Object obj, f.a.a.d.f fVar) {
        Element element = (Element) obj;
        Theme theme = new Theme();
        if (element != null) {
            b(theme, element);
            a(theme, element);
            c(theme, element);
        }
        return theme;
    }

    public void b(Theme theme, Element element) {
        if (element.hasAttribute("primary")) {
            theme.b(Color.parseColor(element.getAttribute("primary")));
        }
    }

    public void c(Theme theme, Element element) {
        if (element.hasAttribute("text")) {
            theme.c(Color.parseColor(element.getAttribute("text")));
        }
    }

    public void a(Theme theme, Element element) {
        if (element.hasAttribute("background")) {
            theme.a(Color.parseColor(element.getAttribute("background")));
        }
    }
}
