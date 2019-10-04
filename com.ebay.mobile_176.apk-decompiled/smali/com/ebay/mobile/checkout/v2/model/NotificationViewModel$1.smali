.class synthetic Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel$1;
.super Ljava/lang/Object;
.source "NotificationViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ebay$nautilus$domain$data$experience$type$field$MessageType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 97
    invoke-static {}, Lcom/ebay/nautilus/domain/data/experience/type/field/MessageType;->values()[Lcom/ebay/nautilus/domain/data/experience/type/field/MessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$type$field$MessageType:[I

    :try_start_0
    sget-object v0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$type$field$MessageType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/field/MessageType;->ERROR:Lcom/ebay/nautilus/domain/data/experience/type/field/MessageType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/field/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$type$field$MessageType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/field/MessageType;->WARNING:Lcom/ebay/nautilus/domain/data/experience/type/field/MessageType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/field/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$type$field$MessageType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/field/MessageType;->SUCCESS:Lcom/ebay/nautilus/domain/data/experience/type/field/MessageType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/field/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
