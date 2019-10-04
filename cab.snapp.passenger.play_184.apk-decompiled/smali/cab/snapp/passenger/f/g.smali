.class public final Lcab/snapp/passenger/f/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOCALE_ARABIC:I = 0x32

.field public static final LOCALE_ENGLISH:I = 0x14

.field public static final LOCALE_FRENCH:I = 0x1e

.field public static final LOCALE_PERSIAN:I = 0xa

.field public static final LOCALE_TURKISH:I = 0x28

.field private static a:Lcab/snapp/b/a;

.field private static b:Lcab/snapp/passenger/data_access_layer/network/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 224
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const-string v0, "fa"

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_2

    const-string v0, "en"

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_3

    const-string v0, "fr"

    goto :goto_0

    .line 236
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_4

    const-string v0, "ug"

    goto :goto_0

    .line 240
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v1, 0x32

    if-ne p0, v1, :cond_5

    const-string v0, "ar"

    :cond_5
    :goto_0
    return-object v0
.end method

.method private static a(Landroid/app/Application;)V
    .locals 5

    .line 486
    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 487
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 488
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 489
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 491
    new-instance v1, Landroid/os/LocaleList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Locale;

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 493
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 204
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    .line 205
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static changeAppLocale(Landroid/content/Context;I)Z
    .locals 2

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/f/g;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, v0}, Lcab/snapp/passenger/f/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1091
    :cond_0
    sget-object v0, Lcab/snapp/passenger/f/g;->a:Lcab/snapp/b/a;

    if-eqz v0, :cond_1

    .line 1096
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "LOCALE_HELPER_SAVED_LOCALE_SHARED_PREF_KEY"

    invoke-virtual {v0, v1, p1}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x1

    .line 157
    invoke-static {p0, p1}, Lcab/snapp/passenger/f/g;->changeAppLocaleFromSharedPrefIfNeeded(Landroid/content/Context;Z)Z

    .line 159
    sget-object p0, Lcab/snapp/passenger/f/g;->b:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/b;->reset()V

    return p1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static changeAppLocaleFromSharedPrefIfNeeded(Landroid/content/Context;Z)Z
    .locals 7

    .line 174
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/f/g;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-static {p0, v0}, Lcab/snapp/passenger/f/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 1262
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 1263
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1264
    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1265
    invoke-virtual {v3, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 1266
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    const/4 v6, 0x1

    if-lt v4, v5, :cond_1

    .line 1268
    new-instance v4, Landroid/os/LocaleList;

    new-array v5, v6, [Ljava/util/Locale;

    aput-object v1, v5, v2

    invoke-direct {v4, v5}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 1270
    :cond_1
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 1272
    check-cast p0, Landroid/app/Activity;

    .line 1273
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    if-eqz p1, :cond_3

    .line 1276
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1277
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1278
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1281
    :cond_2
    instance-of p1, p0, Landroid/app/Application;

    if-eqz p1, :cond_3

    .line 1283
    check-cast p0, Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_3
    :goto_0
    return v6

    :cond_4
    :goto_1
    return v2
.end method

.method public static changeLocaleInContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 3

    .line 459
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 463
    :try_start_0
    invoke-static {}, Lcab/snapp/passenger/f/g;->getCurrentActiveLocaleLanguageString()Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-static {}, Lcab/snapp/passenger/f/g;->getCurrentActiveLocaleCountryString()Ljava/lang/String;

    move-result-object v1

    .line 465
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcab/snapp/passenger/f/f;->wrap(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/ContextWrapper;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 469
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 470
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object p0
.end method

.method public static changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 415
    invoke-static {}, Lcab/snapp/passenger/f/g;->isCurrentLocalRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-static {p0}, Lcab/snapp/c/d;->convertEngToPersianNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 421
    :cond_0
    invoke-static {p0}, Lcab/snapp/c/d;->convertPersianToEnglishNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentActiveLocaleCountryString()Ljava/lang/String;
    .locals 3

    .line 349
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v0

    const/16 v1, 0x14

    const-string v2, "IR"

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    const/16 v1, 0x32

    goto :goto_0

    :cond_0
    const-string v2, "CN"

    goto :goto_0

    :cond_1
    const-string v2, "FR"

    goto :goto_0

    :cond_2
    const-string v2, "GB"

    :goto_0
    return-object v2
.end method

.method public static getCurrentActiveLocaleLanguageString()Ljava/lang/String;
    .locals 2

    .line 322
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    const-string v0, "fa"

    goto :goto_0

    :cond_0
    const-string v0, "ar"

    goto :goto_0

    :cond_1
    const-string v0, "ug"

    goto :goto_0

    :cond_2
    const-string v0, "fr"

    goto :goto_0

    :cond_3
    const-string v0, "en"

    :goto_0
    return-object v0
.end method

.method public static getCurrentActiveLocaleString()Ljava/lang/String;
    .locals 2

    .line 295
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    const-string v0, "fa-IR"

    goto :goto_0

    :cond_0
    const-string v0, "ar-IR"

    goto :goto_0

    :cond_1
    const-string v0, "tr-TR"

    goto :goto_0

    :cond_2
    const-string v0, "fr-FR"

    goto :goto_0

    :cond_3
    const-string v0, "en-GB"

    :goto_0
    return-object v0
.end method

.method public static getRealCurrentActiveLocaleString()Ljava/lang/String;
    .locals 2

    .line 376
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    const-string v0, "fa-IR"

    goto :goto_0

    :cond_0
    const-string v0, "ar-IR"

    goto :goto_0

    :cond_1
    const-string v0, "ug-CN"

    goto :goto_0

    :cond_2
    const-string v0, "fr-FR"

    goto :goto_0

    :cond_3
    const-string v0, "en-GB"

    :goto_0
    return-object v0
.end method

.method public static getSavedLocale()I
    .locals 3

    .line 107
    sget-object v0, Lcab/snapp/passenger/f/g;->a:Lcab/snapp/b/a;

    const/16 v1, 0xa

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "LOCALE_HELPER_SAVED_LOCALE_SHARED_PREF_KEY"

    .line 112
    invoke-virtual {v0, v2}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public static isCurrentLocalRtl()Z
    .locals 2

    .line 403
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static release()V
    .locals 1

    const/4 v0, 0x0

    .line 481
    sput-object v0, Lcab/snapp/passenger/f/g;->a:Lcab/snapp/b/a;

    return-void
.end method

.method public static setLayoutDirectionBasedOnLocale(Landroid/view/View;)V
    .locals 2

    .line 123
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutDirection(I)V

    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 131
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method public static setLocale(Landroid/app/Application;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 436
    :cond_0
    invoke-static {}, Lcab/snapp/passenger/f/g;->getCurrentActiveLocaleLanguageString()Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-static {}, Lcab/snapp/passenger/f/g;->getCurrentActiveLocaleCountryString()Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    invoke-static {p0}, Lcab/snapp/passenger/f/g;->a(Landroid/app/Application;)V

    return-void

    .line 445
    :cond_1
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 447
    invoke-static {p0}, Lcab/snapp/passenger/f/g;->a(Landroid/app/Application;)V

    return-void
.end method

.method public static setNetworkModule(Lcab/snapp/passenger/data_access_layer/network/b;)V
    .locals 0

    .line 78
    sput-object p0, Lcab/snapp/passenger/f/g;->b:Lcab/snapp/passenger/data_access_layer/network/b;

    return-void
.end method

.method public static setSharedPreferencesManager(Lcab/snapp/b/a;)V
    .locals 0

    .line 73
    sput-object p0, Lcab/snapp/passenger/f/g;->a:Lcab/snapp/b/a;

    return-void
.end method
