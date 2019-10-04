package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import com.yandex.metrica.impl.h;
import org.a.b;
import org.a.c;

public class hh {

    /* renamed from: a  reason: collision with root package name */
    private final String f6101a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6102b;
    private final String c;
    private final Point d;

    public hh(Context context) {
        this.f6101a = Build.MANUFACTURER;
        this.f6102b = Build.MODEL;
        this.c = Build.VERSION.SDK_INT > 8 ? Build.SERIAL : "";
        h.a aVar = h.a(context).f;
        this.d = new Point(aVar.f5825a, aVar.f5826b);
    }

    public hh(String str) throws b {
        c cVar = new c(str);
        this.f6101a = cVar.getString("manufacturer");
        this.f6102b = cVar.getString("model");
        this.c = cVar.getString("serial");
        this.d = new Point(cVar.getInt("width"), cVar.getInt("height"));
    }

    public c a() throws b {
        c cVar = new c();
        cVar.put("manufacturer", (Object) this.f6101a);
        cVar.put("model", (Object) this.f6102b);
        cVar.put("serial", (Object) this.c);
        cVar.put("width", this.d.x);
        cVar.put("height", this.d.y);
        return cVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            hh hhVar = (hh) obj;
            String str = this.f6101a;
            if (str == null ? hhVar.f6101a != null : !str.equals(hhVar.f6101a)) {
                return false;
            }
            String str2 = this.f6102b;
            if (str2 == null ? hhVar.f6102b != null : !str2.equals(hhVar.f6102b)) {
                return false;
            }
            String str3 = this.c;
            if (str3 == null ? hhVar.c != null : !str3.equals(hhVar.c)) {
                return false;
            }
            Point point = this.d;
            Point point2 = hhVar.d;
            if (point != null) {
                return point.equals(point2);
            }
            if (point2 == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.f6101a;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f6102b;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.c;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        Point point = this.d;
        if (point != null) {
            i = point.hashCode();
        }
        return hashCode3 + i;
    }

    public String toString() {
        return "DeviceShapshot{mManufacturer='" + this.f6101a + '\'' + ", mModel='" + this.f6102b + '\'' + ", mSerial='" + this.c + '\'' + ", mScreenSize=" + this.d + '}';
    }
}
