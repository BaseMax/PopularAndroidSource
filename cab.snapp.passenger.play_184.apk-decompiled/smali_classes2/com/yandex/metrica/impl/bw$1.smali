.class Lcom/yandex/metrica/impl/bw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/bw;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/yandex/metrica/impl/ob/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/k<",
        "Lcom/yandex/metrica/impl/ob/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/bw;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/bw;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/yandex/metrica/impl/bw$1;->a:Lcom/yandex/metrica/impl/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/yandex/metrica/impl/ob/j;)V
    .locals 0

    .line 332
    check-cast p1, Lcom/yandex/metrica/impl/ob/r;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/bw$1;->a(Lcom/yandex/metrica/impl/ob/r;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/r;)V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/yandex/metrica/impl/bw$1;->a:Lcom/yandex/metrica/impl/bw;

    monitor-enter v0

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/bw$1;->a:Lcom/yandex/metrica/impl/bw;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/r;->b:Lcom/yandex/metrica/impl/ob/ma;

    invoke-static {v1, p1}, Lcom/yandex/metrica/impl/bw;->a(Lcom/yandex/metrica/impl/bw;Lcom/yandex/metrica/impl/ob/ma;)Lcom/yandex/metrica/impl/ob/ma;

    .line 336
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
