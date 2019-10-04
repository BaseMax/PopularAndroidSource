package com.google.android.material.tabs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.a;

public class TabItem extends View {
    public final int customLayout;
    public final Drawable icon;
    public final CharSequence text;

    public TabItem(Context context) {
        this(context, null);
    }

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, a.k.TabItem);
        this.text = obtainStyledAttributes.getText(a.k.TabItem_android_text);
        this.icon = obtainStyledAttributes.getDrawable(a.k.TabItem_android_icon);
        this.customLayout = obtainStyledAttributes.getResourceId(a.k.TabItem_android_layout, 0);
        obtainStyledAttributes.recycle();
    }
}
