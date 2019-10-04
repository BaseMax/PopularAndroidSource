.class public final Lcom/yandex/metrica/impl/ob/kw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kw;->a:Ljava/lang/String;

    .line 46
    iput-wide p2, p0, Lcom/yandex/metrica/impl/ob/kw;->b:J

    .line 47
    iput-wide p4, p0, Lcom/yandex/metrica/impl/ob/kw;->c:J

    return-void
.end method

.method private constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/d;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1119
    new-instance v0, Lcom/yandex/metrica/impl/ob/kc;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kc;-><init>()V

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/e;[B)Lcom/yandex/metrica/impl/ob/e;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/kc;

    .line 37
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/kc;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kw;->a:Ljava/lang/String;

    .line 38
    iget-wide v0, p1, Lcom/yandex/metrica/impl/ob/kc;->d:J

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/kw;->b:J

    .line 39
    iget-wide v0, p1, Lcom/yandex/metrica/impl/ob/kc;->c:J

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/kw;->c:J

    return-void
.end method

.method public static a([B)Lcom/yandex/metrica/impl/ob/kw;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/d;
        }
    .end annotation

    .line 28
    invoke-static {p0}, Lcom/yandex/metrica/impl/bv;->a([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 31
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/kw;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/kw;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final a()[B
    .locals 3

    .line 51
    new-instance v0, Lcom/yandex/metrica/impl/ob/kc;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kc;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kw;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kc;->b:Ljava/lang/String;

    .line 53
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/kw;->b:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/kc;->d:J

    .line 54
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/kw;->c:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/kc;->c:J

    .line 55
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/e;)[B

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    check-cast p1, Lcom/yandex/metrica/impl/ob/kw;

    .line 65
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/kw;->b:J

    iget-wide v3, p1, Lcom/yandex/metrica/impl/ob/kw;->b:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    return v0

    .line 66
    :cond_2
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/kw;->c:J

    iget-wide v3, p1, Lcom/yandex/metrica/impl/ob/kw;->c:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    return v0

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kw;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/kw;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 6

    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kw;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 73
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/kw;->b:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/kw;->c:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReferrerInfo{installReferrer=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", referrerClickTimestampSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/kw;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", installBeginTimestampSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/kw;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
