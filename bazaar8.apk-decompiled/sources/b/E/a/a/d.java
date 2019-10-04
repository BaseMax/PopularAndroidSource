package b.E.a.a;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import b.f.C0243b;
import b.i.b.a.i;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: AnimatedVectorDrawableCompat */
public class d extends i implements b {

    /* renamed from: b  reason: collision with root package name */
    public a f1226b;

    /* renamed from: c  reason: collision with root package name */
    public Context f1227c;

    /* renamed from: d  reason: collision with root package name */
    public ArgbEvaluator f1228d;

    /* renamed from: e  reason: collision with root package name */
    public Animator.AnimatorListener f1229e;

    /* renamed from: f  reason: collision with root package name */
    public ArrayList<Object> f1230f;

    /* renamed from: g  reason: collision with root package name */
    public final Drawable.Callback f1231g;

    /* compiled from: AnimatedVectorDrawableCompat */
    private static class a extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        public int f1232a;

        /* renamed from: b  reason: collision with root package name */
        public k f1233b;

        /* renamed from: c  reason: collision with root package name */
        public AnimatorSet f1234c;

        /* renamed from: d  reason: collision with root package name */
        public ArrayList<Animator> f1235d;

        /* renamed from: e  reason: collision with root package name */
        public C0243b<Animator, String> f1236e;

        public a(Context context, a aVar, Drawable.Callback callback, Resources resources) {
            if (aVar != null) {
                this.f1232a = aVar.f1232a;
                k kVar = aVar.f1233b;
                if (kVar != null) {
                    Drawable.ConstantState constantState = kVar.getConstantState();
                    if (resources != null) {
                        this.f1233b = (k) constantState.newDrawable(resources);
                    } else {
                        this.f1233b = (k) constantState.newDrawable();
                    }
                    k kVar2 = this.f1233b;
                    kVar2.mutate();
                    this.f1233b = kVar2;
                    this.f1233b.setCallback(callback);
                    this.f1233b.setBounds(aVar.f1233b.getBounds());
                    this.f1233b.a(false);
                }
                ArrayList<Animator> arrayList = aVar.f1235d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.f1235d = new ArrayList<>(size);
                    this.f1236e = new C0243b<>(size);
                    for (int i2 = 0; i2 < size; i2++) {
                        Animator animator = aVar.f1235d.get(i2);
                        Animator clone = animator.clone();
                        String str = aVar.f1236e.get(animator);
                        clone.setTarget(this.f1233b.a(str));
                        this.f1235d.add(clone);
                        this.f1236e.put(clone, str);
                    }
                    a();
                }
            }
        }

        public void a() {
            if (this.f1234c == null) {
                this.f1234c = new AnimatorSet();
            }
            this.f1234c.playTogether(this.f1235d);
        }

        public int getChangingConfigurations() {
            return this.f1232a;
        }

        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    /* compiled from: AnimatedVectorDrawableCompat */
    private static class b extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        public final Drawable.ConstantState f1237a;

        public b(Drawable.ConstantState constantState) {
            this.f1237a = constantState;
        }

        public boolean canApplyTheme() {
            return this.f1237a.canApplyTheme();
        }

        public int getChangingConfigurations() {
            return this.f1237a.getChangingConfigurations();
        }

        public Drawable newDrawable() {
            d dVar = new d();
            dVar.f1242a = this.f1237a.newDrawable();
            dVar.f1242a.setCallback(dVar.f1231g);
            return dVar;
        }

        public Drawable newDrawable(Resources resources) {
            d dVar = new d();
            dVar.f1242a = this.f1237a.newDrawable(resources);
            dVar.f1242a.setCallback(dVar.f1231g);
            return dVar;
        }

        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            d dVar = new d();
            dVar.f1242a = this.f1237a.newDrawable(resources, theme);
            dVar.f1242a.setCallback(dVar.f1231g);
            return dVar;
        }
    }

    public d() {
        this(null, null, null);
    }

    public static d a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        d dVar = new d(context);
        dVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return dVar;
    }

    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            b.i.c.a.a.a(drawable, theme);
        }
    }

    public boolean canApplyTheme() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return b.i.c.a.a.a(drawable);
        }
        return false;
    }

    public void draw(Canvas canvas) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        this.f1226b.f1233b.draw(canvas);
        if (this.f1226b.f1234c.isStarted()) {
            invalidateSelf();
        }
    }

    public int getAlpha() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return b.i.c.a.a.c(drawable);
        }
        return this.f1226b.f1233b.getAlpha();
    }

    public int getChangingConfigurations() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.f1226b.f1232a;
    }

    public ColorFilter getColorFilter() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return b.i.c.a.a.d(drawable);
        }
        return this.f1226b.f1233b.getColorFilter();
    }

    public Drawable.ConstantState getConstantState() {
        Drawable drawable = this.f1242a;
        if (drawable == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new b(drawable.getConstantState());
    }

    public int getIntrinsicHeight() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return this.f1226b.f1233b.getIntrinsicHeight();
    }

    public int getIntrinsicWidth() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return this.f1226b.f1233b.getIntrinsicWidth();
    }

    public int getOpacity() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return this.f1226b.f1233b.getOpacity();
    }

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            b.i.c.a.a.a(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray a2 = i.a(resources, theme, attributeSet, a.f1217e);
                    int resourceId = a2.getResourceId(0, 0);
                    if (resourceId != 0) {
                        k a3 = k.a(resources, resourceId, theme);
                        a3.a(false);
                        a3.setCallback(this.f1231g);
                        k kVar = this.f1226b.f1233b;
                        if (kVar != null) {
                            kVar.setCallback(null);
                        }
                        this.f1226b.f1233b = a3;
                    }
                    a2.recycle();
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, a.f1218f);
                    String string = obtainAttributes.getString(0);
                    int resourceId2 = obtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f1227c;
                        if (context != null) {
                            a(string, f.a(context, resourceId2));
                        } else {
                            obtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                    }
                    obtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.f1226b.a();
    }

    public boolean isAutoMirrored() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return b.i.c.a.a.f(drawable);
        }
        return this.f1226b.f1233b.isAutoMirrored();
    }

    public boolean isRunning() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return ((AnimatedVectorDrawable) drawable).isRunning();
        }
        return this.f1226b.f1234c.isRunning();
    }

    public boolean isStateful() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return this.f1226b.f1233b.isStateful();
    }

    public Drawable mutate() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f1226b.f1233b.setBounds(rect);
        }
    }

    public boolean onLevelChange(int i2) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return drawable.setLevel(i2);
        }
        return this.f1226b.f1233b.setLevel(i2);
    }

    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        return this.f1226b.f1233b.setState(iArr);
    }

    public void setAlpha(int i2) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            drawable.setAlpha(i2);
        } else {
            this.f1226b.f1233b.setAlpha(i2);
        }
    }

    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            b.i.c.a.a.a(drawable, z);
        } else {
            this.f1226b.f1233b.setAutoMirrored(z);
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f1226b.f1233b.setColorFilter(colorFilter);
        }
    }

    public void setTint(int i2) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            b.i.c.a.a.b(drawable, i2);
        } else {
            this.f1226b.f1233b.setTint(i2);
        }
    }

    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            b.i.c.a.a.a(drawable, colorStateList);
        } else {
            this.f1226b.f1233b.setTintList(colorStateList);
        }
    }

    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            b.i.c.a.a.a(drawable, mode);
        } else {
            this.f1226b.f1233b.setTintMode(mode);
        }
    }

    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.f1226b.f1233b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    public void start() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
        } else if (!this.f1226b.f1234c.isStarted()) {
            this.f1226b.f1234c.start();
            invalidateSelf();
        }
    }

    public void stop() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f1226b.f1234c.end();
        }
    }

    public d(Context context) {
        this(context, null, null);
    }

    public d(Context context, a aVar, Resources resources) {
        this.f1228d = null;
        this.f1229e = null;
        this.f1230f = null;
        this.f1231g = new c(this);
        this.f1227c = context;
        if (aVar != null) {
            this.f1226b = aVar;
        } else {
            this.f1226b = new a(context, aVar, this.f1231g, resources);
        }
    }

    public final void a(Animator animator) {
        if (animator instanceof AnimatorSet) {
            ArrayList<Animator> childAnimations = ((AnimatorSet) animator).getChildAnimations();
            if (childAnimations != null) {
                for (int i2 = 0; i2 < childAnimations.size(); i2++) {
                    a(childAnimations.get(i2));
                }
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.f1228d == null) {
                    this.f1228d = new ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.f1228d);
            }
        }
    }

    public final void a(String str, Animator animator) {
        animator.setTarget(this.f1226b.f1233b.a(str));
        if (Build.VERSION.SDK_INT < 21) {
            a(animator);
        }
        a aVar = this.f1226b;
        if (aVar.f1235d == null) {
            aVar.f1235d = new ArrayList<>();
            this.f1226b.f1236e = new C0243b<>();
        }
        this.f1226b.f1235d.add(animator);
        this.f1226b.f1236e.put(animator, str);
    }

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
