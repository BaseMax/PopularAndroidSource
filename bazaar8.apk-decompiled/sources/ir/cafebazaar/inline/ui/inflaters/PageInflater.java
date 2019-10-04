package ir.cafebazaar.inline.ui.inflaters;

import f.a.a.e.b.C1072n;
import f.a.a.e.b.Q;
import f.a.a.e.b.Y;
import java.util.List;

public abstract class PageInflater implements Y {

    /* renamed from: a  reason: collision with root package name */
    public List<C1072n> f15001a;

    /* renamed from: b  reason: collision with root package name */
    public List<Q> f15002b;

    /* renamed from: c  reason: collision with root package name */
    public PageGravity f15003c = PageGravity.center;

    /* renamed from: d  reason: collision with root package name */
    public boolean f15004d = false;

    /* renamed from: e  reason: collision with root package name */
    public String f15005e = null;

    public enum PageGravity {
        bottom(80),
        center(17),
        top(48);
        
        public int id;

        /* access modifiers changed from: public */
        PageGravity(int i2) {
            this.id = i2;
        }

        public int getId() {
            return this.id;
        }
    }

    public void a(List<C1072n> list) {
        this.f15001a = list;
    }

    public void b(List<Q> list) {
        this.f15002b = list;
    }

    public void a(PageGravity pageGravity) {
        this.f15003c = pageGravity;
    }

    public boolean b() {
        return this.f15004d;
    }

    public void a(boolean z) {
        this.f15004d = z;
    }

    public void a(String str) {
        this.f15005e = str;
    }

    public String a() {
        return this.f15005e;
    }
}
