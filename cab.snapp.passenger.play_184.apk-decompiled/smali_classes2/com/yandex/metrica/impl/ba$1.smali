.class Lcom/yandex/metrica/impl/ba$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ba;-><init>(Lcom/yandex/metrica/impl/bi;Lcom/yandex/metrica/impl/ob/gc;Lcom/yandex/metrica/impl/ob/ky;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/ky;

.field final synthetic b:Lcom/yandex/metrica/impl/ba;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ba;Lcom/yandex/metrica/impl/ob/ky;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba$1;->b:Lcom/yandex/metrica/impl/ba;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ba$1;->a:Lcom/yandex/metrica/impl/ob/ky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba$1;->a:Lcom/yandex/metrica/impl/ob/ky;

    new-instance v1, Lcom/yandex/metrica/impl/ba$1$1;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ba$1$1;-><init>(Lcom/yandex/metrica/impl/ba$1;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ky;->a(Lcom/yandex/metrica/impl/ob/kx;)V

    return-void
.end method
