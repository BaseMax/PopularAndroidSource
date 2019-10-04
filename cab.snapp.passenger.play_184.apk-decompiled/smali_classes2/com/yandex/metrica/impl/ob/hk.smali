.class public final Lcom/yandex/metrica/impl/ob/hk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hk;->a:Ljava/lang/String;

    .line 38
    iput p2, p0, Lcom/yandex/metrica/impl/ob/hk;->b:I

    .line 39
    iput-boolean p3, p0, Lcom/yandex/metrica/impl/ob/hk;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, -0x1

    .line 43
    invoke-direct {p0, p1, v0, p2}, Lcom/yandex/metrica/impl/ob/hk;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Lorg/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    .line 31
    invoke-virtual {p1, v0}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hk;->a:Ljava/lang/String;

    const-string v0, "required"

    .line 32
    invoke-virtual {p1, v0}, Lorg/a/c;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/hk;->c:Z

    const-string v0, "version"

    const/4 v1, -0x1

    .line 33
    invoke-virtual {p1, v0, v1}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/yandex/metrica/impl/ob/hk;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lorg/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/a/c;

    invoke-direct {v0}, Lorg/a/c;-><init>()V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hk;->a:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hk;->c:Z

    const-string v2, "required"

    invoke-virtual {v0, v2, v1}, Lorg/a/c;->put(Ljava/lang/String;Z)Lorg/a/c;

    move-result-object v0

    .line 60
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hk;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, "version"

    .line 61
    invoke-virtual {v0, v2, v1}, Lorg/a/c;->put(Ljava/lang/String;I)Lorg/a/c;

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    check-cast p1, Lcom/yandex/metrica/impl/ob/hk;

    .line 73
    iget v2, p0, Lcom/yandex/metrica/impl/ob/hk;->b:I

    iget v3, p1, Lcom/yandex/metrica/impl/ob/hk;->b:I

    if-eq v2, v3, :cond_2

    return v1

    .line 74
    :cond_2
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/hk;->c:Z

    iget-boolean v3, p1, Lcom/yandex/metrica/impl/ob/hk;->c:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 75
    :cond_3
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/hk;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/hk;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    if-nez p1, :cond_5

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hk;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 82
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hk;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 83
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hk;->c:Z

    add-int/2addr v0, v1

    return v0
.end method
