package com.google.zxing.c.a.a.a;

import cab.snapp.passenger.data.models.OptionalConfig;
import com.google.zxing.common.a;
import com.google.zxing.d;
import com.google.zxing.h;

public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    final a f4249a;

    /* renamed from: b  reason: collision with root package name */
    final s f4250b;

    public abstract String parseInformation() throws h, d;

    j(a aVar) {
        this.f4249a = aVar;
        this.f4250b = new s(aVar);
    }

    public static j createDecoder(a aVar) {
        if (aVar.get(1)) {
            return new g(aVar);
        }
        if (!aVar.get(2)) {
            return new k(aVar);
        }
        int a2 = s.a(aVar, 1, 4);
        if (a2 == 4) {
            return new a(aVar);
        }
        if (a2 == 5) {
            return new b(aVar);
        }
        int a3 = s.a(aVar, 1, 5);
        if (a3 == 12) {
            return new c(aVar);
        }
        if (a3 == 13) {
            return new d(aVar);
        }
        switch (s.a(aVar, 1, 7)) {
            case 56:
                return new e(aVar, "310", OptionalConfig.TYPE_BOTH);
            case 57:
                return new e(aVar, "320", OptionalConfig.TYPE_BOTH);
            case 58:
                return new e(aVar, "310", "13");
            case 59:
                return new e(aVar, "320", "13");
            case 60:
                return new e(aVar, "310", "15");
            case 61:
                return new e(aVar, "320", "15");
            case 62:
                return new e(aVar, "310", "17");
            case 63:
                return new e(aVar, "320", "17");
            default:
                throw new IllegalStateException("unknown decoder: ".concat(String.valueOf(aVar)));
        }
    }
}
