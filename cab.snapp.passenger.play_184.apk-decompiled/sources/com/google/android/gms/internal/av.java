package com.google.android.gms.internal;

import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import com.google.android.gms.internal.au;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

public class av<T extends au> extends w {

    /* renamed from: a  reason: collision with root package name */
    private aw<T> f3072a;

    public av(z zVar, aw<T> awVar) {
        super(zVar);
        this.f3072a = awVar;
    }

    private final T a(XmlResourceParser xmlResourceParser) {
        String trim;
        String str;
        xmlResourceParser.next();
        int eventType = xmlResourceParser.getEventType();
        while (eventType != 1) {
            if (xmlResourceParser.getEventType() == 2) {
                String lowerCase = xmlResourceParser.getName().toLowerCase();
                if (lowerCase.equals("screenname")) {
                    String attributeValue = xmlResourceParser.getAttributeValue(null, "name");
                    String trim2 = xmlResourceParser.nextText().trim();
                    if (!TextUtils.isEmpty(attributeValue) && !TextUtils.isEmpty(trim2)) {
                        this.f3072a.zzi(attributeValue, trim2);
                    }
                } else if (lowerCase.equals("string")) {
                    String attributeValue2 = xmlResourceParser.getAttributeValue(null, "name");
                    String trim3 = xmlResourceParser.nextText().trim();
                    if (!TextUtils.isEmpty(attributeValue2) && trim3 != null) {
                        this.f3072a.zzj(attributeValue2, trim3);
                    }
                } else if (lowerCase.equals("bool")) {
                    String attributeValue3 = xmlResourceParser.getAttributeValue(null, "name");
                    trim = xmlResourceParser.nextText().trim();
                    if (!TextUtils.isEmpty(attributeValue3) && !TextUtils.isEmpty(trim)) {
                        try {
                            this.f3072a.zzc(attributeValue3, Boolean.parseBoolean(trim));
                        } catch (NumberFormatException e) {
                            e = e;
                            str = "Error parsing bool configuration value";
                        }
                    }
                } else if (lowerCase.equals("integer")) {
                    String attributeValue4 = xmlResourceParser.getAttributeValue(null, "name");
                    trim = xmlResourceParser.nextText().trim();
                    if (!TextUtils.isEmpty(attributeValue4) && !TextUtils.isEmpty(trim)) {
                        try {
                            this.f3072a.zzd(attributeValue4, Integer.parseInt(trim));
                        } catch (NumberFormatException e2) {
                            e = e2;
                            str = "Error parsing int configuration value";
                        }
                    }
                }
            }
            eventType = xmlResourceParser.next();
        }
        return this.f3072a.zzyo();
        try {
            zzc(str, trim, e);
            eventType = xmlResourceParser.next();
        } catch (IOException | XmlPullParserException e3) {
            zze("Error parsing tracker configuration file", e3);
        }
    }

    public final T zzav(int i) {
        try {
            return a(zzwr().zzxg().getResources().getXml(i));
        } catch (Resources.NotFoundException e) {
            zzd("inflate() called with unknown resourceId", e);
            return null;
        }
    }
}
