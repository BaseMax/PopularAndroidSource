.class public Lcom/yandex/metrica/impl/ob/nf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/nf$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/net/LocalServerSocket;

.field private c:Lcom/yandex/metrica/impl/ob/lj;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 40
    new-instance v0, Lcom/yandex/metrica/impl/ob/lh;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/lh;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/nf;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/lj;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/lj;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/nf;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "[LocalSocketLock:%s]"

    .line 93
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/nf;->c:Lcom/yandex/metrica/impl/ob/lj;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/lj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/nf$a;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/nf;->c:Lcom/yandex/metrica/impl/ob/lj;

    .line 80
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/nf;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 83
    :cond_1
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/lj;->a()V

    .line 84
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/lj;->c()V

    .line 86
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/lj;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 88
    :cond_2
    new-instance p1, Lcom/yandex/metrica/impl/ob/nf$a;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/nf$a;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public a()Z
    .locals 2

    .line 46
    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/nf;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/nf;->b:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/nf;->b:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_0

    .line 59
    :try_start_0
    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/nf;->b:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/nf$a;
        }
    .end annotation

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/nf;->a(Lcom/yandex/metrica/impl/ob/lj;)V

    return-void
.end method
