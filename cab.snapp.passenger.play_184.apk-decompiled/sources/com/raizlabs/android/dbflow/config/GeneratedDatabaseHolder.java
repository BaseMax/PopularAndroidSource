package com.raizlabs.android.dbflow.config;

import com.raizlabs.android.dbflow.a.a;
import com.raizlabs.android.dbflow.a.b;
import com.raizlabs.android.dbflow.a.c;
import com.raizlabs.android.dbflow.a.d;
import com.raizlabs.android.dbflow.a.e;
import com.raizlabs.android.dbflow.a.f;
import com.raizlabs.android.dbflow.a.g;
import com.raizlabs.android.dbflow.a.i;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.UUID;

public final class GeneratedDatabaseHolder extends d {
    public GeneratedDatabaseHolder() {
        this.typeConverters.put(Boolean.class, new c());
        this.typeConverters.put(Character.class, new e());
        this.typeConverters.put(BigDecimal.class, new a());
        this.typeConverters.put(BigInteger.class, new b());
        this.typeConverters.put(Date.class, new g());
        this.typeConverters.put(Time.class, new g());
        this.typeConverters.put(Timestamp.class, new g());
        this.typeConverters.put(Calendar.class, new d());
        this.typeConverters.put(GregorianCalendar.class, new d());
        this.typeConverters.put(java.util.Date.class, new f());
        this.typeConverters.put(UUID.class, new i());
        new a(this);
    }
}
