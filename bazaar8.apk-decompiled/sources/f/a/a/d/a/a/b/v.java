package f.a.a.d.a.a.b;

import f.a.a.d.a;
import f.a.a.d.f;
import f.a.a.e.b.C1072n;
import ir.cafebazaar.inline.ui.inflaters.TableInflater;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* compiled from: TableFactory */
public class v extends i {

    /* renamed from: a  reason: collision with root package name */
    public final String f13994a = "divider";

    /* renamed from: b  reason: collision with root package name */
    public final String f13995b = "size";

    /* renamed from: c  reason: collision with root package name */
    public final String f13996c = "border";

    /* renamed from: d  reason: collision with root package name */
    public final String f13997d = "borderColor";

    /* renamed from: e  reason: collision with root package name */
    public final String f13998e = "dividerColor";

    public C1072n a(Element element, f fVar) {
        TableInflater tableInflater = new TableInflater();
        tableInflater.a(e(element));
        tableInflater.a(d(element));
        tableInflater.a(b(element, fVar));
        tableInflater.a(b(element));
        tableInflater.e(a(element));
        tableInflater.f(c(element));
        return tableInflater;
    }

    public final TableInflater.TableBorderStyle b(Element element) {
        return element.hasAttribute("border") ? TableInflater.TableBorderStyle.valueOf(element.getAttribute("border")) : TableInflater.TableBorderStyle.none;
    }

    public final String c(Element element) {
        if (!element.hasAttribute("dividerColor")) {
            return null;
        }
        String attribute = element.getAttribute("dividerColor");
        if (attribute.startsWith("#")) {
            return attribute;
        }
        return "#" + attribute;
    }

    public final TableInflater.Size d(Element element) {
        return element.hasAttribute("size") ? TableInflater.Size.valueOf(element.getAttribute("size")) : TableInflater.Size.normal;
    }

    public final TableInflater.ItemDecorationStatus e(Element element) {
        return element.hasAttribute("divider") ? TableInflater.ItemDecorationStatus.valueOf(element.getAttribute("divider")) : TableInflater.ItemDecorationStatus.table;
    }

    public final List<C1072n> b(Element element, f fVar) {
        NodeList childNodes = element.getChildNodes();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            a a2 = fVar.a(childNodes.item(i2).getNodeName(), childNodes.item(i2));
            if (a2 != null && (a2 instanceof C1072n)) {
                arrayList.add((C1072n) a2);
            }
        }
        return arrayList;
    }

    public final String a(Element element) {
        if (!element.hasAttribute("borderColor")) {
            return null;
        }
        String attribute = element.getAttribute("borderColor");
        if (attribute.startsWith("#")) {
            return attribute;
        }
        return "#" + attribute;
    }
}
