package cab.snapp.snappuikit;

import android.content.Context;
import cab.snapp.snappuikit.a;
import com.muddzdev.styleabletoast.StyleableToast;

public final class b {
    private static final int c = a.b.pure_white;
    private static final int d = a.b.color_primary;
    private static final int e = a.b.old_silver;
    private static final int f = a.e.iran_sans_mobile_medium;

    /* renamed from: a  reason: collision with root package name */
    StyleableToast.a f1627a;

    /* renamed from: b  reason: collision with root package name */
    Context f1628b;

    public static b makeText(Context context, String str) {
        return new b(new StyleableToast.a(context).text(str).textColor(context.getResources().getColor(d)).textSize(16.0f).backgroundColor(context.getResources().getColor(c)).cornerRadius(5).stroke(1, context.getResources().getColor(e)).font(f));
    }

    public static b makeText(Context context, int i) {
        return new b(new StyleableToast.a(context).text(context.getString(i)).textColor(context.getResources().getColor(d)).textSize(16.0f).backgroundColor(context.getResources().getColor(c)).cornerRadius(5).stroke(1, context.getResources().getColor(e)).font(f));
    }

    public static b makeText(Context context, String str, int i) {
        b makeText = makeText(context, str);
        if (!(i == 1 || i == 0)) {
            makeText.f1627a.iconStart(i);
        }
        return makeText;
    }

    public static b makeText(Context context, int i, int i2) {
        b makeText = makeText(context, i);
        if (!(i2 == 1 || i2 == 0)) {
            makeText.f1627a.iconStart(i2);
        }
        return makeText;
    }

    private b(StyleableToast.a aVar) {
        this.f1627a = aVar;
    }

    public b(Context context) {
        this.f1628b = context;
        this.f1627a = new StyleableToast.a(context);
    }

    public final b text(String str) {
        this.f1627a.text(str);
        return this;
    }

    public final b text(int i) {
        this.f1627a.text(this.f1628b.getString(i));
        return this;
    }

    public final b textColor(int i) {
        this.f1627a.textColor(i);
        return this;
    }

    public final b setTextBold() {
        this.f1627a.textBold();
        return this;
    }

    public final b setFont(int i) {
        this.f1627a.font(i);
        return this;
    }

    public final b textSize(float f2) {
        this.f1627a.textSize(f2);
        return this;
    }

    public final b backgroundColor(int i) {
        this.f1627a.backgroundColor(i);
        return this;
    }

    public final b setBackgroundSolid() {
        this.f1627a.solidBackground();
        return this;
    }

    public final b stroke(int i, int i2) {
        this.f1627a.stroke(i, i2);
        return this;
    }

    public final b startIcon(int i) {
        this.f1627a.iconStart(i);
        return this;
    }

    public final b endIcon(int i) {
        this.f1627a.iconEnd(i);
        return this;
    }

    public final b length(int i) {
        this.f1627a.length(i);
        return this;
    }

    public final b gravity(int i) {
        this.f1627a.gravity(i);
        return this;
    }

    public final b cornerRadius(int i) {
        this.f1627a.cornerRadius(i);
        return this;
    }

    public final void show() {
        this.f1627a.show();
    }
}
