package com.google.zxing;

import com.google.zxing.common.a.a;

public class m {

    /* renamed from: a  reason: collision with root package name */
    private final float f4357a;

    /* renamed from: b  reason: collision with root package name */
    private final float f4358b;

    public m(float f, float f2) {
        this.f4357a = f;
        this.f4358b = f2;
    }

    public final float getX() {
        return this.f4357a;
    }

    public final float getY() {
        return this.f4358b;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof m) {
            m mVar = (m) obj;
            if (this.f4357a == mVar.f4357a && this.f4358b == mVar.f4358b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (Float.floatToIntBits(this.f4357a) * 31) + Float.floatToIntBits(this.f4358b);
    }

    public final String toString() {
        return "(" + this.f4357a + ',' + this.f4358b + ')';
    }

    public static void orderBestPatterns(m[] mVarArr) {
        m mVar;
        m mVar2;
        m mVar3;
        float distance = distance(mVarArr[0], mVarArr[1]);
        float distance2 = distance(mVarArr[1], mVarArr[2]);
        float distance3 = distance(mVarArr[0], mVarArr[2]);
        if (distance2 >= distance && distance2 >= distance3) {
            mVar3 = mVarArr[0];
            mVar2 = mVarArr[1];
            mVar = mVarArr[2];
        } else if (distance3 < distance2 || distance3 < distance) {
            mVar3 = mVarArr[2];
            mVar2 = mVarArr[0];
            mVar = mVarArr[1];
        } else {
            mVar3 = mVarArr[1];
            mVar2 = mVarArr[0];
            mVar = mVarArr[2];
        }
        float f = mVar3.f4357a;
        float f2 = mVar3.f4358b;
        if (((mVar.f4357a - f) * (mVar2.f4358b - f2)) - ((mVar.f4358b - f2) * (mVar2.f4357a - f)) < 0.0f) {
            m mVar4 = mVar;
            mVar = mVar2;
            mVar2 = mVar4;
        }
        mVarArr[0] = mVar2;
        mVarArr[1] = mVar3;
        mVarArr[2] = mVar;
    }

    public static float distance(m mVar, m mVar2) {
        return a.distance(mVar.f4357a, mVar.f4358b, mVar2.f4357a, mVar2.f4358b);
    }
}
