.class Lcom/yandex/metrica/impl/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/a;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/a;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/yandex/metrica/impl/a$1;->a:Lcom/yandex/metrica/impl/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/a$1;->a:Lcom/yandex/metrica/impl/a;

    invoke-static {v0}, Lcom/yandex/metrica/impl/a;->a(Lcom/yandex/metrica/impl/a;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
