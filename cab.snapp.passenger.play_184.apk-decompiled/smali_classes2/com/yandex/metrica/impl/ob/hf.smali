.class public Lcom/yandex/metrica/impl/ob/hf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/hb;

.field private final b:Lcom/yandex/metrica/impl/ob/hh;

.field private final c:J

.field private final d:Z

.field private final e:J


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/hb;Lcom/yandex/metrica/impl/ob/hh;J)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hf;->a:Lcom/yandex/metrica/impl/ob/hb;

    .line 60
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/hf;->b:Lcom/yandex/metrica/impl/ob/hh;

    .line 61
    iput-wide p3, p0, Lcom/yandex/metrica/impl/ob/hf;->c:J

    .line 62
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/hf;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/hf;->d:Z

    const-wide/16 p1, -0x1

    .line 63
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/hf;->e:J

    return-void
.end method

.method public constructor <init>(Lorg/a/c;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/ob/hb;

    const/4 v1, 0x0

    const-string v2, "device_id"

    .line 43
    invoke-virtual {p1, v2, v1}, Lorg/a/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_id_hash"

    .line 44
    invoke-virtual {p1, v3, v1}, Lorg/a/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/hb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->a:Lcom/yandex/metrica/impl/ob/hb;

    const-string v0, "device_snapshot_key"

    .line 46
    invoke-virtual {p1, v0}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    new-instance v2, Lcom/yandex/metrica/impl/ob/hh;

    invoke-virtual {p1, v0, v1}, Lorg/a/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/hh;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/hf;->b:Lcom/yandex/metrica/impl/ob/hh;

    goto :goto_0

    .line 49
    :cond_0
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->b:Lcom/yandex/metrica/impl/ob/hh;

    :goto_0
    const-wide/16 v0, -0x1

    const-string v2, "last_elections_time"

    .line 51
    invoke-virtual {p1, v2, v0, v1}, Lorg/a/c;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/hf;->c:J

    .line 52
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/hf;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/hf;->d:Z

    .line 53
    iput-wide p2, p0, Lcom/yandex/metrica/impl/ob/hf;->e:J

    return-void
.end method

.method private f()Z
    .locals 6

    .line 101
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/hf;->c:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/yandex/metrica/impl/ob/hf;->c:J

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x240c8400

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 67
    new-instance v0, Lorg/a/c;

    invoke-direct {v0}, Lorg/a/c;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->a:Lcom/yandex/metrica/impl/ob/hb;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 69
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->a:Lcom/yandex/metrica/impl/ob/hb;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/hb;->b:Ljava/lang/String;

    const-string v2, "device_id_hash"

    invoke-virtual {v0, v2, v1}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 70
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->b:Lcom/yandex/metrica/impl/ob/hh;

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hh;->a()Lorg/a/c;

    move-result-object v1

    const-string v2, "device_snapshot_key"

    invoke-virtual {v0, v2, v1}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 73
    :cond_0
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/hf;->c:J

    const-string v3, "last_elections_time"

    invoke-virtual {v0, v3, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;J)Lorg/a/c;

    .line 74
    invoke-virtual {v0}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    check-cast p1, Lcom/yandex/metrica/impl/ob/hf;

    .line 114
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/hf;->d:Z

    iget-boolean v3, p1, Lcom/yandex/metrica/impl/ob/hf;->d:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 115
    :cond_2
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/hf;->a:Lcom/yandex/metrica/impl/ob/hb;

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/hf;->a:Lcom/yandex/metrica/impl/ob/hb;

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/hb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 116
    :cond_3
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/hf;->b:Lcom/yandex/metrica/impl/ob/hh;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/hf;->b:Lcom/yandex/metrica/impl/ob/hh;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/hh;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    if-nez p1, :cond_5

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public b()Z
    .locals 6

    .line 78
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/hf;->e:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 79
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 80
    iget-wide v3, p0, Lcom/yandex/metrica/impl/ob/hf;->e:J

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v3, 0x7b2

    if-ne v0, v3, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public c()Lcom/yandex/metrica/impl/ob/hb;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->a:Lcom/yandex/metrica/impl/ob/hb;

    return-object v0
.end method

.method public d()Lcom/yandex/metrica/impl/ob/hh;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->b:Lcom/yandex/metrica/impl/ob/hh;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/hf;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Credentials{mIdentifiers="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->a:Lcom/yandex/metrica/impl/ob/hb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceSnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->b:Lcom/yandex/metrica/impl/ob/hh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLastElectionsTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/hf;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hf;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/hf;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
