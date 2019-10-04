.class Lcom/yandex/metrica/impl/bd;
.super Lcom/yandex/metrica/impl/bc;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ac;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/bc;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    return-void
.end method


# virtual methods
.method protected D()J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method protected E()J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method protected H()Lcom/yandex/metrica/impl/bc$c;
    .locals 9

    const/4 v0, 0x0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bd;->I()Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 43
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/bd;->m:Lcom/yandex/metrica/impl/ob/fo;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bd;->D()J

    move-result-wide v3

    sget-object v5, Lcom/yandex/metrica/impl/ob/en;->b:Lcom/yandex/metrica/impl/ob/en;

    invoke-virtual {v2, v3, v4, v5}, Lcom/yandex/metrica/impl/ob/fo;->a(JLcom/yandex/metrica/impl/ob/en;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 46
    iget-object v3, p0, Lcom/yandex/metrica/impl/bd;->m:Lcom/yandex/metrica/impl/ob/fo;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bd;->D()J

    move-result-wide v4

    sget-object v6, Lcom/yandex/metrica/impl/ob/en;->b:Lcom/yandex/metrica/impl/ob/en;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lcom/yandex/metrica/impl/ob/fo;->a(JLcom/yandex/metrica/impl/ob/en;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object v1, v0

    .line 52
    :goto_0
    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/Cursor;)V

    .line 53
    invoke-static {v0}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/Cursor;)V

    .line 54
    throw v2

    :catch_0
    move-object v1, v0

    .line 52
    :catch_1
    :cond_1
    :goto_1
    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/Cursor;)V

    .line 53
    invoke-static {v0}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/Cursor;)V

    .line 56
    invoke-super {p0}, Lcom/yandex/metrica/impl/bc;->H()Lcom/yandex/metrica/impl/bc$c;

    move-result-object v0

    return-object v0
.end method

.method protected I()Landroid/database/Cursor;
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->m:Lcom/yandex/metrica/impl/ob/fo;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bd;->D()J

    move-result-wide v1

    iget-object v3, p0, Lcom/yandex/metrica/impl/bd;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/fo;->a(JLjava/util/Map;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected a(JLcom/yandex/metrica/impl/ob/en;)Landroid/database/Cursor;
    .locals 2

    .line 66
    iget-object p1, p0, Lcom/yandex/metrica/impl/bd;->m:Lcom/yandex/metrica/impl/ob/fo;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bd;->D()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p3}, Lcom/yandex/metrica/impl/ob/fo;->a(JLcom/yandex/metrica/impl/ob/en;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method protected a(JLcom/yandex/metrica/impl/ob/ka$c$e$b;)Lcom/yandex/metrica/impl/bc$b;
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bd;->E()J

    move-result-wide p1

    invoke-super {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/bc;->a(JLcom/yandex/metrica/impl/ob/ka$c$e$b;)Lcom/yandex/metrica/impl/bc$b;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/yandex/metrica/impl/bc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bd;->D()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
