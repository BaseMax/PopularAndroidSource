.class synthetic Lcom/ebay/mobile/addon/AddOnUtil$1;
.super Ljava/lang/Object;
.source "AddOnUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/addon/AddOnUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ebay$mobile$AddOnItem$AddOnType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 190
    invoke-static {}, Lcom/ebay/mobile/AddOnItem$AddOnType;->values()[Lcom/ebay/mobile/AddOnItem$AddOnType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ebay/mobile/addon/AddOnUtil$1;->$SwitchMap$com$ebay$mobile$AddOnItem$AddOnType:[I

    :try_start_0
    sget-object v0, Lcom/ebay/mobile/addon/AddOnUtil$1;->$SwitchMap$com$ebay$mobile$AddOnItem$AddOnType:[I

    sget-object v1, Lcom/ebay/mobile/AddOnItem$AddOnType;->WARRANTY:Lcom/ebay/mobile/AddOnItem$AddOnType;

    invoke-virtual {v1}, Lcom/ebay/mobile/AddOnItem$AddOnType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ebay/mobile/addon/AddOnUtil$1;->$SwitchMap$com$ebay$mobile$AddOnItem$AddOnType:[I

    sget-object v1, Lcom/ebay/mobile/AddOnItem$AddOnType;->INSTALLATION:Lcom/ebay/mobile/AddOnItem$AddOnType;

    invoke-virtual {v1}, Lcom/ebay/mobile/AddOnItem$AddOnType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/ebay/mobile/addon/AddOnUtil$1;->$SwitchMap$com$ebay$mobile$AddOnItem$AddOnType:[I

    sget-object v1, Lcom/ebay/mobile/AddOnItem$AddOnType;->MANUAL:Lcom/ebay/mobile/AddOnItem$AddOnType;

    invoke-virtual {v1}, Lcom/ebay/mobile/AddOnItem$AddOnType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/ebay/mobile/addon/AddOnUtil$1;->$SwitchMap$com$ebay$mobile$AddOnItem$AddOnType:[I

    sget-object v1, Lcom/ebay/mobile/AddOnItem$AddOnType;->SUPPORT:Lcom/ebay/mobile/AddOnItem$AddOnType;

    invoke-virtual {v1}, Lcom/ebay/mobile/AddOnItem$AddOnType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
