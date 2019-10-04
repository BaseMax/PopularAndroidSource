.class Lcom/yandex/metrica/impl/ob/hw$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/hw;->a(Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/hw;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/hw;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hw$3;->a:Lcom/yandex/metrica/impl/ob/hw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hw$3;->a:Lcom/yandex/metrica/impl/ob/hw;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/hw;->a(Lcom/yandex/metrica/impl/ob/hw;)Lcom/yandex/metrica/impl/ob/ie;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hw$3;->a:Lcom/yandex/metrica/impl/ob/hw;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/hw;->c(Lcom/yandex/metrica/impl/ob/hw;)Lcom/yandex/metrica/impl/ob/ma;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/hw$3;->a:Lcom/yandex/metrica/impl/ob/hw;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/hw;->d(Lcom/yandex/metrica/impl/ob/hw;)Lcom/yandex/metrica/impl/ob/hq;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ie;->a(Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;)V

    :cond_0
    return-void
.end method
