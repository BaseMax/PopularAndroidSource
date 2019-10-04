.class Lcom/yandex/metrica/impl/ob/hw$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/hw;
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

    .line 188
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hw$2;->a:Lcom/yandex/metrica/impl/ob/hw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hw$2;->a:Lcom/yandex/metrica/impl/ob/hw;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/hw;->a(Lcom/yandex/metrica/impl/ob/hw;)Lcom/yandex/metrica/impl/ob/ie;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ie;->d()V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hw$2;->a:Lcom/yandex/metrica/impl/ob/hw;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/hw;->b(Lcom/yandex/metrica/impl/ob/hw;)V

    return-void
.end method
