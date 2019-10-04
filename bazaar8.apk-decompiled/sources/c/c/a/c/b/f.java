package c.c.a.c.b;

import android.content.Context;
import c.c.a.c.a;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import h.f.b.j;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Formatter;
import java.util.Locale;

/* compiled from: LongExt.kt */
public final class f {
    public static final String a(long j2) {
        String format = new SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(Long.valueOf(j2));
        j.a((Object) format, "SimpleDateFormat(\"HH:mm:…etDefault()).format(this)");
        return format;
    }

    public static final String b(long j2) {
        StringBuilder sb = new StringBuilder();
        Formatter formatter = new Formatter(sb, Locale.getDefault());
        int i2 = (int) (j2 / ((long) AnswersRetryFilesSender.BACKOFF_MS));
        int i3 = i2 % 60;
        int i4 = (i2 / 60) % 60;
        int i5 = i2 / 3600;
        sb.setLength(0);
        if (i5 > 0) {
            String formatter2 = formatter.format("%d:%02d:%02d", new Object[]{Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i3)}).toString();
            j.a((Object) formatter2, "formatter.format(\"%d:%02…utes, seconds).toString()");
            return formatter2;
        }
        String formatter3 = formatter.format("%02d:%02d", new Object[]{Integer.valueOf(i4), Integer.valueOf(i3)}).toString();
        j.a((Object) formatter3, "formatter.format(\"%02d:%…utes, seconds).toString()");
        return formatter3;
    }

    public static final String a(long j2, Context context) {
        j.b(context, "context");
        if (j2 <= 0) {
            return "0 " + context.getString(a.size_bytes);
        }
        int[] iArr = {a.size_bytes, a.size_kbytes, a.size_mbytes, a.size_gbytes, a.size_tbytes};
        double d2 = (double) j2;
        int log10 = (int) (Math.log10(d2) / Math.log10(1024.0d));
        StringBuilder sb = new StringBuilder();
        DecimalFormat decimalFormat = new DecimalFormat("#,##0.#");
        double pow = Math.pow(1024.0d, (double) log10);
        Double.isNaN(d2);
        sb.append(decimalFormat.format(d2 / pow));
        sb.append(" ");
        sb.append(context.getString(iArr[log10]));
        return sb.toString();
    }
}
