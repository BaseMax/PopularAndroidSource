.class Lcom/yandex/metrica/impl/ob/lt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/lb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/lt;-><init>(Lcom/yandex/metrica/impl/ob/lf$b;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/lb$a<",
        "Lcom/yandex/metrica/impl/ob/lf$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/lf$a;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/lf$a;
    .locals 17

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    .line 1212
    new-instance v8, Lcom/yandex/metrica/impl/ob/lf$a;

    .line 1213
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/metrica/impl/ob/t;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->e()Ljava/lang/String;

    move-result-object v1

    .line 1214
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/metrica/impl/ob/t;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->h()Ljava/lang/String;

    move-result-object v2

    .line 1215
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/metrica/impl/ob/t;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->i()Ljava/lang/String;

    move-result-object v3

    .line 1216
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/u;->d()Ljava/lang/String;

    move-result-object v4

    .line 1217
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/u;->c()Ljava/util/Map;

    move-result-object v5

    .line 1218
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/u;->a()Z

    move-result v6

    .line 1219
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/u;->b()Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/yandex/metrica/impl/ob/lf$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/util/List;)V

    return-object v8

    .line 1179
    :cond_0
    new-instance v1, Lcom/yandex/metrica/impl/ob/lf$a;

    .line 1181
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/metrica/impl/ob/t;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/lf$a;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v3

    .line 1180
    :cond_1
    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    .line 1183
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/metrica/impl/ob/t;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/lf$a;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v3

    .line 1182
    :cond_2
    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    .line 1185
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/metrica/impl/ob/t;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/lf$a;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    move-object v2, v3

    .line 1184
    :cond_3
    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    .line 1187
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/u;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/lf$a;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    move-object v2, v3

    .line 1186
    :cond_4
    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    .line 1190
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/u;->c()Ljava/util/Map;

    move-result-object v2

    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/lf$a;->e:Ljava/util/Map;

    if-nez v2, :cond_5

    move-object v2, v3

    .line 1189
    :cond_5
    move-object v14, v2

    check-cast v14, Ljava/util/Map;

    .line 6199
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/u;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6200
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/u;->a()Z

    move-result v2

    goto :goto_0

    :cond_6
    iget-boolean v2, v0, Lcom/yandex/metrica/impl/ob/lf$a;->f:Z

    :goto_0
    move v15, v2

    .line 6206
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/u;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 6207
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/u;->b()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_7
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/lf$a;->g:Ljava/util/List;

    :goto_1
    move-object/from16 v16, v0

    move-object v9, v1

    .line 1192
    invoke-direct/range {v9 .. v16}, Lcom/yandex/metrica/impl/ob/lf$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/util/List;)V

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/t;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Lcom/yandex/metrica/impl/ob/lf$a;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/lt$1;->a(Lcom/yandex/metrica/impl/ob/lf$a;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/lf$a;

    move-result-object p1

    return-object p1
.end method
