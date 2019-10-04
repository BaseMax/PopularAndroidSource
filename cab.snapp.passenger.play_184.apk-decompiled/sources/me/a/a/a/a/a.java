package me.a.a.a.a;

import android.view.MotionEvent;
import android.view.View;
import me.a.a.a.a.a.c;
import me.a.a.a.a.f;

public final class a extends f {

    /* renamed from: me.a.a.a.a.a$a  reason: collision with other inner class name */
    protected static class C0206a extends f.a {
        public C0206a() {
            this.mProperty = View.TRANSLATION_X;
        }

        /* access modifiers changed from: protected */
        public final void a(View view) {
            this.mAbsOffset = view.getTranslationX();
            this.mMaxOffset = (float) view.getWidth();
        }
    }

    protected static class b extends f.e {
        protected b() {
        }

        public final boolean init(View view, MotionEvent motionEvent) {
            boolean z = false;
            if (motionEvent.getHistorySize() == 0) {
                return false;
            }
            float y = motionEvent.getY(0) - motionEvent.getHistoricalY(0, 0);
            float x = motionEvent.getX(0) - motionEvent.getHistoricalX(0, 0);
            if (Math.abs(x) < Math.abs(y)) {
                return false;
            }
            this.mAbsOffset = view.getTranslationX();
            this.mDeltaOffset = x;
            if (this.mDeltaOffset > 0.0f) {
                z = true;
            }
            this.mDir = z;
            return true;
        }
    }

    public a(c cVar) {
        this(cVar, 3.0f, 1.0f, -2.0f);
    }

    public a(c cVar, float f, float f2, float f3) {
        super(cVar, f3, f, f2);
    }

    /* access modifiers changed from: protected */
    public final f.e a() {
        return new b();
    }

    /* access modifiers changed from: protected */
    public final f.a b() {
        return new C0206a();
    }

    /* access modifiers changed from: protected */
    public final void a(View view, float f) {
        view.setTranslationX(f);
    }

    /* access modifiers changed from: protected */
    public final void a(View view, float f, MotionEvent motionEvent) {
        view.setTranslationX(f);
        motionEvent.offsetLocation(f - motionEvent.getX(0), 0.0f);
    }
}
