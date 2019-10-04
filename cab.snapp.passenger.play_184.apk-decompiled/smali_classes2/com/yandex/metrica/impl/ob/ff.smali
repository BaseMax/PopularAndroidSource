.class public Lcom/yandex/metrica/impl/ob/ff;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/metrica/impl/ob/fi;

.field public final b:Lcom/yandex/metrica/impl/ob/fe;

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "package_name"

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clte"

    .line 35
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "flcc"

    .line 36
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_0

    .line 1077
    :cond_0
    new-instance v4, Lcom/yandex/metrica/impl/ob/fi;

    invoke-direct {v4, v2}, Lcom/yandex/metrica/impl/ob/fi;-><init>(Landroid/os/Bundle;)V

    :goto_0
    const-string v2, "blcc"

    .line 38
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 1082
    :cond_1
    new-instance v3, Lcom/yandex/metrica/impl/ob/fe;

    invoke-direct {v3, p1}, Lcom/yandex/metrica/impl/ob/fe;-><init>(Landroid/os/Bundle;)V

    .line 33
    :goto_1
    invoke-direct {p0, v0, v1, v4, v3}, Lcom/yandex/metrica/impl/ob/ff;-><init>(Ljava/lang/String;ZLcom/yandex/metrica/impl/ob/fi;Lcom/yandex/metrica/impl/ob/fe;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/yandex/metrica/impl/ob/fi;Lcom/yandex/metrica/impl/ob/fe;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ff;->c:Ljava/lang/String;

    .line 119
    iput-boolean p2, p0, Lcom/yandex/metrica/impl/ob/ff;->d:Z

    .line 120
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ff;->a:Lcom/yandex/metrica/impl/ob/fi;

    .line 121
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ff;->b:Lcom/yandex/metrica/impl/ob/fe;

    return-void
.end method

.method public constructor <init>(Lorg/a/c;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "package_name"

    .line 45
    invoke-virtual {p1, v1, v0}, Lorg/a/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clte"

    const/4 v3, 0x1

    .line 46
    invoke-virtual {p1, v2, v3}, Lorg/a/c;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "flcc"

    .line 47
    invoke-virtual {p1, v3}, Lorg/a/c;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1089
    new-instance v4, Lcom/yandex/metrica/impl/ob/fi;

    invoke-direct {v4, v3}, Lcom/yandex/metrica/impl/ob/fi;-><init>(Lorg/a/c;)V

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    const-string v3, "blcc"

    .line 49
    invoke-virtual {p1, v3}, Lorg/a/c;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1098
    new-instance v0, Lcom/yandex/metrica/impl/ob/fe;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/fe;-><init>(Lorg/a/c;)V

    .line 44
    :cond_1
    invoke-direct {p0, v1, v2, v4, v0}, Lcom/yandex/metrica/impl/ob/ff;-><init>(Ljava/lang/String;ZLcom/yandex/metrica/impl/ob/fi;Lcom/yandex/metrica/impl/ob/fe;)V

    return-void
.end method


# virtual methods
.method public a()Lorg/a/c;
    .locals 3

    .line 56
    new-instance v0, Lorg/a/c;

    invoke-direct {v0}, Lorg/a/c;-><init>()V

    :try_start_0
    const-string v1, "package_name"

    .line 58
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ff;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "clte"

    .line 59
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/ff;->d:Z

    .line 60
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 61
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ff;->b:Lcom/yandex/metrica/impl/ob/fe;

    if-eqz v1, :cond_0

    const-string v1, "blcc"

    .line 62
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ff;->b:Lcom/yandex/metrica/impl/ob/fe;

    .line 63
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/fe;->a()Lorg/a/c;

    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ff;->a:Lcom/yandex/metrica/impl/ob/fi;

    if-eqz v1, :cond_1

    const-string v1, "flcc"

    .line 66
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ff;->a:Lcom/yandex/metrica/impl/ob/fi;

    .line 67
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/fi;->a()Lorg/a/c;

    move-result-object v2

    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientConfig{foregroundConfig="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ff;->a:Lcom/yandex/metrica/impl/ob/fi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ff;->b:Lcom/yandex/metrica/impl/ob/fe;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ff;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mLocationTrackingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/ff;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
