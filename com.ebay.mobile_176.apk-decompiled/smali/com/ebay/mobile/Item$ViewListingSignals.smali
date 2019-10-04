.class public final enum Lcom/ebay/mobile/Item$ViewListingSignals;
.super Ljava/lang/Enum;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewListingSignals"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/mobile/Item$ViewListingSignals;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/mobile/Item$ViewListingSignals;

.field public static final enum ALMOST_GONE:Lcom/ebay/mobile/Item$ViewListingSignals;

.field public static final enum LAST_ONE:Lcom/ebay/mobile/Item$ViewListingSignals;

.field public static final enum LIMITED_QTY:Lcom/ebay/mobile/Item$ViewListingSignals;

.field public static final enum X_SOLD:Lcom/ebay/mobile/Item$ViewListingSignals;

.field public static final enum X_SOLD_LAST_DAY:Lcom/ebay/mobile/Item$ViewListingSignals;

.field public static final enum X_SOLD_LAST_HOUR:Lcom/ebay/mobile/Item$ViewListingSignals;

.field public static final enum X_WATCHERS:Lcom/ebay/mobile/Item$ViewListingSignals;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 172
    new-instance v0, Lcom/ebay/mobile/Item$ViewListingSignals;

    const-string v1, "X_WATCHERS"

    const-string v2, "911"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/mobile/Item$ViewListingSignals;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/Item$ViewListingSignals;->X_WATCHERS:Lcom/ebay/mobile/Item$ViewListingSignals;

    .line 173
    new-instance v0, Lcom/ebay/mobile/Item$ViewListingSignals;

    const-string v1, "X_SOLD"

    const-string v2, "939"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/ebay/mobile/Item$ViewListingSignals;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/Item$ViewListingSignals;->X_SOLD:Lcom/ebay/mobile/Item$ViewListingSignals;

    .line 174
    new-instance v0, Lcom/ebay/mobile/Item$ViewListingSignals;

    const-string v1, "LAST_ONE"

    const-string v2, "901"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/ebay/mobile/Item$ViewListingSignals;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/Item$ViewListingSignals;->LAST_ONE:Lcom/ebay/mobile/Item$ViewListingSignals;

    .line 175
    new-instance v0, Lcom/ebay/mobile/Item$ViewListingSignals;

    const-string v1, "X_SOLD_LAST_HOUR"

    const-string v2, "763"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/ebay/mobile/Item$ViewListingSignals;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/Item$ViewListingSignals;->X_SOLD_LAST_HOUR:Lcom/ebay/mobile/Item$ViewListingSignals;

    .line 176
    new-instance v0, Lcom/ebay/mobile/Item$ViewListingSignals;

    const-string v1, "X_SOLD_LAST_DAY"

    const-string v2, "764"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/ebay/mobile/Item$ViewListingSignals;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/Item$ViewListingSignals;->X_SOLD_LAST_DAY:Lcom/ebay/mobile/Item$ViewListingSignals;

    .line 177
    new-instance v0, Lcom/ebay/mobile/Item$ViewListingSignals;

    const-string v1, "ALMOST_GONE"

    const-string v2, "902"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/ebay/mobile/Item$ViewListingSignals;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/Item$ViewListingSignals;->ALMOST_GONE:Lcom/ebay/mobile/Item$ViewListingSignals;

    .line 178
    new-instance v0, Lcom/ebay/mobile/Item$ViewListingSignals;

    const-string v1, "LIMITED_QTY"

    const-string v2, "938"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/ebay/mobile/Item$ViewListingSignals;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/Item$ViewListingSignals;->LIMITED_QTY:Lcom/ebay/mobile/Item$ViewListingSignals;

    const/4 v0, 0x7

    .line 170
    new-array v0, v0, [Lcom/ebay/mobile/Item$ViewListingSignals;

    sget-object v1, Lcom/ebay/mobile/Item$ViewListingSignals;->X_WATCHERS:Lcom/ebay/mobile/Item$ViewListingSignals;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/mobile/Item$ViewListingSignals;->X_SOLD:Lcom/ebay/mobile/Item$ViewListingSignals;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/mobile/Item$ViewListingSignals;->LAST_ONE:Lcom/ebay/mobile/Item$ViewListingSignals;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ebay/mobile/Item$ViewListingSignals;->X_SOLD_LAST_HOUR:Lcom/ebay/mobile/Item$ViewListingSignals;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ebay/mobile/Item$ViewListingSignals;->X_SOLD_LAST_DAY:Lcom/ebay/mobile/Item$ViewListingSignals;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ebay/mobile/Item$ViewListingSignals;->ALMOST_GONE:Lcom/ebay/mobile/Item$ViewListingSignals;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ebay/mobile/Item$ViewListingSignals;->LIMITED_QTY:Lcom/ebay/mobile/Item$ViewListingSignals;

    aput-object v1, v0, v9

    sput-object v0, Lcom/ebay/mobile/Item$ViewListingSignals;->$VALUES:[Lcom/ebay/mobile/Item$ViewListingSignals;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 184
    iput-object p3, p0, Lcom/ebay/mobile/Item$ViewListingSignals;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/mobile/Item$ViewListingSignals;
    .locals 1

    .line 170
    const-class v0, Lcom/ebay/mobile/Item$ViewListingSignals;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/mobile/Item$ViewListingSignals;

    return-object p0
.end method

.method public static values()[Lcom/ebay/mobile/Item$ViewListingSignals;
    .locals 1

    .line 170
    sget-object v0, Lcom/ebay/mobile/Item$ViewListingSignals;->$VALUES:[Lcom/ebay/mobile/Item$ViewListingSignals;

    invoke-virtual {v0}, [Lcom/ebay/mobile/Item$ViewListingSignals;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/mobile/Item$ViewListingSignals;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/ebay/mobile/Item$ViewListingSignals;->value:Ljava/lang/String;

    return-object v0
.end method
