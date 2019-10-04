package ir.cafebazaar.inline.ux.table;

import android.content.Context;
import android.graphics.Color;
import f.a.a.b;
import f.a.a.d.a;
import f.a.a.d.f;
import f.a.a.e.b.C1072n;
import f.a.a.e.g;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class TableRowDescriptor {

    /* renamed from: a  reason: collision with root package name */
    public final String f15097a = "showDivider";

    /* renamed from: b  reason: collision with root package name */
    public final String f15098b = "dividerColor";

    /* renamed from: c  reason: collision with root package name */
    public final String f15099c = "height";

    /* renamed from: d  reason: collision with root package name */
    public final int f15100d = 9;

    /* renamed from: e  reason: collision with root package name */
    public List<C1072n> f15101e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f15102f = true;

    /* renamed from: g  reason: collision with root package name */
    public String f15103g;

    /* renamed from: h  reason: collision with root package name */
    public HeightCell f15104h = HeightCell.FIX;

    public enum HeightCell {
        WRAP,
        FIX
    }

    public TableRowDescriptor(Element element, f fVar) {
        this.f15101e = a(element, fVar);
        if (element.hasAttribute("showDivider")) {
            this.f15102f = "true".equals(element.getAttribute("showDivider").toLowerCase());
        }
        if (element.hasAttribute("dividerColor")) {
            this.f15103g = element.getAttribute("dividerColor");
            if (!this.f15103g.startsWith("#")) {
                this.f15103g = "#" + this.f15103g;
            }
        }
        if (element.hasAttribute("height")) {
            this.f15104h = HeightCell.valueOf(element.getAttribute("height").toUpperCase());
        }
    }

    public final List<C1072n> a(Element element, f fVar) {
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

    public HeightCell b() {
        return this.f15104h;
    }

    public List<C1072n> c() {
        return this.f15101e;
    }

    public boolean d() {
        return this.f15102f;
    }

    public int a() {
        List<C1072n> list = this.f15101e;
        if (list == null) {
            return 0;
        }
        return Math.min(list.size(), 9);
    }

    public int a(g gVar) {
        Context context;
        if (gVar.f() == null) {
            context = gVar.getApplicationContext();
        } else {
            context = gVar.f();
        }
        String str = this.f15103g;
        if (str != null) {
            return Color.parseColor(str);
        }
        if (gVar.g() == null) {
            return b.i.b.a.a(context, b.gray_light);
        }
        return gVar.g().h();
    }
}
