package com.farsitel.bazaar.common.model.page;

import com.farsitel.bazaar.common.model.appdetail.Screenshot;
import java.io.Serializable;
import java.util.List;

/* compiled from: AppItem.kt */
public final class PageMiniAppDetailItem implements Serializable {
    public final String category;
    public final String installCountVerbose;
    public final String installCountVerboseDescription;
    public final String installCountVerboseLabel;
    public final List<Screenshot> screenshots;
    public final String shortDescription;

    public PageMiniAppDetailItem(String str, String str2, String str3, String str4, String str5, List<Screenshot> list) {
        this.category = str;
        this.shortDescription = str2;
        this.installCountVerbose = str3;
        this.installCountVerboseLabel = str4;
        this.installCountVerboseDescription = str5;
        this.screenshots = list;
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getInstallCountVerbose() {
        return this.installCountVerbose;
    }

    public final String getInstallCountVerboseDescription() {
        return this.installCountVerboseDescription;
    }

    public final String getInstallCountVerboseLabel() {
        return this.installCountVerboseLabel;
    }

    public final String getInstallLabelWithDescription() {
        return '(' + this.installCountVerbose + ' ' + this.installCountVerboseLabel + ' ' + this.installCountVerboseDescription + ')';
    }

    public final List<Screenshot> getScreenshots() {
        return this.screenshots;
    }

    public final String getShortDescription() {
        return this.shortDescription;
    }

    public final String getThumbnailScreenshotByIndex(int i2) {
        List<Screenshot> list = this.screenshots;
        if ((list != null ? list.size() : 0) <= i2) {
            return null;
        }
        List<Screenshot> list2 = this.screenshots;
        if (list2 == null) {
            return null;
        }
        Screenshot screenshot = list2.get(i2);
        if (screenshot != null) {
            return screenshot.getThumbnailUrl();
        }
        return null;
    }

    public final boolean showScreenshots() {
        List<Screenshot> list = this.screenshots;
        return (list != null ? list.size() : 0) > 2;
    }
}
