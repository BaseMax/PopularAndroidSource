.class Lcom/yandex/metrica/impl/by$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/IIdentifierCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/by;->a(Lcom/yandex/metrica/AppMetricaDeviceIDListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/AppMetricaDeviceIDListener;

.field final synthetic b:Lcom/yandex/metrica/impl/by;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/by;Lcom/yandex/metrica/AppMetricaDeviceIDListener;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/yandex/metrica/impl/by$3;->b:Lcom/yandex/metrica/impl/by;

    iput-object p2, p0, Lcom/yandex/metrica/impl/by$3;->a:Lcom/yandex/metrica/AppMetricaDeviceIDListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 376
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/yandex/metrica/impl/by$3$1;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/by$3$1;-><init>(Lcom/yandex/metrica/impl/by$3;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRequestError(Lcom/yandex/metrica/IIdentifierCallback$Reason;)V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/yandex/metrica/impl/by$3;->b:Lcom/yandex/metrica/impl/by;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/by;->a(Lcom/yandex/metrica/impl/by;Lcom/yandex/metrica/IIdentifierCallback;)Lcom/yandex/metrica/IIdentifierCallback;

    .line 388
    iget-object v0, p0, Lcom/yandex/metrica/impl/by$3;->a:Lcom/yandex/metrica/AppMetricaDeviceIDListener;

    invoke-static {}, Lcom/yandex/metrica/impl/by;->l()Ljava/util/EnumMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/AppMetricaDeviceIDListener$Reason;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/AppMetricaDeviceIDListener;->onError(Lcom/yandex/metrica/AppMetricaDeviceIDListener$Reason;)V

    return-void
.end method
