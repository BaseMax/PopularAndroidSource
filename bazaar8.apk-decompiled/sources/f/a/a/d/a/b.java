package f.a.a.d.a;

import f.a.a.d.a;
import f.a.a.d.a.a.b.A;
import f.a.a.d.a.a.b.B;
import f.a.a.d.a.a.b.C1049a;
import f.a.a.d.a.a.b.C1050b;
import f.a.a.d.a.a.b.a.e;
import f.a.a.d.a.a.b.d;
import f.a.a.d.a.a.b.f;
import f.a.a.d.a.a.b.g;
import f.a.a.d.a.a.b.h;
import f.a.a.d.a.a.b.j;
import f.a.a.d.a.a.b.k;
import f.a.a.d.a.a.b.l;
import f.a.a.d.a.a.b.m;
import f.a.a.d.a.a.b.o;
import f.a.a.d.a.a.b.p;
import f.a.a.d.a.a.b.q;
import f.a.a.d.a.a.b.s;
import f.a.a.d.a.a.b.t;
import f.a.a.d.a.a.b.u;
import f.a.a.d.a.a.b.v;
import f.a.a.d.a.a.b.w;
import f.a.a.d.a.a.b.x;
import f.a.a.d.a.a.b.y;
import f.a.a.d.a.a.b.z;
import f.a.a.d.a.a.c;
import f.a.a.e.b.C1070l;
import f.a.a.e.b.M;
import f.a.a.e.b.X;
import ir.cafebazaar.inline.ui.Theme;
import ir.cafebazaar.inline.ui.inflaters.PageInflater;
import ir.cafebazaar.inline.ux.flow.pull.Puller;
import ir.cafebazaar.inline.ux.payment.PaymentInfo;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* compiled from: XMLPlatform */
public class b extends f.a.a.d.b {
    public b() {
        b();
    }

    public Object a(InputStream inputStream) {
        return DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(inputStream);
    }

    public void b() {
        a("splashPage", (a.C0141a) new u());
        a("page", (a.C0141a) new f());
        a("videoPage", (a.C0141a) new B());
        a("pages", (a.C0141a) new f.a.a.d.a.a.a());
        a("precache", (a.C0141a) new c());
        a("theme", (a.C0141a) new f.a.a.d.a.a.f());
        a("divider", (a.C0141a) new g());
        a("text", (a.C0141a) new x());
        a("button", (a.C0141a) new f.a.a.d.a.a.b.c());
        a("dualbuttons", (a.C0141a) new h());
        a("image", (a.C0141a) new q());
        a("video", (a.C0141a) new A());
        a("photoSlider", (a.C0141a) new o());
        a("audio", (a.C0141a) new C1049a());
        a("imagePicker", (a.C0141a) new f.a.a.d.a.a.b.a.f());
        a("edittext", (a.C0141a) new e());
        a("addressInput", (a.C0141a) new f.a.a.d.a.a.b.a.a());
        a("validation", (a.C0141a) new y());
        a("ratingInput", (a.C0141a) new f.a.a.d.a.a.b.a.h());
        a("rating", (a.C0141a) new p());
        a("choices", (a.C0141a) new f.a.a.d.a.a.b.a.c());
        a("option", (a.C0141a) new m());
        a("usesPermission", (a.C0141a) new f.a.a.d.a.a.b());
        a("checkbox", (a.C0141a) new f.a.a.d.a.a.b.a.b());
        a("card", (a.C0141a) new d());
        a("card:image", (a.C0141a) new C1050b());
        a("list", (a.C0141a) new l());
        a("payment", (a.C0141a) new f.a.a.d.a.a.c.d());
        a("iabBuy", (a.C0141a) new f.a.a.d.a.a.c.c());
        a("iabConsume", (a.C0141a) new f.a.a.d.a.a.c.a());
        a("header", (a.C0141a) new k());
        a("footer", (a.C0141a) new j());
        a("searchHeader", (a.C0141a) new t());
        a("searchFooter", (a.C0141a) new s());
        a("change", (a.C0141a) new f.a.a.d.a.a.a.b());
        a("change:button", (a.C0141a) new f.a.a.d.a.a.a.a());
        a("change:text", (a.C0141a) new f.a.a.d.a.a.a.g());
        a("change:image", (a.C0141a) new f.a.a.d.a.a.a.e());
        a("change:footer", (a.C0141a) new f.a.a.d.a.a.a.d());
        a("change:list", (a.C0141a) new f.a.a.d.a.a.a.f());
        a("pull", (a.C0141a) new f.a.a.d.a.a.e());
        a("pullResponse", (a.C0141a) new f.a.a.d.a.a.d());
        a("table", (a.C0141a) new v());
        a("tableRow", (a.C0141a) new w());
        a("comment", (a.C0141a) new z());
        a("commentList", (a.C0141a) new f.a.a.d.a.a.b.e());
    }

    public boolean c(Object obj) {
        return ((Document) obj).getElementsByTagName("pages").getLength() > 0;
    }

    public List<f.a.a.g.g.e> d(Object obj) {
        NodeList elementsByTagName = ((Document) obj).getElementsByTagName("usesPermission");
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < elementsByTagName.getLength(); i2++) {
            arrayList.add((f.a.a.g.g.e) a("usesPermission", (Object) elementsByTagName.item(i2)));
        }
        return arrayList;
    }

    public PageInflater e(Object obj) {
        Document document = (Document) obj;
        if (document.getElementsByTagName("splashPage").getLength() > 0) {
            return (M) a("splashPage", (Object) document.getElementsByTagName("splashPage").item(0));
        }
        if (document.getElementsByTagName("videoPage").getLength() > 0) {
            return (X) a("videoPage", (Object) document.getElementsByTagName("videoPage").item(0));
        }
        return (C1070l) a("page", (Object) document.getElementsByTagName("page").item(0));
    }

    public f.a.a.a.b.f f(Object obj) {
        Element element = (Element) ((Document) obj).getElementsByTagName("preCache").item(0);
        if (element != null) {
            return (f.a.a.a.b.f) a("precache", (Object) element);
        }
        return null;
    }

    public List<Puller> g(Object obj) {
        NodeList elementsByTagName = ((Document) obj).getElementsByTagName("pull");
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < elementsByTagName.getLength(); i2++) {
            arrayList.add((Puller) a("pull", (Object) elementsByTagName.item(i2)));
        }
        return arrayList;
    }

    public String getVersion() {
        return "1.7.9";
    }

    public f.a.a.d.a.a.c.b h(Object obj) {
        Element element = (Element) ((Document) obj).getElementsByTagName("iab").item(0);
        if (element != null) {
            return new f.a.a.d.a.a.c.b(element.getAttribute("key"), element.getAttribute("packagename"));
        }
        return null;
    }

    public f.a.a.e.a.o i(Object obj) {
        return (f.a.a.e.a.o) a("change", (Object) ((Document) obj).getElementsByTagName("change").item(0));
    }

    public PaymentInfo j(Object obj) {
        Document document = (Document) obj;
        Element element = (Element) document.getElementsByTagName("payment").item(0);
        if (element != null) {
            return (PaymentInfo) a("payment", (Object) element);
        }
        Element element2 = (Element) document.getElementsByTagName("iabBuy").item(0);
        if (element2 != null) {
            return (PaymentInfo) a("iabBuy", (Object) element2);
        }
        Element element3 = (Element) document.getElementsByTagName("iabConsume").item(0);
        if (element3 != null) {
            return (PaymentInfo) a("iabConsume", (Object) element3);
        }
        return null;
    }

    public f.a.a.e.t k(Object obj) {
        return (f.a.a.e.t) a("pages", (Object) ((Document) obj).getElementsByTagName("pages").item(0));
    }

    public String a(Object obj) {
        Document document = (Document) obj;
        if (document.getElementsByTagName("splashPage").getLength() > 0) {
            return "splashPage";
        }
        if (document.getElementsByTagName("videoPage").getLength() > 0) {
            return "videoPage";
        }
        return "page";
    }

    public f.a.a.a.b.c a() {
        return new a(this);
    }

    public Theme b(Object obj) {
        Element element = (Element) ((Document) obj).getElementsByTagName("theme").item(0);
        if (element != null) {
            return (Theme) a("theme", (Object) element);
        }
        return null;
    }
}
