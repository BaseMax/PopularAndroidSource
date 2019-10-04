package c.d.a.a;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.crashlytics.android.answers.AnswersRetryFilesSender;

/* compiled from: CustomGestureDetector */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public int f7190a = -1;

    /* renamed from: b  reason: collision with root package name */
    public int f7191b = 0;

    /* renamed from: c  reason: collision with root package name */
    public final ScaleGestureDetector f7192c;

    /* renamed from: d  reason: collision with root package name */
    public VelocityTracker f7193d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f7194e;

    /* renamed from: f  reason: collision with root package name */
    public float f7195f;

    /* renamed from: g  reason: collision with root package name */
    public float f7196g;

    /* renamed from: h  reason: collision with root package name */
    public final float f7197h;

    /* renamed from: i  reason: collision with root package name */
    public final float f7198i;

    /* renamed from: j  reason: collision with root package name */
    public d f7199j;

    public c(Context context, d dVar) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f7198i = (float) viewConfiguration.getScaledMinimumFlingVelocity();
        this.f7197h = (float) viewConfiguration.getScaledTouchSlop();
        this.f7199j = dVar;
        this.f7192c = new ScaleGestureDetector(context, new b(this));
    }

    public final float b(MotionEvent motionEvent) {
        try {
            return motionEvent.getY(this.f7191b);
        } catch (Exception unused) {
            return motionEvent.getY();
        }
    }

    public boolean c(MotionEvent motionEvent) {
        try {
            this.f7192c.onTouchEvent(motionEvent);
            return d(motionEvent);
        } catch (IllegalArgumentException unused) {
            return true;
        }
    }

    public final boolean d(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f7190a = motionEvent.getPointerId(0);
            this.f7193d = VelocityTracker.obtain();
            VelocityTracker velocityTracker = this.f7193d;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            this.f7195f = a(motionEvent);
            this.f7196g = b(motionEvent);
            this.f7194e = false;
        } else if (action == 1) {
            this.f7190a = -1;
            if (this.f7194e && this.f7193d != null) {
                this.f7195f = a(motionEvent);
                this.f7196g = b(motionEvent);
                this.f7193d.addMovement(motionEvent);
                this.f7193d.computeCurrentVelocity(AnswersRetryFilesSender.BACKOFF_MS);
                float xVelocity = this.f7193d.getXVelocity();
                float yVelocity = this.f7193d.getYVelocity();
                if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) >= this.f7198i) {
                    this.f7199j.a(this.f7195f, this.f7196g, -xVelocity, -yVelocity);
                }
            }
            VelocityTracker velocityTracker2 = this.f7193d;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.f7193d = null;
            }
        } else if (action == 2) {
            float a2 = a(motionEvent);
            float b2 = b(motionEvent);
            float f2 = a2 - this.f7195f;
            float f3 = b2 - this.f7196g;
            if (!this.f7194e) {
                this.f7194e = Math.sqrt((double) ((f2 * f2) + (f3 * f3))) >= ((double) this.f7197h);
            }
            if (this.f7194e) {
                this.f7199j.a(f2, f3);
                this.f7195f = a2;
                this.f7196g = b2;
                VelocityTracker velocityTracker3 = this.f7193d;
                if (velocityTracker3 != null) {
                    velocityTracker3.addMovement(motionEvent);
                }
            }
        } else if (action == 3) {
            this.f7190a = -1;
            VelocityTracker velocityTracker4 = this.f7193d;
            if (velocityTracker4 != null) {
                velocityTracker4.recycle();
                this.f7193d = null;
            }
        } else if (action == 6) {
            int a3 = r.a(motionEvent.getAction());
            if (motionEvent.getPointerId(a3) == this.f7190a) {
                int i2 = a3 == 0 ? 1 : 0;
                this.f7190a = motionEvent.getPointerId(i2);
                this.f7195f = motionEvent.getX(i2);
                this.f7196g = motionEvent.getY(i2);
            }
        }
        int i3 = this.f7190a;
        if (i3 == -1) {
            i3 = 0;
        }
        this.f7191b = motionEvent.findPointerIndex(i3);
        return true;
    }

    public final float a(MotionEvent motionEvent) {
        try {
            return motionEvent.getX(this.f7191b);
        } catch (Exception unused) {
            return motionEvent.getX();
        }
    }

    public boolean b() {
        return this.f7192c.isInProgress();
    }

    public boolean a() {
        return this.f7194e;
    }
}
