.class public final enum Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;
.super Ljava/lang/Enum;
.source "EbayAspectHistogram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/search/EbayAspectHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HistoMergeStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

.field public static final enum MERGE_ALL:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

.field public static final enum MERGE_SUPPRESS:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

.field public static final enum RETAIN:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

.field public static final enum USE_NEW:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    const-string v1, "RETAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->RETAIN:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    .line 37
    new-instance v0, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    const-string v1, "MERGE_ALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->MERGE_ALL:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    .line 39
    new-instance v0, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    const-string v1, "MERGE_SUPPRESS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->MERGE_SUPPRESS:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    .line 42
    new-instance v0, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    const-string v1, "USE_NEW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->USE_NEW:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    const/4 v0, 0x4

    .line 32
    new-array v0, v0, [Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    sget-object v1, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->RETAIN:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->MERGE_ALL:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->MERGE_SUPPRESS:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->USE_NEW:Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->$VALUES:[Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;
    .locals 1

    .line 32
    const-class v0, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;
    .locals 1

    .line 32
    sget-object v0, Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->$VALUES:[Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    invoke-virtual {v0}, [Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/model/search/EbayAspectHistogram$HistoMergeStrategy;

    return-object v0
.end method
