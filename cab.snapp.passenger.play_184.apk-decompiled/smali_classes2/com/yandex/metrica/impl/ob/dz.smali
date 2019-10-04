.class public Lcom/yandex/metrica/impl/ob/dz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/dy;

.field private final b:Lcom/yandex/metrica/impl/ob/fl;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;)V
    .locals 1

    .line 24
    new-instance v0, Lcom/yandex/metrica/impl/ob/dy;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/dy;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/fq;->c(Lcom/yandex/metrica/impl/ob/z;)Lcom/yandex/metrica/impl/ob/fl;

    move-result-object p1

    const-string p2, "event_hashes"

    .line 24
    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/dz;-><init>(Lcom/yandex/metrica/impl/ob/dy;Lcom/yandex/metrica/impl/ob/fl;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/dy;Lcom/yandex/metrica/impl/ob/fl;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dz;->a:Lcom/yandex/metrica/impl/ob/dy;

    .line 36
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/dz;->b:Lcom/yandex/metrica/impl/ob/fl;

    .line 37
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/dz;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/dx;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dz;->b:Lcom/yandex/metrica/impl/ob/fl;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dz;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/fl;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/yandex/metrica/impl/bv;->a([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    new-instance v0, Lcom/yandex/metrica/impl/ob/dx;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/dx;-><init>()V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dz;->a:Lcom/yandex/metrica/impl/ob/dy;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/dy;->a([B)Lcom/yandex/metrica/impl/ob/dx;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/dx;)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dz;->b:Lcom/yandex/metrica/impl/ob/fl;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dz;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dz;->a:Lcom/yandex/metrica/impl/ob/dy;

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/dy;->a(Lcom/yandex/metrica/impl/ob/dx;)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/fl;->a(Ljava/lang/String;[B)V

    return-void
.end method
