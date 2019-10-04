.class Lcom/yandex/metrica/impl/ob/kl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/kl;->sendEventsBuffer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/kl;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/kl;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kl$2;->a:Lcom/yandex/metrica/impl/ob/kl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kl$2;->a:Lcom/yandex/metrica/impl/ob/kl;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kl;->a()Lcom/yandex/metrica/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/metrica/b;->sendEventsBuffer()V

    return-void
.end method
