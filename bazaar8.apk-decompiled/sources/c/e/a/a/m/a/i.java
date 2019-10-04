package c.e.a.a.m.a;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import c.e.a.a.m.a.d;

/* compiled from: TouchTracker */
public class i extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, d.a {

    /* renamed from: a  reason: collision with root package name */
    public final PointF f9408a = new PointF();

    /* renamed from: b  reason: collision with root package name */
    public final PointF f9409b = new PointF();

    /* renamed from: c  reason: collision with root package name */
    public final a f9410c;

    /* renamed from: d  reason: collision with root package name */
    public final float f9411d;

    /* renamed from: e  reason: collision with root package name */
    public final GestureDetector f9412e;

    /* renamed from: f  reason: collision with root package name */
    public volatile float f9413f;

    /* renamed from: g  reason: collision with root package name */
    public g f9414g;

    /* compiled from: TouchTracker */
    interface a {
        void a(PointF pointF);
    }

    public i(Context context, a aVar, float f2) {
        this.f9410c = aVar;
        this.f9411d = f2;
        this.f9412e = new GestureDetector(context, this);
        this.f9413f = 3.1415927f;
    }

    public void a(g gVar) {
        this.f9414g = gVar;
    }

    public boolean onDown(MotionEvent motionEvent) {
        this.f9408a.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        float x = (motionEvent2.getX() - this.f9408a.x) / this.f9411d;
        float y = motionEvent2.getY();
        PointF pointF = this.f9408a;
        float f4 = (y - pointF.y) / this.f9411d;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d2 = (double) this.f9413f;
        float cos = (float) Math.cos(d2);
        float sin = (float) Math.sin(d2);
        PointF pointF2 = this.f9409b;
        pointF2.x -= (cos * x) - (sin * f4);
        pointF2.y += (sin * x) + (cos * f4);
        pointF2.y = Math.max(-45.0f, Math.min(45.0f, pointF2.y));
        this.f9410c.a(this.f9409b);
        return true;
    }

    public boolean onSingleTapUp(MotionEvent motionEvent) {
        g gVar = this.f9414g;
        if (gVar != null) {
            return gVar.onSingleTapUp(motionEvent);
        }
        return false;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f9412e.onTouchEvent(motionEvent);
    }

    public void a(float[] fArr, float f2) {
        this.f9413f = -f2;
    }
}
