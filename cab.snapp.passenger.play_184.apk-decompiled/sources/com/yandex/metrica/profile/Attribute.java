package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.jo;
import com.yandex.metrica.impl.ob.jp;
import com.yandex.metrica.impl.ob.ok;
import com.yandex.metrica.impl.ob.oq;

public class Attribute {
    public static StringAttribute customString(String str) {
        return new StringAttribute(str, new oq(200, "String attribute \"" + str + "\""), new jo(), new jp(new ok(100)));
    }

    public static NumberAttribute customNumber(String str) {
        return new NumberAttribute(str, new jo(), new jp(new ok(100)));
    }

    public static BooleanAttribute customBoolean(String str) {
        return new BooleanAttribute(str, new jo(), new jp(new ok(100)));
    }

    public static CounterAttribute customCounter(String str) {
        return new CounterAttribute(str, new jo(), new jp(new ok(100)));
    }

    public static GenderAttribute gender() {
        return new GenderAttribute();
    }

    public static BirthDateAttribute birthDate() {
        return new BirthDateAttribute();
    }

    public static NotificationsEnabledAttribute notificationsEnabled() {
        return new NotificationsEnabledAttribute();
    }

    public static NameAttribute name() {
        return new NameAttribute();
    }
}
