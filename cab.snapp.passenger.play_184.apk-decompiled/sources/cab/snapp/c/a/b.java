package cab.snapp.c.a;

import org.eclipse.paho.a.a.w;

public final class b {
    public static String getJalaliTimeDate(String str) {
        try {
            String[] split = str.split(" ");
            String str2 = split[0];
            String str3 = split[1];
            String[] split2 = str2.split("-");
            String[] split3 = str3.split(":");
            new a(Integer.parseInt(split2[0]), Integer.parseInt(split2[1]), Integer.parseInt(split2[2]));
            return r5.getIranianDate() + " " + split3[0] + ":" + split3[1];
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getDatePickerJalaliDate(String str) {
        try {
            String[] split = str.split(" ")[0].split("-");
            a aVar = new a();
            aVar.setGregorianDate(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]));
            return aVar.getIranianDate();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getDataString(int i, int i2, int i3) {
        try {
            a aVar = new a();
            aVar.setGregorianDate(i, i2, i3);
            return aVar.getIranianDate();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String getDatePickerGregorianDate(String str) {
        try {
            String[] split = str.split(" ")[0].split(w.TOPIC_LEVEL_SEPARATOR);
            a aVar = new a();
            aVar.setIranianDate(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]));
            String[] split2 = aVar.getGregorianDate().split(w.TOPIC_LEVEL_SEPARATOR);
            return split2[0] + "-" + split2[1] + "-" + split2[2];
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
