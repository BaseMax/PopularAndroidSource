package me.a.a.a.a;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import me.a.a.a.a.e;

public abstract class f implements View.OnTouchListener, b {
    public static final float DEFAULT_DECELERATE_FACTOR = -2.0f;
    public static final float DEFAULT_TOUCH_DRAG_MOVE_RATIO_BCK = 1.0f;
    public static final float DEFAULT_TOUCH_DRAG_MOVE_RATIO_FWD = 3.0f;
    public static final String TAG = "OverScrollDecor";

    /* renamed from: a  reason: collision with root package name */
    protected final C0208f f8691a = new C0208f();

    /* renamed from: b  reason: collision with root package name */
    protected final me.a.a.a.a.a.c f8692b;
    protected final d c;
    protected final g d;
    protected final b e;
    protected c f;
    protected c g = new e.a();
    protected d h = new e.b();
    protected float i;

    protected static abstract class a {
        public float mAbsOffset;
        public float mMaxOffset;
        public Property<View, Float> mProperty;

        /* access modifiers changed from: protected */
        public abstract void a(View view);

        protected a() {
        }
    }

    protected class b implements Animator.AnimatorListener, ValueAnimator.AnimatorUpdateListener, c {

        /* renamed from: a  reason: collision with root package name */
        protected final Interpolator f8693a = new DecelerateInterpolator();

        /* renamed from: b  reason: collision with root package name */
        protected final float f8694b;
        protected final float c;
        protected final a d;

        public final int getStateId() {
            return 3;
        }

        public final boolean handleMoveTouchEvent(MotionEvent motionEvent) {
            return true;
        }

        public final boolean handleUpOrCancelTouchEvent(MotionEvent motionEvent) {
            return true;
        }

        public final void onAnimationCancel(Animator animator) {
        }

        public final void onAnimationRepeat(Animator animator) {
        }

        public final void onAnimationStart(Animator animator) {
        }

        public b(float f) {
            this.f8694b = f;
            this.c = f * 2.0f;
            this.d = f.this.b();
        }

        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v2, resolved type: android.animation.ObjectAnimator} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v11, resolved type: android.animation.AnimatorSet} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v12, resolved type: android.animation.ObjectAnimator} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v13, resolved type: android.animation.ObjectAnimator} */
        /* JADX WARNING: Multi-variable type inference failed */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void handleEntryTransition(me.a.a.a.a.f.c r7) {
            /*
                r6 = this;
                me.a.a.a.a.f r0 = me.a.a.a.a.f.this
                me.a.a.a.a.c r0 = r0.g
                me.a.a.a.a.f r1 = me.a.a.a.a.f.this
                int r7 = r7.getStateId()
                int r2 = r6.getStateId()
                r0.onOverScrollStateChange(r1, r7, r2)
                me.a.a.a.a.f r7 = me.a.a.a.a.f.this
                me.a.a.a.a.a.c r7 = r7.f8692b
                android.view.View r7 = r7.getView()
                me.a.a.a.a.f$a r0 = r6.d
                r0.a(r7)
                me.a.a.a.a.f r0 = me.a.a.a.a.f.this
                float r0 = r0.i
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x0097
                me.a.a.a.a.f r0 = me.a.a.a.a.f.this
                float r0 = r0.i
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x0037
                me.a.a.a.a.f r0 = me.a.a.a.a.f.this
                me.a.a.a.a.f$f r0 = r0.f8691a
                boolean r0 = r0.c
                if (r0 != 0) goto L_0x0097
            L_0x0037:
                me.a.a.a.a.f r0 = me.a.a.a.a.f.this
                float r0 = r0.i
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0048
                me.a.a.a.a.f r0 = me.a.a.a.a.f.this
                me.a.a.a.a.f$f r0 = r0.f8691a
                boolean r0 = r0.c
                if (r0 != 0) goto L_0x0048
                goto L_0x0097
            L_0x0048:
                me.a.a.a.a.f r0 = me.a.a.a.a.f.this
                float r0 = r0.i
                float r0 = -r0
                float r2 = r6.f8694b
                float r0 = r0 / r2
                int r2 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r2 >= 0) goto L_0x0055
                r0 = 0
            L_0x0055:
                me.a.a.a.a.f r1 = me.a.a.a.a.f.this
                float r1 = r1.i
                float r1 = -r1
                me.a.a.a.a.f r2 = me.a.a.a.a.f.this
                float r2 = r2.i
                float r1 = r1 * r2
                float r2 = r6.c
                float r1 = r1 / r2
                me.a.a.a.a.f$a r2 = r6.d
                float r2 = r2.mAbsOffset
                float r2 = r2 + r1
                int r0 = (int) r0
                me.a.a.a.a.f$a r1 = r6.d
                android.util.Property<android.view.View, java.lang.Float> r1 = r1.mProperty
                r3 = 1
                float[] r4 = new float[r3]
                r5 = 0
                r4[r5] = r2
                android.animation.ObjectAnimator r7 = android.animation.ObjectAnimator.ofFloat(r7, r1, r4)
                long r0 = (long) r0
                r7.setDuration(r0)
                android.view.animation.Interpolator r0 = r6.f8693a
                r7.setInterpolator(r0)
                r7.addUpdateListener(r6)
                android.animation.ObjectAnimator r0 = r6.a(r2)
                android.animation.AnimatorSet r1 = new android.animation.AnimatorSet
                r1.<init>()
                r2 = 2
                android.animation.Animator[] r2 = new android.animation.Animator[r2]
                r2[r5] = r7
                r2[r3] = r0
                r1.playSequentially(r2)
                goto L_0x009f
            L_0x0097:
                me.a.a.a.a.f$a r7 = r6.d
                float r7 = r7.mAbsOffset
                android.animation.ObjectAnimator r1 = r6.a(r7)
            L_0x009f:
                r1.addListener(r6)
                r1.start()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: me.a.a.a.a.f.b.handleEntryTransition(me.a.a.a.a.f$c):void");
        }

        public final void onAnimationEnd(Animator animator) {
            f fVar = f.this;
            fVar.a(fVar.c);
        }

        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            f.this.h.onOverScrollUpdate(f.this, 3, ((Float) valueAnimator.getAnimatedValue()).floatValue());
        }

        private ObjectAnimator a(float f) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(f.this.f8692b.getView(), this.d.mProperty, new float[]{f.this.f8691a.f8698b});
            ofFloat.setDuration((long) Math.max((int) ((Math.abs(f) / this.d.mMaxOffset) * 800.0f), 200));
            ofFloat.setInterpolator(this.f8693a);
            ofFloat.addUpdateListener(this);
            return ofFloat;
        }
    }

    protected interface c {
        int getStateId();

        void handleEntryTransition(c cVar);

        boolean handleMoveTouchEvent(MotionEvent motionEvent);

        boolean handleUpOrCancelTouchEvent(MotionEvent motionEvent);
    }

    protected class d implements c {

        /* renamed from: a  reason: collision with root package name */
        final e f8695a;

        public final int getStateId() {
            return 0;
        }

        public final boolean handleUpOrCancelTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        public d() {
            this.f8695a = f.this.a();
        }

        public final boolean handleMoveTouchEvent(MotionEvent motionEvent) {
            if (!this.f8695a.init(f.this.f8692b.getView(), motionEvent)) {
                return false;
            }
            if ((!f.this.f8692b.isInAbsoluteStart() || !this.f8695a.mDir) && (!f.this.f8692b.isInAbsoluteEnd() || this.f8695a.mDir)) {
                return false;
            }
            f.this.f8691a.f8697a = motionEvent.getPointerId(0);
            f.this.f8691a.f8698b = this.f8695a.mAbsOffset;
            f.this.f8691a.c = this.f8695a.mDir;
            f fVar = f.this;
            fVar.a(fVar.d);
            return f.this.d.handleMoveTouchEvent(motionEvent);
        }

        public final void handleEntryTransition(c cVar) {
            f.this.g.onOverScrollStateChange(f.this, cVar.getStateId(), getStateId());
        }
    }

    protected static abstract class e {
        public float mAbsOffset;
        public float mDeltaOffset;
        public boolean mDir;

        /* access modifiers changed from: protected */
        public abstract boolean init(View view, MotionEvent motionEvent);

        protected e() {
        }
    }

    /* renamed from: me.a.a.a.a.f$f  reason: collision with other inner class name */
    protected static class C0208f {

        /* renamed from: a  reason: collision with root package name */
        protected int f8697a;

        /* renamed from: b  reason: collision with root package name */
        protected float f8698b;
        protected boolean c;

        protected C0208f() {
        }
    }

    protected class g implements c {

        /* renamed from: a  reason: collision with root package name */
        protected final float f8699a;

        /* renamed from: b  reason: collision with root package name */
        protected final float f8700b;
        final e c;
        int d;

        public g(float f, float f2) {
            this.c = f.this.a();
            this.f8699a = f;
            this.f8700b = f2;
        }

        public final int getStateId() {
            return this.d;
        }

        public final boolean handleMoveTouchEvent(MotionEvent motionEvent) {
            if (f.this.f8691a.f8697a != motionEvent.getPointerId(0)) {
                f fVar = f.this;
                fVar.a(fVar.e);
                return true;
            }
            View view = f.this.f8692b.getView();
            if (!this.c.init(view, motionEvent)) {
                return true;
            }
            float f = this.c.mDeltaOffset / (this.c.mDir == f.this.f8691a.c ? this.f8699a : this.f8700b);
            float f2 = this.c.mAbsOffset + f;
            if ((!f.this.f8691a.c || this.c.mDir || f2 > f.this.f8691a.f8698b) && (f.this.f8691a.c || !this.c.mDir || f2 < f.this.f8691a.f8698b)) {
                if (view.getParent() != null) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                }
                long eventTime = motionEvent.getEventTime() - motionEvent.getHistoricalEventTime(0);
                if (eventTime > 0) {
                    f.this.i = f / ((float) eventTime);
                }
                f.this.a(view, f2);
                f.this.h.onOverScrollUpdate(f.this, this.d, f2);
                return true;
            }
            f fVar2 = f.this;
            fVar2.a(view, fVar2.f8691a.f8698b, motionEvent);
            f.this.h.onOverScrollUpdate(f.this, this.d, 0.0f);
            f fVar3 = f.this;
            fVar3.a(fVar3.c);
            return true;
        }

        public final boolean handleUpOrCancelTouchEvent(MotionEvent motionEvent) {
            f fVar = f.this;
            fVar.a(fVar.e);
            return false;
        }

        public final void handleEntryTransition(c cVar) {
            this.d = f.this.f8691a.c ? 1 : 2;
            f.this.g.onOverScrollStateChange(f.this, cVar.getStateId(), getStateId());
        }
    }

    /* access modifiers changed from: protected */
    public abstract e a();

    /* access modifiers changed from: protected */
    public abstract void a(View view, float f2);

    /* access modifiers changed from: protected */
    public abstract void a(View view, float f2, MotionEvent motionEvent);

    /* access modifiers changed from: protected */
    public abstract a b();

    public f(me.a.a.a.a.a.c cVar, float f2, float f3, float f4) {
        this.f8692b = cVar;
        this.e = new b(f2);
        this.d = new g(f3, f4);
        this.c = new d();
        this.f = this.c;
        getView().setOnTouchListener(this);
        getView().setOverScrollMode(2);
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 1) {
            if (action == 2) {
                return this.f.handleMoveTouchEvent(motionEvent);
            }
            if (action != 3) {
                return false;
            }
        }
        return this.f.handleUpOrCancelTouchEvent(motionEvent);
    }

    public void setOverScrollStateListener(c cVar) {
        if (cVar == null) {
            cVar = new e.a();
        }
        this.g = cVar;
    }

    public void setOverScrollUpdateListener(d dVar) {
        if (dVar == null) {
            dVar = new e.b();
        }
        this.h = dVar;
    }

    public int getCurrentState() {
        return this.f.getStateId();
    }

    public View getView() {
        return this.f8692b.getView();
    }

    /* access modifiers changed from: protected */
    public final void a(c cVar) {
        c cVar2 = this.f;
        this.f = cVar;
        this.f.handleEntryTransition(cVar2);
    }

    public void detach() {
        getView().setOnTouchListener(null);
        getView().setOverScrollMode(0);
    }
}
