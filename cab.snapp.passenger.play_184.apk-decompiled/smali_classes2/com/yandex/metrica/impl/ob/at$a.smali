.class public abstract Lcom/yandex/metrica/impl/ob/at$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/lb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/lb$a<",
        "Lcom/yandex/metrica/impl/ob/le$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/bs;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/bs;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/at$a;->a:Lcom/yandex/metrica/impl/bs;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/le$a;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/le$a;
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 59
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/metrica/impl/ob/t;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v2

    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/at$a;->a:Lcom/yandex/metrica/impl/bs;

    .line 60
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/metrica/impl/ob/t;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/yandex/metrica/impl/ob/at$a;->a(Lcom/yandex/metrica/impl/bs;Lcom/yandex/metrica/CounterConfiguration;)Z

    move-result v3

    if-nez v1, :cond_0

    .line 1382
    new-instance v1, Lcom/yandex/metrica/impl/ob/le$a;

    .line 1383
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->e()Ljava/lang/String;

    move-result-object v5

    .line 1384
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->h()Ljava/lang/String;

    move-result-object v6

    .line 1385
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->i()Ljava/lang/String;

    move-result-object v7

    .line 1386
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->f()Ljava/lang/String;

    move-result-object v8

    .line 1387
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->g()Ljava/lang/Boolean;

    move-result-object v9

    .line 1388
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->l()Landroid/location/Location;

    move-result-object v10

    .line 1389
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->n()Ljava/lang/Boolean;

    move-result-object v11

    .line 1390
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->m()Ljava/lang/Boolean;

    move-result-object v12

    .line 1391
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->j()Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v13

    .line 1392
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->d()Ljava/lang/Integer;

    move-result-object v14

    .line 1393
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->c()Ljava/lang/Integer;

    move-result-object v15

    .line 1394
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->b()Ljava/lang/Integer;

    move-result-object v16

    .line 1395
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->k()Ljava/lang/Boolean;

    move-result-object v17

    .line 1396
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object v4, v1

    invoke-direct/range {v4 .. v18}, Lcom/yandex/metrica/impl/ob/le$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/location/Location;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/yandex/metrica/CounterConfiguration$a;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v1

    .line 1352
    :cond_0
    new-instance v4, Lcom/yandex/metrica/impl/ob/le$a;

    .line 1353
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/yandex/metrica/impl/ob/le$a;->b:Ljava/lang/String;

    if-nez v5, :cond_1

    move-object v5, v6

    :cond_1
    move-object/from16 v20, v5

    check-cast v20, Ljava/lang/String;

    .line 1354
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->h()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/yandex/metrica/impl/ob/le$a;->c:Ljava/lang/String;

    if-nez v5, :cond_2

    move-object v5, v6

    :cond_2
    move-object/from16 v21, v5

    check-cast v21, Ljava/lang/String;

    .line 1356
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->i()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/yandex/metrica/impl/ob/le$a;->d:Ljava/lang/String;

    if-nez v5, :cond_3

    move-object v5, v6

    .line 1355
    :cond_3
    move-object/from16 v22, v5

    check-cast v22, Ljava/lang/String;

    .line 1357
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->f()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/yandex/metrica/impl/ob/le$a;->a:Ljava/lang/String;

    if-nez v5, :cond_4

    move-object v5, v6

    :cond_4
    move-object/from16 v23, v5

    check-cast v23, Ljava/lang/String;

    .line 1359
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->g()Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, v1, Lcom/yandex/metrica/impl/ob/le$a;->e:Ljava/lang/Boolean;

    if-nez v5, :cond_5

    move-object v5, v6

    .line 1358
    :cond_5
    move-object/from16 v24, v5

    check-cast v24, Ljava/lang/Boolean;

    .line 1361
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->l()Landroid/location/Location;

    move-result-object v5

    iget-object v6, v1, Lcom/yandex/metrica/impl/ob/le$a;->f:Landroid/location/Location;

    if-nez v5, :cond_6

    move-object v5, v6

    .line 1360
    :cond_6
    move-object/from16 v25, v5

    check-cast v25, Landroid/location/Location;

    .line 1363
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->n()Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, v1, Lcom/yandex/metrica/impl/ob/le$a;->g:Ljava/lang/Boolean;

    if-nez v5, :cond_7

    move-object v5, v6

    .line 1362
    :cond_7
    move-object/from16 v26, v5

    check-cast v26, Ljava/lang/Boolean;

    .line 1365
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->m()Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, v1, Lcom/yandex/metrica/impl/ob/le$a;->h:Ljava/lang/Boolean;

    if-nez v5, :cond_8

    move-object v5, v6

    .line 1364
    :cond_8
    move-object/from16 v27, v5

    check-cast v27, Ljava/lang/Boolean;

    .line 1367
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->j()Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v28

    .line 1369
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->d()Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v1, Lcom/yandex/metrica/impl/ob/le$a;->i:Ljava/lang/Integer;

    if-nez v5, :cond_9

    move-object v5, v6

    .line 1368
    :cond_9
    move-object/from16 v29, v5

    check-cast v29, Ljava/lang/Integer;

    .line 1371
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->c()Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v1, Lcom/yandex/metrica/impl/ob/le$a;->j:Ljava/lang/Integer;

    if-nez v5, :cond_a

    move-object v5, v6

    .line 1370
    :cond_a
    move-object/from16 v30, v5

    check-cast v30, Ljava/lang/Integer;

    .line 1373
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->b()Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v1, Lcom/yandex/metrica/impl/ob/le$a;->k:Ljava/lang/Integer;

    if-nez v5, :cond_b

    move-object v5, v6

    .line 1372
    :cond_b
    move-object/from16 v31, v5

    check-cast v31, Ljava/lang/Integer;

    .line 1374
    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->k()Ljava/lang/Boolean;

    move-result-object v2

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/le$a;->l:Ljava/lang/Boolean;

    if-nez v2, :cond_c

    goto :goto_0

    :cond_c
    move-object v1, v2

    :goto_0
    move-object/from16 v32, v1

    check-cast v32, Ljava/lang/Boolean;

    .line 1375
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    move-object/from16 v19, v4

    invoke-direct/range {v19 .. v33}, Lcom/yandex/metrica/impl/ob/le$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/location/Location;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/yandex/metrica/CounterConfiguration$a;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v4
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/t;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lcom/yandex/metrica/impl/ob/le$a;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/at$a;->a(Lcom/yandex/metrica/impl/ob/le$a;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/le$a;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/yandex/metrica/impl/bs;Lcom/yandex/metrica/CounterConfiguration;)Z
    .locals 0

    .line 67
    invoke-virtual {p2}, Lcom/yandex/metrica/CounterConfiguration;->o()Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    .line 66
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Boolean;Z)Z

    move-result p1

    return p1
.end method
