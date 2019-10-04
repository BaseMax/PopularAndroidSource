package com.mapbox.mapboxsdk.maps;

class Image {
    private final byte[] buffer;
    private final int height;
    private final String name;
    private final float pixelRatio;
    private final boolean sdf;
    private final int width;

    public Image(byte[] bArr, float f, String str, int i, int i2, boolean z) {
        this.buffer = bArr;
        this.pixelRatio = f;
        this.name = str;
        this.width = i;
        this.height = i2;
        this.sdf = z;
    }
}
