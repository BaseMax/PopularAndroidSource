.class final enum Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;
.super Ljava/lang/Enum;
.source "StoreLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ItemViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;

.field public static final enum STORE_LOCATION:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    new-instance v0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;

    const-string v1, "STORE_LOCATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;->STORE_LOCATION:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;

    const/4 v0, 0x1

    .line 67
    new-array v0, v0, [Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;

    sget-object v1, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;->STORE_LOCATION:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;->$VALUES:[Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;
    .locals 1

    .line 67
    const-class v0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;
    .locals 1

    .line 67
    sget-object v0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;->$VALUES:[Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;

    invoke-virtual {v0}, [Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;

    return-object v0
.end method
