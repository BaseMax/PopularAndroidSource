.class public final Lcom/ebay/common/model/search/EbayAspectHistogram;
.super Ljava/util/ArrayList;
.source "EbayAspectHistogram.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;,
        Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;,
        Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;",
        ">;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/search/EbayAspectHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public domainDisplayName:Ljava/lang/String;

.field public domainName:Ljava/lang/String;

.field public mergeStrategy:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

.field public scopeType:Ljava/lang/String;

.field public scopeValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 696
    new-instance v0, Lcom/ebay/common/model/search/EbayAspectHistogram$1;

    invoke-direct {v0}, Lcom/ebay/common/model/search/EbayAspectHistogram$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/search/EbayAspectHistogram;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    sget-object v0, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->RETAIN:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->mergeStrategy:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->domainName:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->domainDisplayName:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeType:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeValue:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    sget-object v0, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->RETAIN:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->mergeStrategy:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->domainName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->domainDisplayName:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->values()[Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->mergeStrategy:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeType:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeValue:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/ebay/common/model/search/EbayAspectHistogram$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/ebay/common/model/search/EbayAspectHistogram;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getUpdatedHistogram(Lcom/ebay/common/model/search/EbayAspectHistogram;Lcom/ebay/common/model/search/EbayAspectHistogram;)Lcom/ebay/common/model/search/EbayAspectHistogram;
    .locals 6

    if-nez p0, :cond_0

    .line 222
    invoke-static {p1}, Lcom/ebay/common/model/search/EbayAspectHistogram;->suppressSingleValueAspects(Lcom/ebay/common/model/search/EbayAspectHistogram;)Lcom/ebay/common/model/search/EbayAspectHistogram;

    move-result-object p0

    return-object p0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->mergeStrategy:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    sget-object v1, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->RETAIN:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    if-ne v0, v1, :cond_1

    return-object p0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->mergeStrategy:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    sget-object v1, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->USE_NEW:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    if-ne v0, v1, :cond_8

    if-eqz p1, :cond_7

    .line 236
    new-instance v0, Ljava/util/HashMap;

    .line 237
    invoke-virtual {p1}, Lcom/ebay/common/model/search/EbayAspectHistogram;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 238
    invoke-virtual {p1}, Lcom/ebay/common/model/search/EbayAspectHistogram;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    .line 239
    iget-object v3, v2, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 241
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/common/model/search/EbayAspectHistogram;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    .line 243
    iget-object v2, v1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    if-eqz v2, :cond_3

    .line 246
    new-instance v3, Ljava/util/HashMap;

    .line 247
    invoke-virtual {v2}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 248
    invoke-virtual {v2}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    .line 249
    iget-object v5, v4, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->serviceValue:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 251
    :cond_4
    invoke-virtual {v1}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    .line 253
    iget-object v4, v2, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->serviceValue:Ljava/lang/String;

    .line 254
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    if-eqz v4, :cond_5

    .line 256
    iget-boolean v2, v2, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->checked:Z

    iput-boolean v2, v4, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->checked:Z

    goto :goto_2

    :cond_6
    return-object p1

    :cond_7
    const/4 p0, 0x0

    return-object p0

    .line 272
    :cond_8
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->mergeStrategy:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    sget-object v1, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->MERGE_SUPPRESS:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    if-ne v0, v1, :cond_9

    .line 273
    invoke-static {p1}, Lcom/ebay/common/model/search/EbayAspectHistogram;->suppressSingleValueAspects(Lcom/ebay/common/model/search/EbayAspectHistogram;)Lcom/ebay/common/model/search/EbayAspectHistogram;

    move-result-object p1

    :cond_9
    if-nez p1, :cond_a

    return-object p0

    .line 279
    :cond_a
    invoke-static {p0, p1}, Lcom/ebay/common/model/search/EbayAspectHistogram;->mergeHistograms(Lcom/ebay/common/model/search/EbayAspectHistogram;Lcom/ebay/common/model/search/EbayAspectHistogram;)Lcom/ebay/common/model/search/EbayAspectHistogram;

    move-result-object p0

    return-object p0
.end method

.method public static mergeHistograms(Lcom/ebay/common/model/search/EbayAspectHistogram;Lcom/ebay/common/model/search/EbayAspectHistogram;)Lcom/ebay/common/model/search/EbayAspectHistogram;
    .locals 12
    .param p0    # Lcom/ebay/common/model/search/EbayAspectHistogram;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/common/model/search/EbayAspectHistogram;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 288
    new-instance v0, Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-direct {v0}, Lcom/ebay/common/model/search/EbayAspectHistogram;-><init>()V

    .line 289
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeValue:Ljava/lang/String;

    .line 290
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeType:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeType:Ljava/lang/String;

    .line 292
    invoke-virtual {p0}, Lcom/ebay/common/model/search/EbayAspectHistogram;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    .line 296
    invoke-virtual {p1}, Lcom/ebay/common/model/search/EbayAspectHistogram;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    .line 298
    iget-object v7, v2, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->name:Ljava/lang/String;

    iget-object v8, v4, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->name:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v2, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->serviceName:Ljava/lang/String;

    iget-object v8, v4, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->serviceName:Ljava/lang/String;

    .line 299
    invoke-static {v7, v8}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 303
    :cond_2
    invoke-virtual {v4}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->size()I

    move-result v3

    invoke-virtual {v2}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->size()I

    move-result v7

    if-le v3, v7, :cond_7

    .line 307
    invoke-virtual {v2}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    .line 309
    iget-boolean v8, v7, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->checked:Z

    if-nez v8, :cond_4

    goto :goto_1

    .line 311
    :cond_4
    invoke-virtual {v4}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    .line 313
    iget-object v10, v9, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->serviceValue:Ljava/lang/String;

    iget-object v11, v7, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->serviceValue:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 314
    iput-boolean v5, v9, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->checked:Z

    goto :goto_2

    .line 318
    :cond_6
    invoke-virtual {v0, v4}, Lcom/ebay/common/model/search/EbayAspectHistogram;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 321
    :cond_7
    invoke-virtual {v0, v2}, Lcom/ebay/common/model/search/EbayAspectHistogram;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_0

    .line 329
    invoke-virtual {p0, v2}, Lcom/ebay/common/model/search/EbayAspectHistogram;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p1}, Lcom/ebay/common/model/search/EbayAspectHistogram;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 330
    invoke-virtual {p0, v2}, Lcom/ebay/common/model/search/EbayAspectHistogram;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 331
    :cond_9
    invoke-virtual {v0, v6, v2}, Lcom/ebay/common/model/search/EbayAspectHistogram;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    return-object v0
.end method

.method private static suppressSingleValueAspects(Lcom/ebay/common/model/search/EbayAspectHistogram;)Lcom/ebay/common/model/search/EbayAspectHistogram;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/common/model/search/EbayAspectHistogram;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    .line 345
    invoke-virtual {v1}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    const/4 v2, 0x1

    .line 346
    iput-boolean v2, v1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->suppressDisplay:Z

    goto :goto_0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public addServiceAspect(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "serviceValues cannot be null"

    .line 73
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "serviceName cannot be null"

    .line 74
    invoke-static {p2, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    new-instance v0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    invoke-direct {v0}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;-><init>()V

    .line 77
    iput-object p2, v0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->serviceName:Ljava/lang/String;

    .line 78
    iput-object p2, v0, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->name:Ljava/lang/String;

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 82
    new-instance v1, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    invoke-direct {v1}, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;-><init>()V

    .line 83
    iput-object p2, v1, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->serviceValue:Ljava/lang/String;

    .line 84
    iput-object p2, v1, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->value:Ljava/lang/String;

    const/4 p2, 0x1

    .line 85
    iput-boolean p2, v1, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->checked:Z

    .line 86
    invoke-virtual {v0, v1}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ebay/common/model/search/EbayAspectHistogram;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyAspects(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;",
            ">;)V"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    .line 149
    iget-object v2, v1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/common/model/search/EbayAspectHistogram;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    .line 153
    iget-object v2, v1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    if-eqz v2, :cond_1

    .line 155
    invoke-virtual {v1, v2}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->applyValues(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public applyServiceAspectConstraints(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;",
            ">;)V"
        }
    .end annotation

    .line 198
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;

    .line 200
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$ScopedAspectConstraint;->aspect:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;

    .line 201
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;->value:Ljava/util/List;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectConstraint;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/ebay/common/model/search/EbayAspectHistogram;->addServiceAspect(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clone()Lcom/ebay/common/model/search/EbayAspectHistogram;
    .locals 4

    .line 386
    invoke-super {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 387
    invoke-virtual {v0}, Lcom/ebay/common/model/search/EbayAspectHistogram;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 389
    invoke-virtual {v0, v2}, Lcom/ebay/common/model/search/EbayAspectHistogram;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    invoke-virtual {v3}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->clone()Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ebay/common/model/search/EbayAspectHistogram;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/ebay/common/model/search/EbayAspectHistogram;->clone()Lcom/ebay/common/model/search/EbayAspectHistogram;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 398
    :cond_0
    instance-of v1, p1, Lcom/ebay/common/model/search/EbayAspectHistogram;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 401
    :cond_1
    check-cast p1, Lcom/ebay/common/model/search/EbayAspectHistogram;

    .line 403
    invoke-super {p0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->domainName:Ljava/lang/String;

    iget-object v3, p1, Lcom/ebay/common/model/search/EbayAspectHistogram;->domainName:Ljava/lang/String;

    .line 404
    invoke-static {v1, v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->domainDisplayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/ebay/common/model/search/EbayAspectHistogram;->domainDisplayName:Ljava/lang/String;

    .line 405
    invoke-static {v1, v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeType:Ljava/lang/String;

    .line 406
    invoke-static {v1, v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeValue:Ljava/lang/String;

    iget-object p1, p1, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeValue:Ljava/lang/String;

    .line 407
    invoke-static {v1, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getAppliedAspectCount()I
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcom/ebay/common/model/search/EbayAspectHistogram;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    .line 102
    invoke-virtual {v2}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->hasCheck()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getAppliedAspects()Lcom/ebay/common/model/search/EbayAspectHistogram;
    .locals 3

    .line 118
    new-instance v0, Lcom/ebay/common/model/search/EbayAspectHistogram;

    invoke-direct {v0}, Lcom/ebay/common/model/search/EbayAspectHistogram;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->domainName:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/common/model/search/EbayAspectHistogram;->domainName:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->domainDisplayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/common/model/search/EbayAspectHistogram;->domainDisplayName:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeType:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeType:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeValue:Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Lcom/ebay/common/model/search/EbayAspectHistogram;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    .line 126
    invoke-virtual {v2}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->getAppliedValues()Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v0, v2}, Lcom/ebay/common/model/search/EbayAspectHistogram;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v0}, Lcom/ebay/common/model/search/EbayAspectHistogram;->size()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getAspectByName(Ljava/lang/String;)Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/ebay/common/model/search/EbayAspectHistogram;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    .line 169
    iget-object v2, v1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final hasCheck()Z
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/ebay/common/model/search/EbayAspectHistogram;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    .line 184
    invoke-virtual {v1}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->hasCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 413
    invoke-super {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 414
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->domainName:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 415
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->domainDisplayName:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 416
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 417
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeValue:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->domainDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->domainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 361
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 362
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->domainName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 363
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->domainDisplayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->mergeStrategy:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    invoke-virtual {p2}, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayAspectHistogram;->scopeValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
