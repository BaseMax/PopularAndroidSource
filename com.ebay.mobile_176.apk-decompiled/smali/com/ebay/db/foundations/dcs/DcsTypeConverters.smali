.class public Lcom/ebay/db/foundations/dcs/DcsTypeConverters;
.super Ljava/lang/Object;
.source "DcsTypeConverters.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$stringToSetOfEnum$0(Landroidx/arch/core/util/Function;Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 0

    .line 166
    invoke-interface {p0, p2}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    if-eqz p0, :cond_0

    .line 168
    invoke-virtual {p1, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private setOfEnumToString(Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 177
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/16 v2, 0x2c

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private stringToSetOfEnum(Ljava/lang/Class;Landroidx/arch/core/util/Function;Ljava/lang/String;)Ljava/util/EnumSet;
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/arch/core/util/Function<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 163
    :cond_0
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    .line 164
    new-instance v1, Lcom/ebay/db/foundations/dcs/-$$Lambda$DcsTypeConverters$6I0aa_o-ijTkmqOQg9rTcjKsvcI;

    invoke-direct {v1, p2, p1}, Lcom/ebay/db/foundations/dcs/-$$Lambda$DcsTypeConverters$6I0aa_o-ijTkmqOQg9rTcjKsvcI;-><init>(Landroidx/arch/core/util/Function;Ljava/util/EnumSet;)V

    const/16 p2, 0x2c

    .line 170
    invoke-virtual {p0, p3, p2, v1}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->extractDelimited(Ljava/lang/String;ILandroidx/core/util/Consumer;)V

    .line 171
    invoke-virtual {p1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    move-object p1, v0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public countryCodeToString(Lcom/ebay/nautilus/base/CountryCode;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/ebay/nautilus/base/CountryCode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/nautilus/base/CountryCode;->name()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public dcsPropertyTypeToString(Lcom/ebay/db/foundations/dcs/DcsPropertyType;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->name()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public dcsSiteCodeToString(Lcom/ebay/db/foundations/dcs/DcsSiteCode;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/ebay/db/foundations/dcs/DcsSiteCode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/db/foundations/dcs/DcsSiteCode;->name()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method extractDelimited(Ljava/lang/String;ILandroidx/core/util/Consumer;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 141
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    .line 144
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-interface {p3, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v0, 0x1

    .line 147
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0

    :cond_0
    if-ltz v1, :cond_1

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 151
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-interface {p3, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public languageCodeToString(Lcom/ebay/nautilus/base/LanguageCode;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/ebay/nautilus/base/LanguageCode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/nautilus/base/LanguageCode;->name()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public setOfCountryCodeToString(Ljava/util/Set;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/ebay/nautilus/base/CountryCode;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->setOfEnumToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setOfDcsSiteCodeToString(Ljava/util/Set;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/ebay/db/foundations/dcs/DcsSiteCode;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->setOfEnumToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setOfLanguageCodeToString(Ljava/util/Set;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/ebay/nautilus/base/LanguageCode;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->setOfEnumToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setOfQaModeToString(Ljava/util/Set;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/ebay/nautilus/base/QaMode;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->setOfEnumToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public stringToCountryCode(Ljava/lang/String;)Lcom/ebay/nautilus/base/CountryCode;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .line 71
    invoke-static {p1}, Lcom/ebay/nautilus/base/CountryCode;->forString(Ljava/lang/String;)Lcom/ebay/nautilus/base/CountryCode;

    move-result-object p1

    return-object p1
.end method

.method public stringToDcsPropertyType(Ljava/lang/String;)Lcom/ebay/db/foundations/dcs/DcsPropertyType;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {p1}, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->forStringValue(Ljava/lang/String;)Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public stringToDcsSiteCode(Ljava/lang/String;)Lcom/ebay/db/foundations/dcs/DcsSiteCode;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .line 43
    invoke-static {p1}, Lcom/ebay/db/foundations/dcs/DcsSiteCode;->fromString(Ljava/lang/String;)Lcom/ebay/db/foundations/dcs/DcsSiteCode;

    move-result-object p1

    return-object p1
.end method

.method public stringToEnumSetOfLanguageCode(Ljava/lang/String;)Ljava/util/EnumSet;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/ebay/nautilus/base/LanguageCode;",
            ">;"
        }
    .end annotation

    .line 99
    const-class v0, Lcom/ebay/nautilus/base/LanguageCode;

    sget-object v1, Lcom/ebay/db/foundations/dcs/-$$Lambda$lDlguDF_77J_Ep_8sf2wgwVEGdE;->INSTANCE:Lcom/ebay/db/foundations/dcs/-$$Lambda$lDlguDF_77J_Ep_8sf2wgwVEGdE;

    invoke-direct {p0, v0, v1, p1}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToSetOfEnum(Ljava/lang/Class;Landroidx/arch/core/util/Function;Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public stringToEnumSetOfQaMode(Ljava/lang/String;)Ljava/util/EnumSet;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/ebay/nautilus/base/QaMode;",
            ">;"
        }
    .end annotation

    .line 113
    const-class v0, Lcom/ebay/nautilus/base/QaMode;

    sget-object v1, Lcom/ebay/db/foundations/dcs/-$$Lambda$e1ASdIN-tqHwIH8elEtFWltXF7w;->INSTANCE:Lcom/ebay/db/foundations/dcs/-$$Lambda$e1ASdIN-tqHwIH8elEtFWltXF7w;

    invoke-direct {p0, v0, v1, p1}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToSetOfEnum(Ljava/lang/Class;Landroidx/arch/core/util/Function;Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public stringToEumSetOfCountryCode(Ljava/lang/String;)Ljava/util/EnumSet;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/ebay/nautilus/base/CountryCode;",
            ">;"
        }
    .end annotation

    .line 85
    const-class v0, Lcom/ebay/nautilus/base/CountryCode;

    sget-object v1, Lcom/ebay/db/foundations/dcs/-$$Lambda$wdSJ3pMiV7WKAbLscXZrS72dRkE;->INSTANCE:Lcom/ebay/db/foundations/dcs/-$$Lambda$wdSJ3pMiV7WKAbLscXZrS72dRkE;

    invoke-direct {p0, v0, v1, p1}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToSetOfEnum(Ljava/lang/Class;Landroidx/arch/core/util/Function;Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public stringToEumSetOfDcsSiteCode(Ljava/lang/String;)Ljava/util/EnumSet;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/ebay/db/foundations/dcs/DcsSiteCode;",
            ">;"
        }
    .end annotation

    .line 57
    const-class v0, Lcom/ebay/db/foundations/dcs/DcsSiteCode;

    new-instance v1, Lcom/ebay/db/foundations/dcs/-$$Lambda$6ul8IS2YFfUe17CvQhkD0PWPgjQ;

    invoke-direct {v1, p0}, Lcom/ebay/db/foundations/dcs/-$$Lambda$6ul8IS2YFfUe17CvQhkD0PWPgjQ;-><init>(Lcom/ebay/db/foundations/dcs/DcsTypeConverters;)V

    invoke-direct {p0, v0, v1, p1}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToSetOfEnum(Ljava/lang/Class;Landroidx/arch/core/util/Function;Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public stringToLanguageCode(Ljava/lang/String;)Lcom/ebay/nautilus/base/LanguageCode;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .line 29
    invoke-static {p1}, Lcom/ebay/nautilus/base/LanguageCode;->fromString(Ljava/lang/String;)Lcom/ebay/nautilus/base/LanguageCode;

    move-result-object p1

    return-object p1
.end method
