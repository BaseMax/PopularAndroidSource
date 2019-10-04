.class Lcom/yandex/metrica/impl/ob/eo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/yandex/metrica/impl/ob/hq;)Landroid/os/Bundle;
    .locals 4

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/hq;->c:J

    const-string v3, "sputi"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 48
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hq;->d:F

    const-string v2, "spudi"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 49
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hq;->e:I

    const-string v2, "sbs"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hq;->f:I

    const-string v2, "mbs"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/hq;->g:J

    const-string v3, "maff"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 52
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hq;->h:I

    const-string v2, "mrtsl"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    iget-boolean p0, p0, Lcom/yandex/metrica/impl/ob/hq;->i:Z

    const-string v1, "ce"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method a(Landroid/os/Bundle;Ljava/lang/String;ZLcom/yandex/metrica/impl/ob/ma;)V
    .locals 2

    const-string v0, "package_name"

    .line 23
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "clte"

    .line 24
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    iget-object p2, p4, Lcom/yandex/metrica/impl/ob/ma;->n:Lcom/yandex/metrica/impl/ob/hq;

    if-eqz p2, :cond_0

    .line 26
    iget-object p2, p4, Lcom/yandex/metrica/impl/ob/ma;->n:Lcom/yandex/metrica/impl/ob/hq;

    .line 27
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/eo;->a(Lcom/yandex/metrica/impl/ob/hq;)Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "flcc"

    .line 26
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 29
    :cond_0
    iget-object p2, p4, Lcom/yandex/metrica/impl/ob/ma;->o:Lcom/yandex/metrica/impl/ob/hl;

    if-eqz p2, :cond_1

    .line 30
    iget-object p2, p4, Lcom/yandex/metrica/impl/ob/ma;->o:Lcom/yandex/metrica/impl/ob/hl;

    .line 1037
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/eo;->a(Lcom/yandex/metrica/impl/ob/hq;)Landroid/os/Bundle;

    move-result-object p3

    .line 1038
    iget-wide v0, p2, Lcom/yandex/metrica/impl/ob/hl;->a:J

    const-string p4, "cd"

    invoke-virtual {p3, p4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1039
    iget-wide v0, p2, Lcom/yandex/metrica/impl/ob/hl;->b:J

    const-string p2, "ci"

    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "blcc"

    .line 30
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method
