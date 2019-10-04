.class public Lcom/yandex/metrica/impl/ob/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/gd;

.field private final b:Lcom/yandex/metrica/impl/ob/nq;

.field private c:Lcom/yandex/metrica/impl/ob/mc;

.field private d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/gd;

    .line 29
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object p1

    .line 30
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/fq;->b(Lcom/yandex/metrica/impl/ob/z;)Lcom/yandex/metrica/impl/ob/fr;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/gd;-><init>(Lcom/yandex/metrica/impl/ob/fr;)V

    new-instance p1, Lcom/yandex/metrica/impl/ob/np;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/np;-><init>()V

    .line 28
    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/ax;-><init>(Lcom/yandex/metrica/impl/ob/gd;Lcom/yandex/metrica/impl/ob/nq;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/gd;Lcom/yandex/metrica/impl/ob/nq;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ax;->a:Lcom/yandex/metrica/impl/ob/gd;

    .line 39
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ax;->b:Lcom/yandex/metrica/impl/ob/nq;

    .line 41
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ax;->a:Lcom/yandex/metrica/impl/ob/gd;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/gd;->h(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/ax;->d:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ax;->b:Lcom/yandex/metrica/impl/ob/nq;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/nq;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ax;->d:J

    .line 52
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ax;->a:Lcom/yandex/metrica/impl/ob/gd;

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ax;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/gd;->i(J)Lcom/yandex/metrica/impl/ob/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gd;->i()V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/mc;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ax;->c:Lcom/yandex/metrica/impl/ob/mc;

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/t;)Z
    .locals 4

    .line 45
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->o()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ax;->c:Lcom/yandex/metrica/impl/ob/mc;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ax;->b:Lcom/yandex/metrica/impl/ob/nq;

    .line 47
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/nq;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/ax;->d:J

    sub-long/2addr v0, v2

    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ax;->c:Lcom/yandex/metrica/impl/ob/mc;

    iget-wide v2, p1, Lcom/yandex/metrica/impl/ob/mc;->a:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
