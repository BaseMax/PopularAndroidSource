.class public Lcom/yandex/metrica/impl/ob/es$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/fb;

.field private final b:Landroid/os/Bundle;

.field private final c:Lcom/yandex/metrica/impl/ob/fa;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fb;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/es$a;-><init>(Lcom/yandex/metrica/impl/ob/fb;Landroid/os/Bundle;Lcom/yandex/metrica/impl/ob/fa;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fb;Landroid/os/Bundle;Lcom/yandex/metrica/impl/ob/fa;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/es$a;->a:Lcom/yandex/metrica/impl/ob/fb;

    .line 50
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/es$a;->b:Landroid/os/Bundle;

    .line 51
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/es$a;->c:Lcom/yandex/metrica/impl/ob/fa;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/es$a;->a:Lcom/yandex/metrica/impl/ob/fb;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/es$a;->b:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/es$a;->c:Lcom/yandex/metrica/impl/ob/fa;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/fb;->a(Landroid/os/Bundle;Lcom/yandex/metrica/impl/ob/fa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/es$a;->c:Lcom/yandex/metrica/impl/ob/fa;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/fa;->a()V

    :cond_0
    return-void
.end method
