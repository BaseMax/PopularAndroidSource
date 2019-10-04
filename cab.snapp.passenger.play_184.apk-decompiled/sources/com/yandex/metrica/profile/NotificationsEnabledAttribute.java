package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.jv;
import com.yandex.metrica.impl.ob.ot;

public class NotificationsEnabledAttribute extends BooleanAttribute {
    NotificationsEnabledAttribute() {
        super("appmetrica_notifications_enabled", new ot(), new jv());
    }
}
