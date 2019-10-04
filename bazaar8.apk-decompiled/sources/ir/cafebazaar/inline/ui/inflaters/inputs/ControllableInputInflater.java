package ir.cafebazaar.inline.ui.inflaters.inputs;

import android.graphics.PointF;
import android.view.View;
import android.view.ViewStub;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import android.widget.TextView;
import f.a.a.e;
import f.a.a.e.C1083c;
import f.a.a.e.b.b.B;
import f.a.a.e.g;
import f.a.a.f;
import ir.cafebazaar.inline.ui.Theme;

public abstract class ControllableInputInflater extends B {

    /* renamed from: f  reason: collision with root package name */
    public boolean f15026f;

    interface InputController {

        public enum Placeholder {
            UP,
            DOWN
        }

        void a();

        void a(Placeholder placeholder, boolean z);

        void a(String str);
    }

    private static class a extends Animation {

        /* renamed from: a  reason: collision with root package name */
        public int f15028a;

        /* renamed from: b  reason: collision with root package name */
        public int f15029b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f15030c;

        public a(TextView textView, int i2, int i3) {
            this.f15030c = textView;
            this.f15028a = i2;
            this.f15029b = i3;
        }

        public void applyTransformation(float f2, Transformation transformation) {
            super.applyTransformation(f2, transformation);
            this.f15030c.setTextColor(c.c.a.d.g.a.a(this.f15029b, this.f15028a, f2));
        }
    }

    public static Animation b(View view, View view2, boolean z) {
        float height = (((float) view2.getHeight()) * 1.0f) / ((float) view.getHeight());
        if (height == 1.0f) {
            return null;
        }
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int[] iArr2 = new int[2];
        view2.getLocationInWindow(iArr2);
        PointF pointF = new PointF(((float) (iArr2[0] + view2.getWidth())) - (((float) view.getWidth()) * height), (float) iArr2[1]);
        float f2 = z ? height : 1.0f;
        float f3 = z ? 1.0f : height;
        float f4 = z ? height : 1.0f;
        float f5 = z ? 1.0f : height;
        float f6 = height - 1.0f;
        ScaleAnimation scaleAnimation = new ScaleAnimation(f2, f3, f4, f5, 1, ((((float) iArr[0]) - pointF.x) / f6) / ((float) view.getWidth()), 1, ((((float) iArr[1]) - pointF.y) / f6) / ((float) view.getHeight()));
        return scaleAnimation;
    }

    public abstract B.a a(View view, g gVar, InputController inputController);

    public abstract int f();

    public void a(boolean z) {
        this.f15026f = z;
    }

    public View a(g gVar, View view) {
        a(gVar.f().x());
        TextView textView = (TextView) view.findViewById(e.placeholder);
        TextView textView2 = (TextView) view.findViewById(e.placeholder_small);
        Theme g2 = gVar.g();
        ViewStub viewStub = (ViewStub) view.findViewById(e.stub);
        viewStub.setLayoutResource(f());
        View inflate = viewStub.inflate();
        textView.setText(d());
        textView.setTextColor(g2.e());
        textView2.setText(d());
        textView2.setTextColor(g2.h());
        q qVar = new q(this, (TextView) view.findViewById(e.error), textView, textView2, g2);
        B.a a2 = a(inflate, gVar, (InputController) qVar);
        boolean z = this.f15026f;
        if (gVar.k() instanceof C1083c) {
            a((C1083c) gVar.k(), new r(this, z, a2));
            return view;
        }
        throw new RuntimeException("شما مجاز به استفاده از اینپوت در صفحه پیش‌درآمد نیستید");
    }

    public int b() {
        return f.inline_input;
    }
}
