.class Lcom/ebay/android/widget/RemoteImageViewDownscaleProvider;
.super Ljava/lang/Object;
.source "RemoteImageViewDownscaleProvider.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectionThroughputProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/connection/ConnectionThroughput;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionTypeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/connection/ConnectionType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .param p1    # Ljavax/inject/Provider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljavax/inject/Provider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/connection/ConnectionThroughput;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/connection/ConnectionType;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectionThroughputProvider may not be null"

    .line 26
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewDownscaleProvider;->connectionThroughputProvider:Ljavax/inject/Provider;

    const-string p1, "connectionTypeProvider may not be null"

    .line 28
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewDownscaleProvider;->connectionTypeProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private getByConnectionType()I
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDownscaleProvider;->connectionTypeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/kernel/connection/ConnectionType;

    .line 59
    sget-object v1, Lcom/ebay/android/widget/RemoteImageViewDownscaleProvider$1;->$SwitchMap$com$ebay$nautilus$kernel$connection$ConnectionType:[I

    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/connection/ConnectionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    return v1

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getByThroughput()I
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDownscaleProvider;->connectionThroughputProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/kernel/connection/ConnectionThroughput;

    .line 87
    sget-object v1, Lcom/ebay/android/widget/RemoteImageViewDownscaleProvider$1;->$SwitchMap$com$ebay$nautilus$kernel$connection$ConnectionThroughput:[I

    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/connection/ConnectionThroughput;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :pswitch_2
    const/4 v0, 0x3

    return v0

    :pswitch_3
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewDownscaleProvider;->getByConnectionType()I

    move-result v0

    .line 42
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewDownscaleProvider;->getByThroughput()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageViewDownscaleProvider;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
