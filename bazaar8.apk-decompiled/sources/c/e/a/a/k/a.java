package c.e.a.a.k;

import android.annotation.TargetApi;
import android.graphics.Typeface;
import android.view.accessibility.CaptioningManager;
import c.e.a.a.o.I;

/* compiled from: CaptionStyleCompat */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f9058a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9059b;

    /* renamed from: c  reason: collision with root package name */
    public final int f9060c;

    /* renamed from: d  reason: collision with root package name */
    public final int f9061d;

    /* renamed from: e  reason: collision with root package name */
    public final int f9062e;

    /* renamed from: f  reason: collision with root package name */
    public final int f9063f;

    /* renamed from: g  reason: collision with root package name */
    public final Typeface f9064g;

    static {
        a aVar = new a(-1, -16777216, 0, 0, -1, null);
        f9058a = aVar;
    }

    public a(int i2, int i3, int i4, int i5, int i6, Typeface typeface) {
        this.f9059b = i2;
        this.f9060c = i3;
        this.f9061d = i4;
        this.f9062e = i5;
        this.f9063f = i6;
        this.f9064g = typeface;
    }

    @TargetApi(19)
    public static a a(CaptioningManager.CaptionStyle captionStyle) {
        if (I.f9565a >= 21) {
            return c(captionStyle);
        }
        return b(captionStyle);
    }

    @TargetApi(19)
    public static a b(CaptioningManager.CaptionStyle captionStyle) {
        a aVar = new a(captionStyle.foregroundColor, captionStyle.backgroundColor, 0, captionStyle.edgeType, captionStyle.edgeColor, captionStyle.getTypeface());
        return aVar;
    }

    @TargetApi(21)
    public static a c(CaptioningManager.CaptionStyle captionStyle) {
        a aVar = new a(captionStyle.hasForegroundColor() ? captionStyle.foregroundColor : f9058a.f9059b, captionStyle.hasBackgroundColor() ? captionStyle.backgroundColor : f9058a.f9060c, captionStyle.hasWindowColor() ? captionStyle.windowColor : f9058a.f9061d, captionStyle.hasEdgeType() ? captionStyle.edgeType : f9058a.f9062e, captionStyle.hasEdgeColor() ? captionStyle.edgeColor : f9058a.f9063f, captionStyle.getTypeface());
        return aVar;
    }
}
