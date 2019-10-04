package b.b.c.a;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import b.E.a.a.k;
import b.b.c.a.d;
import b.b.c.a.f;
import b.b.g.Q;
import b.f.j;
import b.i.b.a.i;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@SuppressLint({"RestrictedAPI"})
/* compiled from: AnimatedStateListDrawableCompat */
public class b extends f implements b.i.c.a.c {
    public C0022b p;
    public f q;
    public int r;
    public int s;
    public boolean t;

    /* compiled from: AnimatedStateListDrawableCompat */
    private static class a extends f {

        /* renamed from: a  reason: collision with root package name */
        public final Animatable f1777a;

        public a(Animatable animatable) {
            super();
            this.f1777a = animatable;
        }

        public void c() {
            this.f1777a.start();
        }

        public void d() {
            this.f1777a.stop();
        }
    }

    /* renamed from: b.b.c.a.b$b  reason: collision with other inner class name */
    /* compiled from: AnimatedStateListDrawableCompat */
    static class C0022b extends f.a {
        public b.f.f<Long> K;
        public j<Integer> L;

        public C0022b(C0022b bVar, b bVar2, Resources resources) {
            super(bVar, bVar2, resources);
            if (bVar != null) {
                this.K = bVar.K;
                this.L = bVar.L;
                return;
            }
            this.K = new b.f.f<>();
            this.L = new j<>();
        }

        public static long c(int i2, int i3) {
            return ((long) i3) | (((long) i2) << 32);
        }

        public int a(int i2, int i3, Drawable drawable, boolean z) {
            int a2 = super.a(drawable);
            long c2 = c(i2, i3);
            long j2 = z ? 8589934592L : 0;
            long j3 = (long) a2;
            this.K.a(c2, Long.valueOf(j3 | j2));
            if (z) {
                this.K.a(c(i3, i2), Long.valueOf(4294967296L | j3 | j2));
            }
            return a2;
        }

        public int b(int[] iArr) {
            int a2 = super.a(iArr);
            if (a2 >= 0) {
                return a2;
            }
            return super.a(StateSet.WILD_CARD);
        }

        public int d(int i2) {
            if (i2 < 0) {
                return 0;
            }
            return this.L.b(i2, 0).intValue();
        }

        public boolean e(int i2, int i3) {
            return (this.K.b(c(i2, i3), -1L).longValue() & 4294967296L) != 0;
        }

        public boolean f(int i2, int i3) {
            return (this.K.b(c(i2, i3), -1L).longValue() & 8589934592L) != 0;
        }

        public void n() {
            this.K = this.K.clone();
            this.L = this.L.clone();
        }

        public Drawable newDrawable() {
            return new b(this, null);
        }

        public int d(int i2, int i3) {
            return (int) this.K.b(c(i2, i3), -1L).longValue();
        }

        public Drawable newDrawable(Resources resources) {
            return new b(this, resources);
        }

        public int a(int[] iArr, Drawable drawable, int i2) {
            int a2 = super.a(iArr, drawable);
            this.L.c(a2, Integer.valueOf(i2));
            return a2;
        }
    }

    /* compiled from: AnimatedStateListDrawableCompat */
    private static class c extends f {

        /* renamed from: a  reason: collision with root package name */
        public final b.E.a.a.d f1778a;

        public c(b.E.a.a.d dVar) {
            super();
            this.f1778a = dVar;
        }

        public void c() {
            this.f1778a.start();
        }

        public void d() {
            this.f1778a.stop();
        }
    }

    /* compiled from: AnimatedStateListDrawableCompat */
    private static class d extends f {

        /* renamed from: a  reason: collision with root package name */
        public final ObjectAnimator f1779a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f1780b;

        public d(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super();
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i2 = z ? numberOfFrames - 1 : 0;
            int i3 = z ? 0 : numberOfFrames - 1;
            e eVar = new e(animationDrawable, z);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", new int[]{i2, i3});
            if (Build.VERSION.SDK_INT >= 18) {
                ofInt.setAutoCancel(true);
            }
            ofInt.setDuration((long) eVar.a());
            ofInt.setInterpolator(eVar);
            this.f1780b = z2;
            this.f1779a = ofInt;
        }

        public boolean a() {
            return this.f1780b;
        }

        public void b() {
            this.f1779a.reverse();
        }

        public void c() {
            this.f1779a.start();
        }

        public void d() {
            this.f1779a.cancel();
        }
    }

    /* compiled from: AnimatedStateListDrawableCompat */
    private static class e implements TimeInterpolator {

        /* renamed from: a  reason: collision with root package name */
        public int[] f1781a;

        /* renamed from: b  reason: collision with root package name */
        public int f1782b;

        /* renamed from: c  reason: collision with root package name */
        public int f1783c;

        public e(AnimationDrawable animationDrawable, boolean z) {
            a(animationDrawable, z);
        }

        public int a(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f1782b = numberOfFrames;
            int[] iArr = this.f1781a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.f1781a = new int[numberOfFrames];
            }
            int[] iArr2 = this.f1781a;
            int i2 = 0;
            for (int i3 = 0; i3 < numberOfFrames; i3++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i3) - 1 : i3);
                iArr2[i3] = duration;
                i2 += duration;
            }
            this.f1783c = i2;
            return i2;
        }

        public float getInterpolation(float f2) {
            int i2 = (int) ((f2 * ((float) this.f1783c)) + 0.5f);
            int i3 = this.f1782b;
            int[] iArr = this.f1781a;
            int i4 = 0;
            while (i4 < i3 && i2 >= iArr[i4]) {
                i2 -= iArr[i4];
                i4++;
            }
            return (((float) i4) / ((float) i3)) + (i4 < i3 ? ((float) i2) / ((float) this.f1783c) : 0.0f);
        }

        public int a() {
            return this.f1783c;
        }
    }

    /* compiled from: AnimatedStateListDrawableCompat */
    private static abstract class f {
        public f() {
        }

        public boolean a() {
            return false;
        }

        public void b() {
        }

        public abstract void c();

        public abstract void d();
    }

    public b() {
        this(null, null);
    }

    public void b(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        TypedArray a2 = i.a(resources, theme, attributeSet, b.b.d.b.AnimatedStateListDrawableCompat);
        setVisible(a2.getBoolean(b.b.d.b.AnimatedStateListDrawableCompat_android_visible, true), true);
        a(a2);
        a(resources);
        a2.recycle();
        c(context, resources, xmlPullParser, attributeSet, theme);
        d();
    }

    public final void c(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next != 1) {
                int depth2 = xmlPullParser.getDepth();
                if (depth2 < depth && next == 3) {
                    return;
                }
                if (next == 2 && depth2 <= depth) {
                    if (xmlPullParser.getName().equals("item")) {
                        d(context, resources, xmlPullParser, attributeSet, theme);
                    } else if (xmlPullParser.getName().equals("transition")) {
                        e(context, resources, xmlPullParser, attributeSet, theme);
                    }
                }
            } else {
                return;
            }
        }
    }

    public final void d() {
        onStateChange(getState());
    }

    public final int e(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int next;
        TypedArray a2 = i.a(resources, theme, attributeSet, b.b.d.b.AnimatedStateListDrawableTransition);
        int resourceId = a2.getResourceId(b.b.d.b.AnimatedStateListDrawableTransition_android_fromId, -1);
        int resourceId2 = a2.getResourceId(b.b.d.b.AnimatedStateListDrawableTransition_android_toId, -1);
        int resourceId3 = a2.getResourceId(b.b.d.b.AnimatedStateListDrawableTransition_android_drawable, -1);
        Drawable b2 = resourceId3 > 0 ? Q.a().b(context, resourceId3) : null;
        boolean z = a2.getBoolean(b.b.d.b.AnimatedStateListDrawableTransition_android_reversible, false);
        a2.recycle();
        if (b2 == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
            } else if (xmlPullParser.getName().equals("animated-vector")) {
                b2 = b.E.a.a.d.a(context, resources, xmlPullParser, attributeSet, theme);
            } else if (Build.VERSION.SDK_INT >= 21) {
                b2 = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
            } else {
                b2 = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
            }
        }
        if (b2 == null) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
        } else if (resourceId != -1 && resourceId2 != -1) {
            return this.p.a(resourceId, resourceId2, b2, z);
        } else {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
        }
    }

    public boolean isStateful() {
        return true;
    }

    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        f fVar = this.q;
        if (fVar != null) {
            fVar.d();
            this.q = null;
            a(this.r);
            this.r = -1;
            this.s = -1;
        }
    }

    public Drawable mutate() {
        if (!this.t) {
            super.mutate();
            if (this == this) {
                this.p.n();
                this.t = true;
            }
        }
        return this;
    }

    public boolean onStateChange(int[] iArr) {
        int b2 = this.p.b(iArr);
        boolean z = b2 != b() && (b(b2) || a(b2));
        Drawable current = getCurrent();
        return current != null ? z | current.setState(iArr) : z;
    }

    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (this.q != null && (visible || z2)) {
            if (z) {
                this.q.c();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    public b(C0022b bVar, Resources resources) {
        super(null);
        this.r = -1;
        this.s = -1;
        a((d.b) new C0022b(bVar, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    public final int d(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int next;
        TypedArray a2 = i.a(resources, theme, attributeSet, b.b.d.b.AnimatedStateListDrawableItem);
        int resourceId = a2.getResourceId(b.b.d.b.AnimatedStateListDrawableItem_android_id, 0);
        int resourceId2 = a2.getResourceId(b.b.d.b.AnimatedStateListDrawableItem_android_drawable, -1);
        Drawable b2 = resourceId2 > 0 ? Q.a().b(context, resourceId2) : null;
        a2.recycle();
        int[] a3 = a(attributeSet);
        if (b2 == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
            } else if (xmlPullParser.getName().equals("vector")) {
                b2 = k.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
            } else if (Build.VERSION.SDK_INT >= 21) {
                b2 = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
            } else {
                b2 = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
            }
        }
        if (b2 != null) {
            return this.p.a(a3, b2, resourceId);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
    }

    public static b a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (name.equals("animated-selector")) {
            b bVar = new b();
            bVar.b(context, resources, xmlPullParser, attributeSet, theme);
            return bVar;
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
    }

    public final boolean b(int i2) {
        int i3;
        f fVar;
        f fVar2 = this.q;
        if (fVar2 == null) {
            i3 = b();
        } else if (i2 == this.r) {
            return true;
        } else {
            if (i2 != this.s || !fVar2.a()) {
                i3 = this.r;
                fVar2.d();
            } else {
                fVar2.b();
                this.r = this.s;
                this.s = i2;
                return true;
            }
        }
        this.q = null;
        this.s = -1;
        this.r = -1;
        C0022b bVar = this.p;
        int d2 = bVar.d(i3);
        int d3 = bVar.d(i2);
        if (!(d3 == 0 || d2 == 0)) {
            int d4 = bVar.d(d2, d3);
            if (d4 < 0) {
                return false;
            }
            boolean f2 = bVar.f(d2, d3);
            a(d4);
            Drawable current = getCurrent();
            if (current instanceof AnimationDrawable) {
                fVar = new d((AnimationDrawable) current, bVar.e(d2, d3), f2);
            } else if (current instanceof b.E.a.a.d) {
                fVar = new c((b.E.a.a.d) current);
            } else if (current instanceof Animatable) {
                fVar = new a((Animatable) current);
            }
            fVar.c();
            this.q = fVar;
            this.s = i3;
            this.r = i2;
            return true;
        }
        return false;
    }

    public final void a(TypedArray typedArray) {
        C0022b bVar = this.p;
        if (Build.VERSION.SDK_INT >= 21) {
            bVar.f1801d |= typedArray.getChangingConfigurations();
        }
        bVar.b(typedArray.getBoolean(b.b.d.b.AnimatedStateListDrawableCompat_android_variablePadding, bVar.f1806i));
        bVar.a(typedArray.getBoolean(b.b.d.b.AnimatedStateListDrawableCompat_android_constantSize, bVar.f1809l));
        bVar.b(typedArray.getInt(b.b.d.b.AnimatedStateListDrawableCompat_android_enterFadeDuration, bVar.A));
        bVar.c(typedArray.getInt(b.b.d.b.AnimatedStateListDrawableCompat_android_exitFadeDuration, bVar.B));
        setDither(typedArray.getBoolean(b.b.d.b.AnimatedStateListDrawableCompat_android_dither, bVar.x));
    }

    public C0022b a() {
        return new C0022b(this.p, this, null);
    }

    public void a(d.b bVar) {
        super.a(bVar);
        if (bVar instanceof C0022b) {
            this.p = (C0022b) bVar;
        }
    }
}
