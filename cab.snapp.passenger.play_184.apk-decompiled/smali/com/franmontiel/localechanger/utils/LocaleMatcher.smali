.class public final Lcom/franmontiel/localechanger/utils/LocaleMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static match(Ljava/util/Locale;Ljava/util/Locale;)Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;
    .locals 3

    .line 48
    sget-object v0, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;->NoMatch:Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    .line 49
    invoke-virtual {p0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    sget-object v0, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;->CompleteMatch:Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    sget-object p0, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;->LanguageAndCountryMatch:Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    return-object p0

    .line 53
    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 54
    sget-object p0, Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;->LanguageMatch:Lcom/franmontiel/localechanger/utils/LocaleMatcher$MatchLevel;

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method
