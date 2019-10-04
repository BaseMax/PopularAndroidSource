package com.mapbox.android.b;

import android.content.Context;
import android.view.MotionEvent;
import android.view.WindowManager;
import java.util.Iterator;
import java.util.Set;

public abstract class b<L> {

    /* renamed from: a  reason: collision with root package name */
    protected final Context f4899a;

    /* renamed from: b  reason: collision with root package name */
    protected final WindowManager f4900b;
    protected L c;
    private final a d;
    private MotionEvent e;
    private MotionEvent f;
    private long g;
    private boolean h = true;

    /* access modifiers changed from: protected */
    public abstract boolean b(MotionEvent motionEvent);

    public b(Context context, a aVar) {
        this.f4899a = context;
        this.f4900b = (WindowManager) context.getSystemService("window");
        this.d = aVar;
    }

    /* access modifiers changed from: package-private */
    public final boolean a(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        MotionEvent motionEvent2 = this.f;
        if (motionEvent2 != null) {
            motionEvent2.recycle();
            this.f = null;
        }
        MotionEvent motionEvent3 = this.e;
        if (motionEvent3 != null) {
            this.f = MotionEvent.obtain(motionEvent3);
            this.e.recycle();
            this.e = null;
        }
        this.e = MotionEvent.obtain(motionEvent);
        this.g = this.e.getEventTime() - this.e.getDownTime();
        return b(motionEvent);
    }

    /* access modifiers changed from: protected */
    public boolean a(int i) {
        if (this.c == null || !this.h) {
            return false;
        }
        for (Set<Integer> next : this.d.getMutuallyExclusiveGestures()) {
            if (next.contains(Integer.valueOf(i))) {
                for (Integer intValue : next) {
                    int intValue2 = intValue.intValue();
                    Iterator<b> it = this.d.getDetectors().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            b next2 = it.next();
                            if (next2 instanceof j) {
                                j jVar = (j) next2;
                                if (jVar.h.contains(Integer.valueOf(intValue2)) && jVar.isInProgress()) {
                                    return false;
                                }
                            }
                        }
                    }
                }
                continue;
            }
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public final void a(L l) {
        this.c = l;
    }

    /* access modifiers changed from: protected */
    public final void a() {
        this.c = null;
    }

    public long getGestureDuration() {
        return this.g;
    }

    public MotionEvent getCurrentEvent() {
        return this.e;
    }

    public MotionEvent getPreviousEvent() {
        return this.f;
    }

    public boolean isEnabled() {
        return this.h;
    }

    public void setEnabled(boolean z) {
        this.h = z;
    }
}
