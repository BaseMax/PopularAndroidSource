package me.a.a.a.a;

import android.view.MotionEvent;
import android.view.View;
import me.a.a.a.a.a.c;
import me.a.a.a.a.f;

public final class h extends f {

    protected static class a extends f.a {
        public a() {
            this.mProperty = View.TRANSLATION_Y;
        }

        /* access modifiers changed from: protected */
        public final void a(View view) {
            this.mAbsOffset = view.getTranslationY();
            this.mMaxOffset = (float) view.getHeight();
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
            if (Math.abs(motionEvent.getX(0) - motionEvent.getHistoricalX(0, 0)) > Math.abs(y)) {
                return false;
            }
            this.mAbsOffset = view.getTranslationY();
            this.mDeltaOffset = y;
            if (this.mDeltaOffset > 0.0f) {
                z = true;
            }
            this.mDir = z;
            return true;
        }
    }

    public h(c cVar) {
        this(cVar, 3.0f, 1.0f, -2.0f);
    }

    public h(c cVar, float f, float f2, float f3) {
        super(cVar, f3, f, f2);
    }

    /* access modifiers changed from: protected */
    public final f.e a() {
        return new b();
    }

    /* access modifiers changed from: protected */
    public final f.a b() {
        return new a();
    }

    /* access modifiers changed from: protected */
    public final void a(View view, float f) {
        view.setTranslationY(f);
    }

    /* access modifiers changed from: protected */
    public final void a(View view, float f, MotionEvent motionEvent) {
        view.setTranslationY(f);
        motionEvent.offsetLocation(f - motionEvent.getY(0), 0.0f);
    }
}
