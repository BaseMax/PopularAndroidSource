package f.a.a.d.a.a.b.a;

import f.a.a.d.f;
import f.a.a.d.g;
import ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater;
import ir.cafebazaar.inline.ui.inflaters.inputs.EditTextInflater;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* compiled from: EditTextFactory */
public class e extends d {
    public void a(EditTextInflater editTextInflater, Element element) {
        if (!element.getTextContent().trim().isEmpty()) {
            editTextInflater.a((Object) element.getTextContent().trim());
        }
    }

    public ControllableInputInflater b(Element element, f fVar) {
        EditTextInflater editTextInflater = new EditTextInflater();
        a(editTextInflater, element, fVar);
        a(editTextInflater, element);
        b(editTextInflater, element);
        c(editTextInflater, element);
        d(editTextInflater, element);
        return editTextInflater;
    }

    public void c(EditTextInflater editTextInflater, Element element) {
        if (element.hasAttribute("splitDigits")) {
            editTextInflater.b(element.getAttribute("splitDigits").toLowerCase().equals("true"));
        }
    }

    public void d(EditTextInflater editTextInflater, Element element) {
        if (element.hasAttribute("unit")) {
            editTextInflater.e(element.getAttribute("unit").trim());
        }
    }

    public void a(EditTextInflater editTextInflater, Element element, f fVar) {
        NodeList elementsByTagName = element.getElementsByTagName("validation");
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < elementsByTagName.getLength(); i2++) {
            arrayList.add((g) fVar.a("validation", elementsByTagName.item(i2)));
        }
        editTextInflater.a((List<g>) arrayList);
    }

    public void b(EditTextInflater editTextInflater, Element element) {
        if (element.hasAttribute("keyboard")) {
            editTextInflater.a(EditTextInflater.KeyboardType.valueOf(element.getAttribute("keyboard")));
        }
    }
}
