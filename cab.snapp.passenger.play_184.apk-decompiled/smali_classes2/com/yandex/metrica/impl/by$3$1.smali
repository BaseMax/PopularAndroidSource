.class Lcom/yandex/metrica/impl/by$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/by$3;->onReceive(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/yandex/metrica/impl/by$3;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/by$3;Ljava/util/Map;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/yandex/metrica/impl/by$3$1;->b:Lcom/yandex/metrica/impl/by$3;

    iput-object p2, p0, Lcom/yandex/metrica/impl/by$3$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/yandex/metrica/impl/by$3$1;->b:Lcom/yandex/metrica/impl/by$3;

    iget-object v0, v0, Lcom/yandex/metrica/impl/by$3;->b:Lcom/yandex/metrica/impl/by;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/by;->a(Lcom/yandex/metrica/impl/by;Lcom/yandex/metrica/IIdentifierCallback;)Lcom/yandex/metrica/IIdentifierCallback;

    .line 380
    iget-object v0, p0, Lcom/yandex/metrica/impl/by$3$1;->b:Lcom/yandex/metrica/impl/by$3;

    iget-object v0, v0, Lcom/yandex/metrica/impl/by$3;->a:Lcom/yandex/metrica/AppMetricaDeviceIDListener;

    iget-object v1, p0, Lcom/yandex/metrica/impl/by$3$1;->a:Ljava/util/Map;

    const-string v2, "appmetrica_device_id_hash"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/AppMetricaDeviceIDListener;->onLoaded(Ljava/lang/String;)V

    return-void
.end method
