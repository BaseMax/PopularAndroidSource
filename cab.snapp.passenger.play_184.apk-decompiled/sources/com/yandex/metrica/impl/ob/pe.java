package com.yandex.metrica.impl.ob;

import com.yandex.metrica.Revenue;
import java.util.Arrays;
import java.util.List;

public class pe implements pa<Revenue> {

    /* renamed from: a  reason: collision with root package name */
    private final pa<List<oy>> f6496a = new oz();

    public oy a(Revenue revenue) {
        return this.f6496a.a(Arrays.asList(new oy[]{new pd().a(revenue.quantity)}));
    }
}
