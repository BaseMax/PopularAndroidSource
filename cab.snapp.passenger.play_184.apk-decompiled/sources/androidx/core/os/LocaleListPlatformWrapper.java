package androidx.core.os;

import android.os.LocaleList;
import java.util.Locale;

final class LocaleListPlatformWrapper implements LocaleListInterface {
    private final LocaleList mLocaleList;

    LocaleListPlatformWrapper(LocaleList localeList) {
        this.mLocaleList = localeList;
    }

    public final Object getLocaleList() {
        return this.mLocaleList;
    }

    public final Locale get(int i) {
        return this.mLocaleList.get(i);
    }

    public final boolean isEmpty() {
        return this.mLocaleList.isEmpty();
    }

    public final int size() {
        return this.mLocaleList.size();
    }

    public final int indexOf(Locale locale) {
        return this.mLocaleList.indexOf(locale);
    }

    public final boolean equals(Object obj) {
        return this.mLocaleList.equals(((LocaleListInterface) obj).getLocaleList());
    }

    public final int hashCode() {
        return this.mLocaleList.hashCode();
    }

    public final String toString() {
        return this.mLocaleList.toString();
    }

    public final String toLanguageTags() {
        return this.mLocaleList.toLanguageTags();
    }

    public final Locale getFirstMatch(String[] strArr) {
        return this.mLocaleList.getFirstMatch(strArr);
    }
}
