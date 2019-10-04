package com.farsitel.bazaar.data.entity;

import h.f.b.f;
import h.f.b.j;
import java.util.Locale;

/* compiled from: RequestPropertiesEntity.kt */
public enum Language {
    ENGLISH(1),
    PERSIAN(2);
    
    public static final Companion Companion = null;
    public final int value;

    /* compiled from: RequestPropertiesEntity.kt */
    public static final class Companion {
        public Companion() {
        }

        public final Language fromLocale(Locale locale) {
            j.b(locale, "locale");
            String language = locale.getLanguage();
            if (language != null) {
                int hashCode = language.hashCode();
                if (hashCode != 3241) {
                    if (hashCode == 3259 && language.equals("fa")) {
                        return Language.PERSIAN;
                    }
                } else if (language.equals("en")) {
                    return Language.ENGLISH;
                }
            }
            return Language.ENGLISH;
        }

        public /* synthetic */ Companion(f fVar) {
            this();
        }
    }

    static {
        Companion = new Companion(null);
    }

    /* access modifiers changed from: public */
    Language(int i2) {
        this.value = i2;
    }

    public final int getValue() {
        return this.value;
    }
}
