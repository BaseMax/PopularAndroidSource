package com.bumptech.glide;

public enum MemoryCategory {
    LOW(0.5f),
    NORMAL(1.0f),
    HIGH(1.5f);
    

    /* renamed from: a  reason: collision with root package name */
    private final float f1974a;

    private MemoryCategory(float f) {
        this.f1974a = f;
    }

    public final float getMultiplier() {
        return this.f1974a;
    }
}
