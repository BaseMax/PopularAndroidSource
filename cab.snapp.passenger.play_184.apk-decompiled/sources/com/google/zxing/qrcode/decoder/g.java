package com.google.zxing.qrcode.decoder;

import com.google.zxing.m;

public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f4418a = true;

    g() {
    }

    public final boolean isMirrored() {
        return this.f4418a;
    }

    public final void applyMirroredCorrection(m[] mVarArr) {
        if (this.f4418a && mVarArr != null && mVarArr.length >= 3) {
            m mVar = mVarArr[0];
            mVarArr[0] = mVarArr[2];
            mVarArr[2] = mVar;
        }
    }
}
