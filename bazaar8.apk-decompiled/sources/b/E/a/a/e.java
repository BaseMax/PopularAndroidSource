package b.E.a.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.CycleInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import b.p.a.a.a;
import b.p.a.a.b;
import b.p.a.a.c;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: AnimationUtilsCompat */
public class e {
    public static Interpolator a(Context context, int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            return AnimationUtils.loadInterpolator(context, i2);
        }
        XmlResourceParser xmlResourceParser = null;
        if (i2 == 17563663) {
            try {
                return new a();
            } catch (XmlPullParserException e2) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i2));
                notFoundException.initCause(e2);
                throw notFoundException;
            } catch (IOException e3) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i2));
                notFoundException2.initCause(e3);
                throw notFoundException2;
            } catch (Throwable th) {
                if (xmlResourceParser != null) {
                    xmlResourceParser.close();
                }
                throw th;
            }
        } else if (i2 == 17563661) {
            return new b();
        } else {
            if (i2 == 17563662) {
                return new c();
            }
            XmlResourceParser animation = context.getResources().getAnimation(i2);
            Interpolator a2 = a(context, context.getResources(), context.getTheme(), animation);
            if (animation != null) {
                animation.close();
            }
            return a2;
        }
    }

    public static Interpolator a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser) {
        Interpolator hVar;
        int depth = xmlPullParser.getDepth();
        Interpolator interpolator = null;
        while (true) {
            int next = xmlPullParser.next();
            if ((next != 3 || xmlPullParser.getDepth() > depth) && next != 1) {
                if (next == 2) {
                    AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
                    String name = xmlPullParser.getName();
                    if (name.equals("linearInterpolator")) {
                        interpolator = new LinearInterpolator();
                    } else {
                        if (name.equals("accelerateInterpolator")) {
                            hVar = new AccelerateInterpolator(context, asAttributeSet);
                        } else if (name.equals("decelerateInterpolator")) {
                            hVar = new DecelerateInterpolator(context, asAttributeSet);
                        } else if (name.equals("accelerateDecelerateInterpolator")) {
                            interpolator = new AccelerateDecelerateInterpolator();
                        } else if (name.equals("cycleInterpolator")) {
                            hVar = new CycleInterpolator(context, asAttributeSet);
                        } else if (name.equals("anticipateInterpolator")) {
                            hVar = new AnticipateInterpolator(context, asAttributeSet);
                        } else if (name.equals("overshootInterpolator")) {
                            hVar = new OvershootInterpolator(context, asAttributeSet);
                        } else if (name.equals("anticipateOvershootInterpolator")) {
                            hVar = new AnticipateOvershootInterpolator(context, asAttributeSet);
                        } else if (name.equals("bounceInterpolator")) {
                            interpolator = new BounceInterpolator();
                        } else if (name.equals("pathInterpolator")) {
                            hVar = new h(context, asAttributeSet, xmlPullParser);
                        } else {
                            throw new RuntimeException("Unknown interpolator name: " + xmlPullParser.getName());
                        }
                        interpolator = hVar;
                    }
                }
            }
        }
        return interpolator;
    }
}
