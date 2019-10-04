.class public Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;
.super Ljava/lang/Object;
.source "EbayCountryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/view/util/EbayCountryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountryResources"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/view/util/EbayCountryManager$CountryResources$Comparator;
    }
.end annotation


# static fields
.field private static allCountryResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;",
            ">;"
        }
    .end annotation
.end field

.field private static allCountryResourcesLocale:Ljava/util/Locale;


# instance fields
.field private final countryName:Ljava/lang/String;

.field private final flagResourceId:I

.field private final serializedEbayCountry:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->serializedEbayCountry:Ljava/lang/String;

    .line 200
    iput p2, p0, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->flagResourceId:I

    .line 201
    iput-object p3, p0, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->countryName:Ljava/lang/String;

    return-void
.end method

.method private static createCountryResources(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 310
    invoke-static {p0, p1, p2}, Lcom/ebay/common/view/util/EbayCountryManager;->access$000(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 311
    invoke-static {p0, p1, p2, p3}, Lcom/ebay/common/view/util/EbayCountryManager;->access$100(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 312
    sget-object p2, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->allCountryResources:Ljava/util/List;

    new-instance p3, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;

    invoke-direct {p3, p1, v0, p0}, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized getAvailableInstances(Landroid/content/res/Resources;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;

    monitor-enter v0

    .line 276
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 278
    sget-object v2, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->allCountryResources:Ljava/util/List;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->allCountryResourcesLocale:Ljava/util/Locale;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->allCountryResourcesLocale:Ljava/util/Locale;

    .line 279
    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 281
    :cond_0
    sput-object v1, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->allCountryResourcesLocale:Ljava/util/Locale;

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->allCountryResources:Ljava/util/List;

    .line 284
    invoke-static {}, Lcom/ebay/nautilus/domain/EbaySite;->getAvailableInstances()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/EbaySite;

    .line 285
    invoke-static {v2}, Lcom/ebay/nautilus/domain/EbayCountry;->serialize(Lcom/ebay/nautilus/domain/EbaySite;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/ebay/nautilus/domain/EbaySite;->localeCountry:Ljava/lang/String;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/EbaySite;->localeLanguage:Ljava/lang/String;

    invoke-static {p0, v3, v4, v2}, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->createCountryResources(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_1
    invoke-static {}, Lcom/ebay/common/view/util/EbayCountryManager;->getGbhCountryCodes()Ljava/util/List;

    move-result-object v1

    .line 290
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 291
    invoke-static {v2}, Lcom/ebay/nautilus/domain/EbayCountry;->serialize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v2, v4}, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->createCountryResources(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 296
    new-instance p1, Ljava/util/ArrayList;

    sget-object v1, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->allCountryResources:Ljava/util/List;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 297
    sget-object v1, Lcom/ebay/nautilus/domain/EbaySite;->US:Lcom/ebay/nautilus/domain/EbaySite;

    .line 298
    invoke-static {v1}, Lcom/ebay/nautilus/domain/EbayCountry;->serialize(Lcom/ebay/nautilus/domain/EbaySite;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ebay/nautilus/domain/EbaySite;->US:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/EbaySite;->localeCountry:Ljava/lang/String;

    .line 297
    invoke-static {p0, v1, v2}, Lcom/ebay/common/view/util/EbayCountryManager;->access$000(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f1203c6

    .line 299
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 300
    new-instance v2, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;

    const-string v3, "AA"

    invoke-direct {v2, v3, v1, p0}, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit v0

    return-object p1

    .line 304
    :cond_3
    :try_start_1
    sget-object p0, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->allCountryResources:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 275
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public belongsToCountry(Lcom/ebay/nautilus/domain/EbayCountry;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/EbayCountry;->serialize()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->serializedEbayCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCountry()Lcom/ebay/nautilus/domain/EbayCountry;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->serializedEbayCountry:Ljava/lang/String;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/EbayCountry;->deserialize(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->countryName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlagResourceId()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->flagResourceId:I

    return v0
.end method

.method public isCountryUsMilitary()Z
    .locals 2

    const-string v0, "AA"

    .line 210
    iget-object v1, p0, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->serializedEbayCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->countryName:Ljava/lang/String;

    return-object v0
.end method
