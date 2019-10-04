.class public final enum Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;
.super Ljava/lang/Enum;
.source "SearchParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/SearchParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueryIntent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

.field public static final enum CountOnly:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

.field public static final enum Normal:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 339
    new-instance v0, Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;->Normal:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    .line 340
    new-instance v0, Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    const-string v1, "CountOnly"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;->CountOnly:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    const/4 v0, 0x2

    .line 337
    new-array v0, v0, [Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    sget-object v1, Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;->Normal:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;->CountOnly:Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;->$VALUES:[Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 337
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;
    .locals 1

    .line 337
    const-class v0, Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;
    .locals 1

    .line 337
    sget-object v0, Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;->$VALUES:[Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    invoke-virtual {v0}, [Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/net/api/search/SearchParameters$QueryIntent;

    return-object v0
.end method
