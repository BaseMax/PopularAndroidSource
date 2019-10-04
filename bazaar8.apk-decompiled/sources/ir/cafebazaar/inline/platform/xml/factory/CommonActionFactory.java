package ir.cafebazaar.inline.platform.xml.factory;

import f.a.a.d.a;
import f.a.a.d.f;
import f.a.a.g.d.a.d;
import f.a.a.g.d.a.e;
import f.a.a.g.d.a.i;
import f.a.a.g.d.a.q;
import f.a.a.g.d.a.u;
import ir.cafebazaar.inline.ux.flow.actions.OpenInlineAction;
import ir.cafebazaar.inline.ux.flow.actions.PayAction;
import ir.cafebazaar.inline.ux.flow.actions.WebAction;
import org.w3c.dom.Element;

public class CommonActionFactory implements a.C0141a {

    /* renamed from: a  reason: collision with root package name */
    public boolean f14960a = true;

    /* renamed from: b  reason: collision with root package name */
    public boolean f14961b = false;

    public enum ActionType {
        remote(""),
        web("web:"),
        change("change:"),
        back("@back"),
        exit("@exit"),
        pay("pay:"),
        searchInstant("searchInstant:"),
        tel("tel:"),
        share("share:"),
        openInline("inline:"),
        intent("intent:");
        
        public final String name;

        /* access modifiers changed from: public */
        ActionType(String str) {
            this.name = str;
        }

        public String toString() {
            return this.name;
        }
    }

    public CommonActionFactory(boolean z) {
        this.f14960a = z;
    }

    public a a(Object obj, f fVar) {
        Element element = (Element) obj;
        if (element.hasAttribute("validate")) {
            this.f14960a = element.getAttribute("validate").toLowerCase().equals("true");
        }
        if (element.hasAttribute("clearFields")) {
            this.f14961b = element.getAttribute("clearFields").toLowerCase().equals("true");
        }
        String attribute = element.getAttribute("action");
        if (attribute.equals(ActionType.back.toString())) {
            return new d();
        }
        if (attribute.startsWith(ActionType.exit.toString())) {
            return new f.a.a.g.d.a.f(attribute.substring(ActionType.exit.toString().length()));
        }
        if (attribute.startsWith(ActionType.web.toString())) {
            return new WebAction(attribute.substring(ActionType.web.toString().length()), this.f14960a, this.f14961b);
        }
        if (attribute.startsWith(ActionType.change.toString())) {
            return new e(attribute.substring(ActionType.change.toString().length()), this.f14960a, this.f14961b);
        }
        if (attribute.startsWith(ActionType.pay.toString())) {
            return new PayAction(attribute.substring(ActionType.pay.toString().length()), this.f14960a, this.f14961b);
        }
        if (attribute.startsWith(ActionType.tel.toString())) {
            return new u(attribute.substring(ActionType.tel.toString().length()));
        }
        if (attribute.startsWith(ActionType.share.toString())) {
            return new q(attribute.substring(ActionType.share.toString().length()));
        }
        if (attribute.startsWith(ActionType.openInline.toString())) {
            return new OpenInlineAction(attribute.substring(ActionType.openInline.toString().length()), this.f14960a, this.f14961b, element.hasAttribute("callback") ? element.getAttribute("callback") : "");
        } else if (attribute.startsWith(ActionType.intent.toString())) {
            return new i(attribute.substring(ActionType.intent.toString().length()));
        } else {
            return new f.a.a.g.d.a.a(attribute, this.f14960a, this.f14961b);
        }
    }
}
