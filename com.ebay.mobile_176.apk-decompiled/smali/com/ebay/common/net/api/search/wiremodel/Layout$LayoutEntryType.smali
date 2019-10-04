.class public final enum Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;
.super Ljava/lang/Enum;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/wiremodel/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutEntryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

.field public static final enum COMPATIBLE_PRODUCT_ANSWER:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

.field public static final enum LABELED_ITEM_ANSWER:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

.field public static final enum LANDING_PAGE_ANSWER:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

.field public static final enum LISTING:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

.field public static final enum PRODUCT:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

.field public static final enum QUERY_ANSWER:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

.field public static final enum REWRITE_START:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 25
    new-instance v0, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    const-string v1, "LISTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;->LISTING:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    .line 26
    new-instance v0, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    const-string v1, "PRODUCT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;->PRODUCT:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    .line 27
    new-instance v0, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    const-string v1, "LABELED_ITEM_ANSWER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;->LABELED_ITEM_ANSWER:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    .line 28
    new-instance v0, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    const-string v1, "COMPATIBLE_PRODUCT_ANSWER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;->COMPATIBLE_PRODUCT_ANSWER:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    .line 29
    new-instance v0, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    const-string v1, "QUERY_ANSWER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;->QUERY_ANSWER:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    .line 30
    new-instance v0, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    const-string v1, "LANDING_PAGE_ANSWER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;->LANDING_PAGE_ANSWER:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    .line 31
    new-instance v0, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    const-string v1, "REWRITE_START"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;->REWRITE_START:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    const/4 v0, 0x7

    .line 23
    new-array v0, v0, [Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    sget-object v1, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;->LISTING:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;->PRODUCT:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;->LABELED_ITEM_ANSWER:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;->COMPATIBLE_PRODUCT_ANSWER:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;->QUERY_ANSWER:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;->LANDING_PAGE_ANSWER:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;->REWRITE_START:Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;->$VALUES:[Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;
    .locals 1

    .line 23
    const-class v0, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;
    .locals 1

    .line 23
    sget-object v0, Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;->$VALUES:[Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    invoke-virtual {v0}, [Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/net/api/search/wiremodel/Layout$LayoutEntryType;

    return-object v0
.end method
