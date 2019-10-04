.class Lcom/yandex/metrica/impl/ob/kq$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/kq;->a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/DeferredDeeplinkParametersListener;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/kq;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/kq;Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kq$16;->b:Lcom/yandex/metrica/impl/ob/kq;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/kq$16;->a:Lcom/yandex/metrica/DeferredDeeplinkParametersListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq$16;->b:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kq;->c()Lcom/yandex/metrica/impl/ob/kp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kp;->f()Lcom/yandex/metrica/impl/by;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kq$16;->a:Lcom/yandex/metrica/DeferredDeeplinkParametersListener;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/by;->a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V

    return-void
.end method
