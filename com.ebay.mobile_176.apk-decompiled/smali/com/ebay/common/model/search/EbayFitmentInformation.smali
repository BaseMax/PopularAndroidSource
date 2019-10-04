.class public Lcom/ebay/common/model/search/EbayFitmentInformation;
.super Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;
.source "EbayFitmentInformation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/model/search/EbayFitmentInformation$FitmentData;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/search/EbayFitmentInformation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final fitmentDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/EbayFitmentInformation$FitmentData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/ebay/common/model/search/EbayFitmentInformation$1;

    invoke-direct {v0}, Lcom/ebay/common/model/search/EbayFitmentInformation$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/search/EbayFitmentInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/common/net/api/search/wiremodel/FitmentResponse;)V
    .locals 3

    .line 39
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayFitmentInformation;->fitmentDataList:Ljava/util/List;

    .line 41
    iget-object v0, p1, Lcom/ebay/common/net/api/search/wiremodel/FitmentResponse;->fitmentData:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object p1, p1, Lcom/ebay/common/net/api/search/wiremodel/FitmentResponse;->fitmentData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/search/wiremodel/FitmentResponse$FitmentData;

    .line 46
    new-instance v1, Lcom/ebay/common/model/search/EbayFitmentInformation$FitmentData;

    invoke-direct {v1}, Lcom/ebay/common/model/search/EbayFitmentInformation$FitmentData;-><init>()V

    .line 47
    iget-object v2, p0, Lcom/ebay/common/model/search/EbayFitmentInformation;->fitmentDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v2, v0, Lcom/ebay/common/net/api/search/wiremodel/FitmentResponse$FitmentData;->id:Ljava/lang/String;

    iput-object v2, v1, Lcom/ebay/common/model/search/EbayFitmentInformation$FitmentData;->id:Ljava/lang/String;

    .line 49
    iget-object v2, v0, Lcom/ebay/common/net/api/search/wiremodel/FitmentResponse$FitmentData;->fitmentProperties:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/ebay/common/model/search/EbayFitmentInformation$FitmentData;->access$000(Lcom/ebay/common/model/search/EbayFitmentInformation$FitmentData;Ljava/util/List;)V

    .line 50
    iget-object v0, v0, Lcom/ebay/common/net/api/search/wiremodel/FitmentResponse$FitmentData;->additionalProperties:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/ebay/common/model/search/EbayFitmentInformation$FitmentData;->access$000(Lcom/ebay/common/model/search/EbayFitmentInformation$FitmentData;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public find(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayFitmentInformation;->fitmentDataList:Ljava/util/List;

    if-nez v1, :cond_0

    return-object v0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayFitmentInformation;->fitmentDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/search/EbayFitmentInformation$FitmentData;

    if-eqz v2, :cond_1

    .line 67
    iget-object v3, v2, Lcom/ebay/common/model/search/EbayFitmentInformation$FitmentData;->id:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    iget-object p1, v2, Lcom/ebay/common/model/search/EbayFitmentInformation$FitmentData;->fitmentProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0

    :cond_2
    return-object v0
.end method

.method public hasFitmentData()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayFitmentInformation;->fitmentDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/model/search/EbayFitmentInformation;->fitmentDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
