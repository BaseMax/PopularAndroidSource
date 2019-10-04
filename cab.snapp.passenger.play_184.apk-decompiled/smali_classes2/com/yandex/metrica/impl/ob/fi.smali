.class public Lcom/yandex/metrica/impl/ob/fi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/Long;

.field public final d:Ljava/lang/Float;

.field public final e:Ljava/lang/Integer;

.field public final f:Ljava/lang/Integer;

.field public final g:Ljava/lang/Long;

.field public final h:Ljava/lang/Integer;

.field public final i:Z


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "sputi"

    .line 37
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/fj;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const/4 v0, 0x1

    const-string v1, "spudi"

    .line 1033
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1034
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v0, v3, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    const-string v0, "sbs"

    .line 39
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/fj;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string v0, "mbs"

    .line 40
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/fj;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v0, "maff"

    .line 41
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/fj;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    const-string v0, "mrtsl"

    .line 42
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/fj;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const/4 v0, 0x0

    const-string v1, "ce"

    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move-object v1, p0

    .line 36
    invoke-direct/range {v1 .. v8}, Lcom/yandex/metrica/impl/ob/fi;-><init>(Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Z)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fi;->c:Ljava/lang/Long;

    .line 91
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/fi;->d:Ljava/lang/Float;

    .line 92
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/fi;->e:Ljava/lang/Integer;

    .line 93
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/fi;->f:Ljava/lang/Integer;

    .line 94
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/fi;->g:Ljava/lang/Long;

    .line 95
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/fi;->h:Ljava/lang/Integer;

    .line 96
    iput-boolean p7, p0, Lcom/yandex/metrica/impl/ob/fi;->i:Z

    return-void
.end method

.method constructor <init>(Lorg/a/c;)V
    .locals 9

    const-string v0, "sputi"

    .line 49
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/fj;->a(Lorg/a/c;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v0, "spudi"

    const-wide/high16 v3, 0x36a0000000000000L    # 1.401298464324817E-45

    .line 1039
    invoke-virtual {p1, v0, v3, v4}, Lorg/a/c;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1040
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    move-object v3, v0

    const-string v0, "sbs"

    .line 51
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/fj;->b(Lorg/a/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string v0, "mbs"

    .line 52
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/fj;->b(Lorg/a/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v0, "maff"

    .line 53
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/fj;->a(Lorg/a/c;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    const-string v0, "mrtsl"

    .line 54
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/fj;->b(Lorg/a/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const/4 v0, 0x0

    const-string v1, "ce"

    .line 55
    invoke-virtual {p1, v1, v0}, Lorg/a/c;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move-object v1, p0

    .line 48
    invoke-direct/range {v1 .. v8}, Lcom/yandex/metrica/impl/ob/fi;-><init>(Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    return-void
.end method


# virtual methods
.method public a()Lorg/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/a/c;

    invoke-direct {v0}, Lorg/a/c;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fi;->c:Ljava/lang/Long;

    const-string v2, "sputi"

    invoke-virtual {v0, v2, v1}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 63
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fi;->d:Ljava/lang/Float;

    const-string v2, "spudi"

    invoke-virtual {v0, v2, v1}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 64
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fi;->e:Ljava/lang/Integer;

    const-string v2, "sbs"

    invoke-virtual {v0, v2, v1}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 65
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fi;->f:Ljava/lang/Integer;

    const-string v2, "mbs"

    invoke-virtual {v0, v2, v1}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 66
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fi;->g:Ljava/lang/Long;

    const-string v2, "maff"

    invoke-virtual {v0, v2, v1}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 67
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fi;->h:Ljava/lang/Integer;

    const-string v2, "mrtsl"

    invoke-virtual {v0, v2, v1}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 68
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/fi;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ce"

    invoke-virtual {v0, v2, v1}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ForegroundLocationConfig{updateTimeInterval="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fi;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updateDistanceInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fi;->d:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sendBatchSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fi;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxBatchSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fi;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxAgeToForceFlush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fi;->g:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxRecordsToStoreLocally="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fi;->h:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", collectionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/fi;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
