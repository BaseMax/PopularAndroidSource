package f.a.a.g.d;

import android.os.Bundle;
import b.o.a.C;
import com.crashlytics.android.Crashlytics;
import f.a.a.a.c.c;
import f.a.a.e;
import f.a.a.e.g;
import f.a.a.e.l;
import ir.cafebazaar.inline.ui.InlineActivity;
import ir.cafebazaar.inline.ux.flow.FlowSnapshot;
import java.util.ArrayList;
import java.util.Stack;

/* compiled from: BackStackManager */
public class d implements c {

    /* renamed from: a  reason: collision with root package name */
    public Stack<a> f14467a = new Stack<>();

    /* renamed from: b  reason: collision with root package name */
    public Stack<FlowSnapshot> f14468b = new Stack<>();

    /* renamed from: c  reason: collision with root package name */
    public int f14469c = 0;

    /* renamed from: d  reason: collision with root package name */
    public g f14470d;

    /* compiled from: BackStackManager */
    public interface a {
        void m();
    }

    public d(g gVar) {
        this.f14470d = gVar;
    }

    public void a(FlowSnapshot flowSnapshot) {
        if (this.f14468b.empty() || !flowSnapshot.a().equals(this.f14468b.peek().a())) {
            this.f14468b.push(flowSnapshot);
        }
    }

    public void b() {
        this.f14469c++;
    }

    public String c() {
        if (!this.f14468b.empty()) {
            return this.f14468b.peek().a();
        }
        return InlineActivity.q;
    }

    public boolean d() {
        return this.f14468b.size() <= 1;
    }

    public boolean e() {
        return this.f14469c != 0;
    }

    public boolean f() {
        if (!this.f14467a.empty()) {
            this.f14467a.pop().m();
            return true;
        } else if (this.f14470d.k() == null || this.f14468b.size() <= 1) {
            return false;
        } else {
            this.f14470d.f().v().a(new f.a.a.g.d.a.d(), null);
            return true;
        }
    }

    public FlowSnapshot g() {
        return this.f14468b.peek();
    }

    public void h() {
        if (!this.f14468b.empty()) {
            this.f14468b.pop();
        }
    }

    public String i() {
        if (this.f14468b.size() <= 1) {
            return InlineActivity.q;
        }
        this.f14468b.push(this.f14468b.pop());
        return this.f14468b.peek().a();
    }

    public void b(Bundle bundle) {
        bundle.putParcelableArrayList("flowBackStack", new ArrayList(this.f14468b));
    }

    public void a(String str) {
        l a2 = l.a(this.f14470d, str);
        try {
            C a3 = this.f14470d.f().r().a();
            a3.b(e.container, a2);
            a3.a();
        } catch (IllegalStateException e2) {
            Crashlytics.logException(e2);
        }
    }

    public void a() {
        this.f14469c--;
    }

    public void a(Bundle bundle) {
        this.f14468b.addAll(bundle.getParcelableArrayList("flowBackStack"));
    }
}
