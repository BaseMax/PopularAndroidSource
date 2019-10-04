package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.ji;
import com.yandex.metrica.impl.ob.jk;
import com.yandex.metrica.impl.ob.jn;
import com.yandex.metrica.impl.ob.jt;
import com.yandex.metrica.impl.ob.ju;
import com.yandex.metrica.impl.ob.jv;
import com.yandex.metrica.impl.ob.jw;
import com.yandex.metrica.impl.ob.jz;
import com.yandex.metrica.impl.ob.ol;
import com.yandex.metrica.impl.ob.ot;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;

public class BirthDateAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final jn f6530a = new jn("appmetrica_birth_date", new ot(), new jv());

    BirthDateAttribute() {
    }

    public UserProfileUpdate<? extends jz> withBirthDate(int i) {
        return a(a(i), "yyyy", (ji) new jk(this.f6530a.b()));
    }

    public UserProfileUpdate<? extends jz> withBirthDateIfUndefined(int i) {
        return a(a(i), "yyyy", (ji) new ju(this.f6530a.b()));
    }

    public UserProfileUpdate<? extends jz> withBirthDate(int i, int i2) {
        return a(a(i, i2), "yyyy-MM", (ji) new jk(this.f6530a.b()));
    }

    public UserProfileUpdate<? extends jz> withBirthDateIfUndefined(int i, int i2) {
        return a(a(i, i2), "yyyy-MM", (ji) new ju(this.f6530a.b()));
    }

    public UserProfileUpdate<? extends jz> withBirthDate(int i, int i2, int i3) {
        return a(a(i, i2, i3), "yyyy-MM-dd", (ji) new jk(this.f6530a.b()));
    }

    public UserProfileUpdate<? extends jz> withBirthDateIfUndefined(int i, int i2, int i3) {
        return a(a(i, i2, i3), "yyyy-MM-dd", (ji) new ju(this.f6530a.b()));
    }

    public UserProfileUpdate<? extends jz> withAge(int i) {
        return a(a(Calendar.getInstance(Locale.US).get(1) - i), "yyyy", (ji) new jk(this.f6530a.b()));
    }

    public UserProfileUpdate<? extends jz> withAgeIfUndefined(int i) {
        return a(a(Calendar.getInstance(Locale.US).get(1) - i), "yyyy", (ji) new ju(this.f6530a.b()));
    }

    public UserProfileUpdate<? extends jz> withBirthDate(Calendar calendar) {
        return a(calendar, "yyyy-MM-dd", (ji) new jk(this.f6530a.b()));
    }

    public UserProfileUpdate<? extends jz> withBirthDateIfUndefined(Calendar calendar) {
        return a(calendar, "yyyy-MM-dd", (ji) new ju(this.f6530a.b()));
    }

    public UserProfileUpdate<? extends jz> withValueReset() {
        return new UserProfileUpdate<>(new jt(0, this.f6530a.a(), new ot(), new jv()));
    }

    private static Calendar a(int i) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i);
        return gregorianCalendar;
    }

    private static Calendar a(int i, int i2) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i);
        gregorianCalendar.set(2, i2 - 1);
        return gregorianCalendar;
    }

    private static Calendar a(int i, int i2, int i3) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i);
        gregorianCalendar.set(2, i2 - 1);
        gregorianCalendar.set(5, i3);
        return gregorianCalendar;
    }

    /* access modifiers changed from: package-private */
    public UserProfileUpdate<? extends jz> a(Calendar calendar, String str, ji jiVar) {
        jw jwVar = new jw(this.f6530a.a(), new SimpleDateFormat(str).format(calendar.getTime()), new ol(), new ot(), jiVar);
        return new UserProfileUpdate<>(jwVar);
    }
}
