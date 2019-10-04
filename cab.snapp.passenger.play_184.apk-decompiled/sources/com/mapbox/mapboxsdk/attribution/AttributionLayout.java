package com.mapbox.mapboxsdk.attribution;

import android.graphics.Bitmap;
import android.graphics.PointF;

public class AttributionLayout {
    private PointF anchorPoint;
    private Bitmap logo;
    private boolean shortText;

    public AttributionLayout(Bitmap bitmap, PointF pointF, boolean z) {
        this.logo = bitmap;
        this.anchorPoint = pointF;
        this.shortText = z;
    }

    public Bitmap getLogo() {
        return this.logo;
    }

    public PointF getAnchorPoint() {
        return this.anchorPoint;
    }

    public boolean isShortText() {
        return this.shortText;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            AttributionLayout attributionLayout = (AttributionLayout) obj;
            Bitmap bitmap = this.logo;
            if (bitmap == null ? attributionLayout.logo != null : !bitmap.equals(attributionLayout.logo)) {
                return false;
            }
            PointF pointF = this.anchorPoint;
            PointF pointF2 = attributionLayout.anchorPoint;
            if (pointF != null) {
                return pointF.equals(pointF2);
            }
            if (pointF2 == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        Bitmap bitmap = this.logo;
        int i = 0;
        int hashCode = (bitmap != null ? bitmap.hashCode() : 0) * 31;
        PointF pointF = this.anchorPoint;
        if (pointF != null) {
            i = pointF.hashCode();
        }
        return hashCode + i;
    }

    public String toString() {
        return "AttributionLayout{logo=" + this.logo + ", anchorPoint=" + this.anchorPoint + '}';
    }
}
