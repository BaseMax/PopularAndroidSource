package b.b.g;

import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Movie;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import java.io.InputStream;

/* compiled from: ResourcesWrapper */
public class S extends Resources {

    /* renamed from: a  reason: collision with root package name */
    public final Resources f2109a;

    public S(Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f2109a = resources;
    }

    public XmlResourceParser getAnimation(int i2) {
        return this.f2109a.getAnimation(i2);
    }

    public boolean getBoolean(int i2) {
        return this.f2109a.getBoolean(i2);
    }

    public int getColor(int i2) {
        return this.f2109a.getColor(i2);
    }

    public ColorStateList getColorStateList(int i2) {
        return this.f2109a.getColorStateList(i2);
    }

    public Configuration getConfiguration() {
        return this.f2109a.getConfiguration();
    }

    public float getDimension(int i2) {
        return this.f2109a.getDimension(i2);
    }

    public int getDimensionPixelOffset(int i2) {
        return this.f2109a.getDimensionPixelOffset(i2);
    }

    public int getDimensionPixelSize(int i2) {
        return this.f2109a.getDimensionPixelSize(i2);
    }

    public DisplayMetrics getDisplayMetrics() {
        return this.f2109a.getDisplayMetrics();
    }

    public Drawable getDrawable(int i2) {
        return this.f2109a.getDrawable(i2);
    }

    public Drawable getDrawableForDensity(int i2, int i3) {
        return this.f2109a.getDrawableForDensity(i2, i3);
    }

    public float getFraction(int i2, int i3, int i4) {
        return this.f2109a.getFraction(i2, i3, i4);
    }

    public int getIdentifier(String str, String str2, String str3) {
        return this.f2109a.getIdentifier(str, str2, str3);
    }

    public int[] getIntArray(int i2) {
        return this.f2109a.getIntArray(i2);
    }

    public int getInteger(int i2) {
        return this.f2109a.getInteger(i2);
    }

    public XmlResourceParser getLayout(int i2) {
        return this.f2109a.getLayout(i2);
    }

    public Movie getMovie(int i2) {
        return this.f2109a.getMovie(i2);
    }

    public String getQuantityString(int i2, int i3, Object... objArr) {
        return this.f2109a.getQuantityString(i2, i3, objArr);
    }

    public CharSequence getQuantityText(int i2, int i3) {
        return this.f2109a.getQuantityText(i2, i3);
    }

    public String getResourceEntryName(int i2) {
        return this.f2109a.getResourceEntryName(i2);
    }

    public String getResourceName(int i2) {
        return this.f2109a.getResourceName(i2);
    }

    public String getResourcePackageName(int i2) {
        return this.f2109a.getResourcePackageName(i2);
    }

    public String getResourceTypeName(int i2) {
        return this.f2109a.getResourceTypeName(i2);
    }

    public String getString(int i2) {
        return this.f2109a.getString(i2);
    }

    public String[] getStringArray(int i2) {
        return this.f2109a.getStringArray(i2);
    }

    public CharSequence getText(int i2) {
        return this.f2109a.getText(i2);
    }

    public CharSequence[] getTextArray(int i2) {
        return this.f2109a.getTextArray(i2);
    }

    public void getValue(int i2, TypedValue typedValue, boolean z) {
        this.f2109a.getValue(i2, typedValue, z);
    }

    public void getValueForDensity(int i2, int i3, TypedValue typedValue, boolean z) {
        this.f2109a.getValueForDensity(i2, i3, typedValue, z);
    }

    public XmlResourceParser getXml(int i2) {
        return this.f2109a.getXml(i2);
    }

    public TypedArray obtainAttributes(AttributeSet attributeSet, int[] iArr) {
        return this.f2109a.obtainAttributes(attributeSet, iArr);
    }

    public TypedArray obtainTypedArray(int i2) {
        return this.f2109a.obtainTypedArray(i2);
    }

    public InputStream openRawResource(int i2) {
        return this.f2109a.openRawResource(i2);
    }

    public AssetFileDescriptor openRawResourceFd(int i2) {
        return this.f2109a.openRawResourceFd(i2);
    }

    public void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) {
        this.f2109a.parseBundleExtra(str, attributeSet, bundle);
    }

    public void parseBundleExtras(XmlResourceParser xmlResourceParser, Bundle bundle) {
        this.f2109a.parseBundleExtras(xmlResourceParser, bundle);
    }

    public void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) {
        super.updateConfiguration(configuration, displayMetrics);
        Resources resources = this.f2109a;
        if (resources != null) {
            resources.updateConfiguration(configuration, displayMetrics);
        }
    }

    public Drawable getDrawable(int i2, Resources.Theme theme) {
        return this.f2109a.getDrawable(i2, theme);
    }

    public Drawable getDrawableForDensity(int i2, int i3, Resources.Theme theme) {
        return this.f2109a.getDrawableForDensity(i2, i3, theme);
    }

    public String getQuantityString(int i2, int i3) {
        return this.f2109a.getQuantityString(i2, i3);
    }

    public String getString(int i2, Object... objArr) {
        return this.f2109a.getString(i2, objArr);
    }

    public CharSequence getText(int i2, CharSequence charSequence) {
        return this.f2109a.getText(i2, charSequence);
    }

    public void getValue(String str, TypedValue typedValue, boolean z) {
        this.f2109a.getValue(str, typedValue, z);
    }

    public InputStream openRawResource(int i2, TypedValue typedValue) {
        return this.f2109a.openRawResource(i2, typedValue);
    }
}
