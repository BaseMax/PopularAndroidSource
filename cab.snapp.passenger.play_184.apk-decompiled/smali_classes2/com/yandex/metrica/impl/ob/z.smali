.class public Lcom/yandex/metrica/impl/ob/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lcom/yandex/metrica/impl/ob/ml;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/mk;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mk;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/z;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/ml;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/ml;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/z;->a:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/z;->b:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/z;->c:Lcom/yandex/metrica/impl/ob/ml;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/z;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/z;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/ml;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/z;->c:Lcom/yandex/metrica/impl/ob/ml;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 69
    :cond_1
    check-cast p1, Lcom/yandex/metrica/impl/ob/z;

    .line 71
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/z;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/z;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/z;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 73
    :cond_3
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/z;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/z;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    if-nez p1, :cond_5

    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/z;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 79
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/z;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
