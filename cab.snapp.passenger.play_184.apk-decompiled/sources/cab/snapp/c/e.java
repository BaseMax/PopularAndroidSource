package cab.snapp.c;

import android.content.Context;
import java.util.Formatter;

public final class e {
    public static String convertByteToHex(byte[] bArr) {
        Formatter formatter = new Formatter();
        for (byte valueOf : bArr) {
            formatter.format("%02x", new Object[]{Byte.valueOf(valueOf)});
        }
        String formatter2 = formatter.toString();
        formatter.close();
        return formatter2;
    }

    public static float convertPixelToDp(Context context, float f) {
        return (context == null || context.getResources() == null) ? f : f / (((float) context.getResources().getDisplayMetrics().densityDpi) / 160.0f);
    }

    public static float convertDpToPixel(Context context, float f) {
        return (context == null || context.getResources() == null) ? f : f * (((float) context.getResources().getDisplayMetrics().densityDpi) / 160.0f);
    }
}
