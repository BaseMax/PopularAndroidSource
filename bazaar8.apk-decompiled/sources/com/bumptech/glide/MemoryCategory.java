package com.bumptech.glide;

public enum MemoryCategory {
    LOW(0.5f),
    NORMAL(1.0f),
    HIGH(1.5f);
    
    public final float multiplier;

    /* access modifiers changed from: public */
    MemoryCategory(float f2) {
        this.multiplier = f2;
    }

    public float f() {
        return this.multiplier;
    }
}
