package com.github.ybq.android.spinkit;

import com.github.ybq.android.spinkit.b.f;
import com.github.ybq.android.spinkit.c.a;
import com.github.ybq.android.spinkit.c.c;
import com.github.ybq.android.spinkit.c.d;
import com.github.ybq.android.spinkit.c.e;
import com.github.ybq.android.spinkit.c.g;
import com.github.ybq.android.spinkit.c.h;
import com.github.ybq.android.spinkit.c.i;
import com.github.ybq.android.spinkit.c.j;
import com.github.ybq.android.spinkit.c.k;
import com.github.ybq.android.spinkit.c.l;
import com.github.ybq.android.spinkit.c.m;
import com.github.ybq.android.spinkit.c.n;
import com.github.ybq.android.spinkit.c.o;

public final class b {
    public static f create(Style style) {
        switch (style) {
            case ROTATING_PLANE:
                return new l();
            case DOUBLE_BOUNCE:
                return new d();
            case WAVE:
                return new o();
            case WANDERING_CUBES:
                return new n();
            case PULSE:
                return new i();
            case CHASING_DOTS:
                return new a();
            case THREE_BOUNCE:
                return new m();
            case CIRCLE:
                return new com.github.ybq.android.spinkit.c.b();
            case CUBE_GRID:
                return new c();
            case FADING_CIRCLE:
                return new e();
            case FOLDING_CUBE:
                return new com.github.ybq.android.spinkit.c.f();
            case ROTATING_CIRCLE:
                return new k();
            case MULTIPLE_PULSE:
                return new g();
            case PULSE_RING:
                return new j();
            case MULTIPLE_PULSE_RING:
                return new h();
            default:
                return null;
        }
    }
}
