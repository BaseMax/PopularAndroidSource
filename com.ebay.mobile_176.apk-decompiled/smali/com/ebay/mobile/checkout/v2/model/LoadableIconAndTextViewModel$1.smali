.class synthetic Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel$1;
.super Ljava/lang/Object;
.source "LoadableIconAndTextViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$v2$common$RenderingHintType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 157
    invoke-static {}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderingHintType;->values()[Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderingHintType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$v2$common$RenderingHintType:[I

    :try_start_0
    sget-object v0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$v2$common$RenderingHintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderingHintType;->TITLE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderingHintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderingHintType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$v2$common$RenderingHintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderingHintType;->DETAILS:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderingHintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderingHintType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$v2$common$RenderingHintType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderingHintType;->DETAILS_LIST:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderingHintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderingHintType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
