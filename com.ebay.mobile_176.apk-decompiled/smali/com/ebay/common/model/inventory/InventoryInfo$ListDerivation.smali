.class public final enum Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;
.super Ljava/lang/Enum;
.source "InventoryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/inventory/InventoryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListDerivation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

.field public static final enum LATLNG:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

.field public static final enum POSTAL_CODE:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

.field public static final enum SEARCH_POSTAL_CODE:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

.field public static final enum UNKNOWN:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    new-instance v0, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->UNKNOWN:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    .line 25
    new-instance v0, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    const-string v1, "LATLNG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->LATLNG:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    .line 26
    new-instance v0, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    const-string v1, "POSTAL_CODE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->POSTAL_CODE:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    .line 27
    new-instance v0, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    const-string v1, "SEARCH_POSTAL_CODE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->SEARCH_POSTAL_CODE:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    const/4 v0, 0x4

    .line 22
    new-array v0, v0, [Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    sget-object v1, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->UNKNOWN:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->LATLNG:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->POSTAL_CODE:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->SEARCH_POSTAL_CODE:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->$VALUES:[Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->value:I

    return-void
.end method

.method public static getFromValue(I)Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;
    .locals 5

    .line 43
    invoke-static {}, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->values()[Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 45
    invoke-virtual {v3}, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_1
    sget-object p0, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->UNKNOWN:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;
    .locals 1

    .line 22
    const-class v0, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;
    .locals 1

    .line 22
    sget-object v0, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->$VALUES:[Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    invoke-virtual {v0}, [Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->value:I

    return v0
.end method
