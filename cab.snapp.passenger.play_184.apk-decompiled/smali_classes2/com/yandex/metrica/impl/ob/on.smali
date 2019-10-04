.class public Lcom/yandex/metrica/impl/ob/on;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/oq;

.field private final b:Lcom/yandex/metrica/impl/ob/oq;

.field private final c:Lcom/yandex/metrica/impl/ob/ok;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/ok;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ok;-><init>(I)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/on;->c:Lcom/yandex/metrica/impl/ob/ok;

    .line 29
    new-instance p1, Lcom/yandex/metrica/impl/ob/oq;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "map key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/oq;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/on;->a:Lcom/yandex/metrica/impl/ob/oq;

    .line 30
    new-instance p1, Lcom/yandex/metrica/impl/ob/oq;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "map value"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lcom/yandex/metrica/impl/ob/oq;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/on;->b:Lcom/yandex/metrica/impl/ob/oq;

    .line 31
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/on;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/oq;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/on;->a:Lcom/yandex/metrica/impl/ob/oq;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 47
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/on;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/on;->c:Lcom/yandex/metrica/impl/ob/ok;

    .line 49
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/ok;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "The %s has reached the limit of %d items. Item with key %s will be ignored"

    .line 48
    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/nk;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b()Lcom/yandex/metrica/impl/ob/oq;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/on;->b:Lcom/yandex/metrica/impl/ob/oq;

    return-object v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/ok;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/on;->c:Lcom/yandex/metrica/impl/ob/ok;

    return-object v0
.end method
