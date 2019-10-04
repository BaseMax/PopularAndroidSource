package f.a.a.e.b.b;

import android.widget.TextView;
import ir.cafebazaar.inline.ui.Theme;
import ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater;

/* compiled from: ControllableInputInflater */
class q implements ControllableInputInflater.InputController {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ TextView f14187a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ TextView f14188b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ TextView f14189c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Theme f14190d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ControllableInputInflater f14191e;

    public q(ControllableInputInflater controllableInputInflater, TextView textView, TextView textView2, TextView textView3, Theme theme) {
        this.f14191e = controllableInputInflater;
        this.f14187a = textView;
        this.f14188b = textView2;
        this.f14189c = textView3;
        this.f14190d = theme;
    }

    public void a(String str) {
        this.f14187a.setText(str);
        this.f14187a.setVisibility(0);
    }

    public void a() {
        this.f14187a.setVisibility(8);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v1, resolved type: boolean} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v6, resolved type: int} */
    /* JADX WARNING: type inference failed for: r0v0 */
    /* JADX WARNING: type inference failed for: r0v5 */
    /* JADX WARNING: type inference failed for: r0v7 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater.InputController.Placeholder r6, boolean r7) {
        /*
            r5 = this;
            r0 = 0
            if (r7 != 0) goto L_0x001c
            android.widget.TextView r7 = r5.f14188b
            ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater$InputController$Placeholder r1 = ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater.InputController.Placeholder.DOWN
            r2 = 4
            if (r6 != r1) goto L_0x000c
            r1 = 0
            goto L_0x000d
        L_0x000c:
            r1 = 4
        L_0x000d:
            r7.setVisibility(r1)
            android.widget.TextView r7 = r5.f14189c
            ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater$InputController$Placeholder r1 = ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater.InputController.Placeholder.UP
            if (r6 != r1) goto L_0x0017
            goto L_0x0018
        L_0x0017:
            r0 = 4
        L_0x0018:
            r7.setVisibility(r0)
            goto L_0x0087
        L_0x001c:
            android.view.animation.AnimationSet r7 = new android.view.animation.AnimationSet
            r1 = 1
            r7.<init>(r1)
            r2 = 300(0x12c, double:1.48E-321)
            r7.setDuration(r2)
            ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater$InputController$Placeholder r2 = ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater.InputController.Placeholder.DOWN
            r3 = 1077936128(0x40400000, float:3.0)
            if (r6 != r2) goto L_0x0036
            android.view.animation.AccelerateInterpolator r2 = new android.view.animation.AccelerateInterpolator
            r2.<init>(r3)
            r7.setInterpolator(r2)
            goto L_0x003e
        L_0x0036:
            android.view.animation.DecelerateInterpolator r2 = new android.view.animation.DecelerateInterpolator
            r2.<init>(r3)
            r7.setInterpolator(r2)
        L_0x003e:
            android.widget.TextView r2 = r5.f14188b
            android.widget.TextView r3 = r5.f14189c
            ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater$InputController$Placeholder r4 = ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater.InputController.Placeholder.DOWN
            if (r6 != r4) goto L_0x0047
            r0 = 1
        L_0x0047:
            android.view.animation.Animation r0 = ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater.b(r2, r3, r0)
            r7.addAnimation(r0)
            ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater$a r0 = new ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater$a
            android.widget.TextView r1 = r5.f14188b
            ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater$InputController$Placeholder r2 = ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater.InputController.Placeholder.DOWN
            if (r6 != r2) goto L_0x005d
            ir.cafebazaar.inline.ui.Theme r2 = r5.f14190d
            int r2 = r2.h()
            goto L_0x0063
        L_0x005d:
            ir.cafebazaar.inline.ui.Theme r2 = r5.f14190d
            int r2 = r2.e()
        L_0x0063:
            ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater$InputController$Placeholder r3 = ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater.InputController.Placeholder.UP
            if (r6 != r3) goto L_0x006e
            ir.cafebazaar.inline.ui.Theme r3 = r5.f14190d
            int r3 = r3.h()
            goto L_0x0074
        L_0x006e:
            ir.cafebazaar.inline.ui.Theme r3 = r5.f14190d
            int r3 = r3.e()
        L_0x0074:
            r0.<init>(r1, r2, r3)
            r7.addAnimation(r0)
            f.a.a.e.b.b.p r0 = new f.a.a.e.b.b.p
            r0.<init>(r5, r6)
            r7.setAnimationListener(r0)
            android.widget.TextView r6 = r5.f14188b
            r6.startAnimation(r7)
        L_0x0087:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.a.e.b.b.q.a(ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater$InputController$Placeholder, boolean):void");
    }
}
