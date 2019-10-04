package com.franmontiel.localechanger.utils;

import java.util.Locale;

public final class LocaleMatcher {

    public enum MatchLevel {
        NoMatch,
        LanguageMatch,
        LanguageAndCountryMatch,
        CompleteMatch
    }

    private LocaleMatcher() {
    }

    public static MatchLevel match(Locale locale, Locale locale2) {
        MatchLevel matchLevel = MatchLevel.NoMatch;
        if (locale.equals(locale2)) {
            matchLevel = MatchLevel.CompleteMatch;
        } else if (locale.getLanguage().equals(locale2.getLanguage()) && locale.getCountry().equals(locale2.getCountry())) {
            return MatchLevel.LanguageAndCountryMatch;
        } else {
            if (locale.getLanguage().equals(locale2.getLanguage())) {
                return MatchLevel.LanguageMatch;
            }
        }
        return matchLevel;
    }
}
