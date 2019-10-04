package me.dm7.barcodescanner.core;

import android.graphics.Rect;

public interface e {
    Rect getFramingRect();

    int getHeight();

    int getWidth();

    void setBorderAlpha(float f);

    void setBorderColor(int i);

    void setBorderCornerRadius(int i);

    void setBorderCornerRounded(boolean z);

    void setBorderLineLength(int i);

    void setBorderStrokeWidth(int i);

    void setLaserColor(int i);

    void setLaserEnabled(boolean z);

    void setMaskColor(int i);

    void setSquareViewFinder(boolean z);

    void setViewFinderOffset(int i);

    void setupViewFinder();
}
