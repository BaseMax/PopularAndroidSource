.class public final enum Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;
.super Ljava/lang/Enum;
.source "PageTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

.field public static final enum GRID_2_COLUMN:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

.field public static final enum GRID_3_COLUMN:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

.field public static final enum GRID_4_COLUMN:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

.field public static final enum LARGE_1_COLUMN:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

.field public static final enum LIST_1_COLUMN:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

.field public static final enum SPLIT_VIEW:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

.field public static final enum UNKNOWN:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 29
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;->UNKNOWN:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    .line 30
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    const-string v1, "LIST_1_COLUMN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;->LIST_1_COLUMN:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    .line 31
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    const-string v1, "SPLIT_VIEW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;->SPLIT_VIEW:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    .line 32
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    const-string v1, "GRID_2_COLUMN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;->GRID_2_COLUMN:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    .line 33
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    const-string v1, "GRID_3_COLUMN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;->GRID_3_COLUMN:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    .line 34
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    const-string v1, "GRID_4_COLUMN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;->GRID_4_COLUMN:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    .line 35
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    const-string v1, "LARGE_1_COLUMN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;->LARGE_1_COLUMN:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    const/4 v0, 0x7

    .line 27
    new-array v0, v0, [Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;->UNKNOWN:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;->LIST_1_COLUMN:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;->SPLIT_VIEW:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;->GRID_2_COLUMN:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;->GRID_3_COLUMN:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;->GRID_4_COLUMN:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;->LARGE_1_COLUMN:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;->$VALUES:[Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;
    .locals 1

    .line 27
    const-class v0, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;
    .locals 1

    .line 27
    sget-object v0, Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;->$VALUES:[Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    invoke-virtual {v0}, [Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    return-object v0
.end method
