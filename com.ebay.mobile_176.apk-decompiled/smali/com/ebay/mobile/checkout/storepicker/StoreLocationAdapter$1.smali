.class synthetic Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$1;
.super Ljava/lang/Object;
.source "StoreLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ebay$mobile$checkout$storepicker$StoreLocationAdapter$ItemViewType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    invoke-static {}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;->values()[Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$1;->$SwitchMap$com$ebay$mobile$checkout$storepicker$StoreLocationAdapter$ItemViewType:[I

    :try_start_0
    sget-object v0, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$1;->$SwitchMap$com$ebay$mobile$checkout$storepicker$StoreLocationAdapter$ItemViewType:[I

    sget-object v1, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;->STORE_LOCATION:Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;

    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/storepicker/StoreLocationAdapter$ItemViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
