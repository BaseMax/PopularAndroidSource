.class Lcom/ebay/android/widget/RemoteImageViewFinalEnabledProvider;
.super Ljava/lang/Object;
.source "RemoteImageViewFinalEnabledProvider.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectionMeteredProvider:Lcom/ebay/nautilus/kernel/connection/ConnectionMeteredProvider;

.field private final connectionThroughputProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/connection/ConnectionThroughput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavax/inject/Provider;Lcom/ebay/nautilus/kernel/connection/ConnectionMeteredProvider;)V
    .locals 1
    .param p1    # Ljavax/inject/Provider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/kernel/connection/ConnectionMeteredProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/connection/ConnectionThroughput;",
            ">;",
            "Lcom/ebay/nautilus/kernel/connection/ConnectionMeteredProvider;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectionThroughputProvider may not be null"

    .line 33
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewFinalEnabledProvider;->connectionThroughputProvider:Ljavax/inject/Provider;

    const-string p1, "connectionMeteredProvider may not be null"

    .line 35
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/kernel/connection/ConnectionMeteredProvider;

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewFinalEnabledProvider;->connectionMeteredProvider:Lcom/ebay/nautilus/kernel/connection/ConnectionMeteredProvider;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewFinalEnabledProvider;->connectionThroughputProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/kernel/connection/ConnectionThroughput;

    .line 47
    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewFinalEnabledProvider;->connectionMeteredProvider:Lcom/ebay/nautilus/kernel/connection/ConnectionMeteredProvider;

    invoke-virtual {v1}, Lcom/ebay/nautilus/kernel/connection/ConnectionMeteredProvider;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    sget-object v1, Lcom/ebay/nautilus/kernel/connection/ConnectionThroughput;->POOR:Lcom/ebay/nautilus/kernel/connection/ConnectionThroughput;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageViewFinalEnabledProvider;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
