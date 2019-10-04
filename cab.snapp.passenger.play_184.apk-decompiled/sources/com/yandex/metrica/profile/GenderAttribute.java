package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.jk;
import com.yandex.metrica.impl.ob.jn;
import com.yandex.metrica.impl.ob.jt;
import com.yandex.metrica.impl.ob.ju;
import com.yandex.metrica.impl.ob.jv;
import com.yandex.metrica.impl.ob.jw;
import com.yandex.metrica.impl.ob.jz;
import com.yandex.metrica.impl.ob.ol;
import com.yandex.metrica.impl.ob.ot;

public class GenderAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final jn f6533a = new jn("appmetrica_gender", new ot(), new jv());

    public enum Gender {
        MALE("M"),
        FEMALE("F"),
        OTHER("O");
        
        private final String mStringValue;

        private Gender(String str) {
            this.mStringValue = str;
        }

        public final String getStringValue() {
            return this.mStringValue;
        }
    }

    GenderAttribute() {
    }

    public UserProfileUpdate<? extends jz> withValue(Gender gender) {
        jw jwVar = new jw(this.f6533a.a(), gender.getStringValue(), new ol(), this.f6533a.c(), new jk(this.f6533a.b()));
        return new UserProfileUpdate<>(jwVar);
    }

    public UserProfileUpdate<? extends jz> withValueIfUndefined(Gender gender) {
        jw jwVar = new jw(this.f6533a.a(), gender.getStringValue(), new ol(), this.f6533a.c(), new ju(this.f6533a.b()));
        return new UserProfileUpdate<>(jwVar);
    }

    public UserProfileUpdate<? extends jz> withValueReset() {
        return new UserProfileUpdate<>(new jt(0, this.f6533a.a(), this.f6533a.c(), this.f6533a.b()));
    }
}
