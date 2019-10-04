.class synthetic Lcom/ebay/mobile/ads/google/answers/AdsViewModelFactory$1;
.super Ljava/lang/Object;
.source "AdsViewModelFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/ads/google/answers/AdsViewModelFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ebay$mobile$uxcomponents$viewmodel$UxHintType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 112
    invoke-static {}, Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;->values()[Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ebay/mobile/ads/google/answers/AdsViewModelFactory$1;->$SwitchMap$com$ebay$mobile$uxcomponents$viewmodel$UxHintType:[I

    :try_start_0
    sget-object v0, Lcom/ebay/mobile/ads/google/answers/AdsViewModelFactory$1;->$SwitchMap$com$ebay$mobile$uxcomponents$viewmodel$UxHintType:[I

    sget-object v1, Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;->HOME:Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;

    invoke-virtual {v1}, Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ebay/mobile/ads/google/answers/AdsViewModelFactory$1;->$SwitchMap$com$ebay$mobile$uxcomponents$viewmodel$UxHintType:[I

    sget-object v1, Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;->SEARCH:Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;

    invoke-virtual {v1}, Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
