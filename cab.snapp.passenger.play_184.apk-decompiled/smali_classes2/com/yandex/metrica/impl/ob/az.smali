.class public Lcom/yandex/metrica/impl/ob/az;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Integer;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/yandex/metrica/impl/ob/bc;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bc;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/az;->a:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/az;->b:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/az;->c:Ljava/lang/Integer;

    .line 38
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/az;->d:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/az;->e:Lcom/yandex/metrica/impl/ob/bc;

    return-void
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/az;
    .locals 7

    .line 77
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/u;->h()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->f()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/u;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 80
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/u;->f()Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/CounterConfiguration;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    new-instance p0, Lcom/yandex/metrica/impl/ob/bi;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bi;-><init>()V

    :goto_0
    move-object v6, p0

    goto :goto_1

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/metrica/CounterConfiguration;->q()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 90
    new-instance p0, Lcom/yandex/metrica/impl/ob/bg;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bg;-><init>()V

    goto :goto_0

    :cond_1
    const-string p0, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 95
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 96
    new-instance p0, Lcom/yandex/metrica/impl/ob/bl;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bl;-><init>()V

    goto :goto_0

    .line 98
    :cond_2
    new-instance p0, Lcom/yandex/metrica/impl/ob/bk;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bk;-><init>()V

    goto :goto_0

    .line 105
    :goto_1
    new-instance p0, Lcom/yandex/metrica/impl/ob/az;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/az;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bc;)V

    return-object p0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/bc;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/az;->e:Lcom/yandex/metrica/impl/ob/bc;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/az;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/az;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/Integer;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/az;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/az;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 115
    :cond_1
    check-cast p1, Lcom/yandex/metrica/impl/ob/az;

    .line 117
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/az;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/az;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/az;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/az;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/az;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 119
    :cond_4
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/az;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/az;->c:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/az;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 121
    :cond_6
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/az;->d:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/az;->d:Ljava/lang/String;

    .line 122
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/az;->d:Ljava/lang/String;

    if-nez p1, :cond_8

    return v0

    :cond_8
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/az;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 129
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/az;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 130
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/az;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 131
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/az;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientDescription{mApiKey=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/az;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/az;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mProcessID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/az;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mProcessSessionID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/az;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
