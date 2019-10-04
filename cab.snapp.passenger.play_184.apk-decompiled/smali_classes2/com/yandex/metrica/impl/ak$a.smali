.class final Lcom/yandex/metrica/impl/ak$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ak;

.field private final b:Lcom/yandex/metrica/impl/i;

.field private final c:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ak;Landroid/content/Context;Lcom/yandex/metrica/impl/i;Landroid/os/Bundle;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/yandex/metrica/impl/ak$a;->a:Lcom/yandex/metrica/impl/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 347
    iput-object p3, p0, Lcom/yandex/metrica/impl/ak$a;->b:Lcom/yandex/metrica/impl/i;

    .line 348
    iput-object p4, p0, Lcom/yandex/metrica/impl/ak$a;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 353
    new-instance v0, Lcom/yandex/metrica/impl/ob/t;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ak$a;->c:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/t;-><init>(Landroid/os/Bundle;)V

    .line 360
    iget-object v1, p0, Lcom/yandex/metrica/impl/ak$a;->a:Lcom/yandex/metrica/impl/ak;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ak;->a(Lcom/yandex/metrica/impl/ob/t;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 364
    :cond_0
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/az;->a(Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/az;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 373
    iget-object v3, p0, Lcom/yandex/metrica/impl/ak$a;->a:Lcom/yandex/metrica/impl/ak;

    invoke-static {v3}, Lcom/yandex/metrica/impl/ak;->b(Lcom/yandex/metrica/impl/ak;)Lcom/yandex/metrica/impl/ob/ba;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/ba;->a()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    .line 376
    :cond_2
    iget-object v3, p0, Lcom/yandex/metrica/impl/ak$a;->a:Lcom/yandex/metrica/impl/ak;

    invoke-static {v3}, Lcom/yandex/metrica/impl/ak;->b(Lcom/yandex/metrica/impl/ak;)Lcom/yandex/metrica/impl/ob/ba;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/yandex/metrica/impl/ob/ba;->a(Lcom/yandex/metrica/impl/ob/az;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/bb;

    move-result-object v1

    if-eqz v2, :cond_3

    .line 378
    iget-object v2, p0, Lcom/yandex/metrica/impl/ak$a;->a:Lcom/yandex/metrica/impl/ak;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ak;->c(Lcom/yandex/metrica/impl/ak;)V

    .line 380
    :cond_3
    iget-object v2, p0, Lcom/yandex/metrica/impl/ak$a;->a:Lcom/yandex/metrica/impl/ak;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ak;->d(Lcom/yandex/metrica/impl/ak;)V

    .line 381
    iget-object v2, p0, Lcom/yandex/metrica/impl/ak$a;->b:Lcom/yandex/metrica/impl/i;

    invoke-interface {v1, v2, v0}, Lcom/yandex/metrica/impl/ob/bb;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/t;)V

    return-void
.end method
