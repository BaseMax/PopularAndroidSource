package cab.snapp.snappuikit.ratingbar;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;

final class a {

    /* renamed from: a  reason: collision with root package name */
    private static DecimalFormat f1650a;

    static float a(float f, int i, float f2) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        float f3 = (float) i;
        if (f > f3) {
            f = f3;
        }
        return f % f2 != 0.0f ? f2 : f;
    }

    a() {
    }

    static float a(PartialView partialView, float f, float f2) {
        DecimalFormat a2 = a();
        return Float.parseFloat(a2.format((double) (((float) ((Integer) partialView.getTag()).intValue()) - (1.0f - (((float) Math.round(Float.parseFloat(a2.format((double) ((f2 - ((float) partialView.getLeft())) / ((float) partialView.getWidth())))) / f)) * f)))));
    }

    private static DecimalFormat a() {
        if (f1650a == null) {
            DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols(Locale.ENGLISH);
            decimalFormatSymbols.setDecimalSeparator('.');
            f1650a = new DecimalFormat("#.##", decimalFormatSymbols);
        }
        return f1650a;
    }
}
