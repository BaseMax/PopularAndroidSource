.class Lcom/yandex/metrica/impl/bc;
.super Lcom/yandex/metrica/impl/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/bc$a;,
        Lcom/yandex/metrica/impl/bc$b;,
        Lcom/yandex/metrica/impl/bc$c;
    }
.end annotation


# instance fields
.field l:Lcom/yandex/metrica/impl/ob/ka$c;

.field m:Lcom/yandex/metrica/impl/ob/fo;

.field n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field o:I

.field p:I

.field private final q:Lcom/yandex/metrica/impl/ob/ac;

.field private r:Lcom/yandex/metrica/impl/bc$c;

.field private final s:Lcom/yandex/metrica/impl/ob/os;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/os<",
            "[B>;"
        }
    .end annotation
.end field

.field private final t:Lcom/yandex/metrica/impl/ob/nk;

.field private u:Lcom/yandex/metrica/impl/ob/le;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ac;)V
    .locals 2

    .line 84
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ac;->l()Lcom/yandex/metrica/impl/ob/fo;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ac;->k()Lcom/yandex/metrica/impl/ob/le;

    move-result-object v1

    .line 82
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/bc;-><init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/fo;Lcom/yandex/metrica/impl/ob/le;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/fo;Lcom/yandex/metrica/impl/ob/le;)V
    .locals 3

    .line 97
    invoke-direct {p0}, Lcom/yandex/metrica/impl/m;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/yandex/metrica/impl/bc;->o:I

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/yandex/metrica/impl/bc;->p:I

    .line 76
    new-instance v0, Lcom/yandex/metrica/impl/ob/oj;

    const v1, 0x3c000

    const-string v2, "event value in ReportTask"

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/oj;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bc;->s:Lcom/yandex/metrica/impl/ob/os;

    .line 98
    iput-object p1, p0, Lcom/yandex/metrica/impl/bc;->q:Lcom/yandex/metrica/impl/ob/ac;

    .line 99
    iput-object p2, p0, Lcom/yandex/metrica/impl/bc;->m:Lcom/yandex/metrica/impl/ob/fo;

    .line 100
    iput-object p3, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    .line 101
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ac;->n()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/bc;->t:Lcom/yandex/metrica/impl/ob/nk;

    return-void
.end method

.method public static J()Lcom/yandex/metrica/impl/bc$a;
    .locals 1

    .line 594
    new-instance v0, Lcom/yandex/metrica/impl/bc$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/bc$a;-><init>()V

    return-object v0
.end method

.method private static a(Lcom/yandex/metrica/impl/b$a;)I
    .locals 6

    const/4 v0, 0x0

    .line 434
    :try_start_0
    new-instance v1, Lorg/a/c;

    iget-object p0, p0, Lcom/yandex/metrica/impl/b$a;->a:Ljava/lang/String;

    invoke-direct {v1, p0}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-static {v1}, Lcom/yandex/metrica/impl/bc;->a(Lorg/a/c;)[Lcom/yandex/metrica/impl/ob/ka$c$a;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 437
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, p0, v2

    const/4 v5, 0x7

    .line 438
    invoke-static {v5, v4}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v4
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :catch_0
    :cond_1
    return v0
.end method

.method private static a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 306
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    return-void
.end method

.method private static a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 301
    invoke-static {p2, p3}, Lcom/yandex/metrica/impl/bt;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 302
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void
.end method

.method private static a(Lorg/a/c;)[Lcom/yandex/metrica/impl/ob/ka$c$a;
    .locals 5

    .line 212
    invoke-virtual {p0}, Lorg/a/c;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 214
    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ka$c$a;

    .line 216
    invoke-virtual {p0}, Lorg/a/c;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 218
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 221
    :try_start_0
    new-instance v4, Lcom/yandex/metrica/impl/ob/ka$c$a;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/ka$c$a;-><init>()V

    .line 223
    iput-object v3, v4, Lcom/yandex/metrica/impl/ob/ka$c$a;->b:Ljava/lang/String;

    .line 224
    invoke-virtual {p0, v3}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/yandex/metrica/impl/ob/ka$c$a;->c:Ljava/lang/String;

    .line 225
    aput-object v4, v0, v2
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected C()V
    .locals 8

    .line 313
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->l:Lcom/yandex/metrica/impl/ob/ka$c;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ka$c;->b:[Lcom/yandex/metrica/impl/ob/ka$c$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 315
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 316
    aget-object v3, v0, v2

    .line 317
    iget-object v4, p0, Lcom/yandex/metrica/impl/bc;->n:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 318
    iget-object v6, v3, Lcom/yandex/metrica/impl/ob/ka$c$e;->c:Lcom/yandex/metrica/impl/ob/ka$c$e$b;

    iget v6, v6, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->d:I

    invoke-static {v6}, Lcom/yandex/metrica/impl/ay;->a(I)Lcom/yandex/metrica/impl/ob/en;

    move-result-object v6

    .line 320
    iget-object v7, p0, Lcom/yandex/metrica/impl/bc;->m:Lcom/yandex/metrica/impl/ob/fo;

    invoke-virtual {v6}, Lcom/yandex/metrica/impl/ob/en;->a()I

    move-result v6

    iget-object v3, v3, Lcom/yandex/metrica/impl/ob/ka$c$e;->d:[Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    array-length v3, v3

    invoke-virtual {v7, v4, v5, v6, v3}, Lcom/yandex/metrica/impl/ob/fo;->a(JII)V

    .line 321
    invoke-static {}, Lcom/yandex/metrica/impl/ay;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->q:Lcom/yandex/metrica/impl/ob/ac;

    .line 325
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->f()Lcom/yandex/metrica/impl/ob/ej;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ej;->a()Lcom/yandex/metrica/impl/ob/ee;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v0, v1, [J

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [J

    .line 329
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ee;->c()J

    move-result-wide v3

    aput-wide v3, v2, v1

    move-object v0, v2

    .line 330
    :goto_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/bc;->m:Lcom/yandex/metrica/impl/ob/fo;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/fo;->a([J)I

    return-void
.end method

.method G()[Lcom/yandex/metrica/impl/ob/ka$c$c;
    .locals 5

    .line 201
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->q:Lcom/yandex/metrica/impl/ob/ac;

    .line 202
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ay;->a(Landroid/content/Context;)[Lcom/yandex/metrica/impl/ob/ka$c$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 205
    iget v4, p0, Lcom/yandex/metrica/impl/bc;->o:I

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/b;->b(Lcom/yandex/metrica/impl/ob/e;)I

    move-result v3

    add-int/2addr v4, v3

    iput v4, p0, Lcom/yandex/metrica/impl/bc;->o:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected H()Lcom/yandex/metrica/impl/bc$c;
    .locals 12

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 362
    new-instance v2, Lorg/a/c;

    invoke-direct {v2}, Lorg/a/c;-><init>()V

    const/4 v3, 0x0

    .line 366
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bc;->I()Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 368
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 369
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 370
    invoke-static {v4, v5}, Lcom/yandex/metrica/impl/ob/nc;->a(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    const-string v6, "id"

    .line 371
    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v8, "type"

    .line 373
    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lcom/yandex/metrica/impl/ob/en;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/en;

    move-result-object v8

    .line 376
    invoke-virtual {p0, v6, v7}, Lcom/yandex/metrica/impl/bc;->a(J)Z

    move-result v9

    if-nez v9, :cond_0

    .line 381
    invoke-static {v5}, Lcom/yandex/metrica/impl/ay;->a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/ob/ka$c$g;

    move-result-object v5

    .line 382
    invoke-static {v8}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/ob/en;)I

    move-result v8

    .line 385
    iget-object v9, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    .line 386
    invoke-virtual {v9}, Lcom/yandex/metrica/impl/ob/le;->y()Ljava/lang/String;

    move-result-object v9

    .line 385
    invoke-static {v9, v8, v5}, Lcom/yandex/metrica/impl/ay;->a(Ljava/lang/String;ILcom/yandex/metrica/impl/ob/ka$c$g;)Lcom/yandex/metrica/impl/ob/ka$c$e$b;

    move-result-object v5

    .line 390
    iget v8, p0, Lcom/yandex/metrica/impl/bc;->o:I

    const/4 v9, 0x1

    const-wide v10, 0x7fffffffffffffffL

    invoke-static {v9, v10, v11}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/yandex/metrica/impl/bc;->o:I

    .line 391
    iget v8, p0, Lcom/yandex/metrica/impl/bc;->o:I

    const/4 v9, 0x2

    invoke-static {v9, v5}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/yandex/metrica/impl/bc;->o:I

    .line 393
    iget v8, p0, Lcom/yandex/metrica/impl/bc;->o:I

    const v9, 0x3d400

    if-ge v8, v9, :cond_2

    .line 397
    invoke-virtual {p0, v6, v7, v5}, Lcom/yandex/metrica/impl/bc;->a(JLcom/yandex/metrica/impl/ob/ka$c$e$b;)Lcom/yandex/metrica/impl/bc$b;

    move-result-object v5

    if-eqz v5, :cond_0

    if-nez v3, :cond_1

    .line 400
    iget-object v3, v5, Lcom/yandex/metrica/impl/bc$b;->b:Lcom/yandex/metrica/impl/b$a;

    goto :goto_1

    .line 401
    :cond_1
    iget-object v8, v5, Lcom/yandex/metrica/impl/bc$b;->b:Lcom/yandex/metrica/impl/b$a;

    invoke-virtual {v3, v8}, Lcom/yandex/metrica/impl/b$a;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 404
    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v6, v5, Lcom/yandex/metrica/impl/bc$b;->a:Lcom/yandex/metrica/impl/ob/ka$c$e;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    :try_start_2
    new-instance v6, Lorg/a/c;

    iget-object v7, v5, Lcom/yandex/metrica/impl/bc$b;->b:Lcom/yandex/metrica/impl/b$a;

    iget-object v7, v7, Lcom/yandex/metrica/impl/b$a;->a:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/a/c;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/a/b; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v6

    .line 411
    :catch_0
    :try_start_3
    iget-boolean v5, v5, Lcom/yandex/metrica/impl/bc$b;->c:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v4, v3

    .line 419
    :goto_2
    invoke-static {v4}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/Cursor;)V

    .line 420
    throw v0

    :catch_1
    move-object v4, v3

    .line 419
    :catch_2
    :cond_2
    invoke-static {v4}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/Cursor;)V

    .line 422
    new-instance v3, Lcom/yandex/metrica/impl/bc$c;

    invoke-direct {v3, v0, v1, v2}, Lcom/yandex/metrica/impl/bc$c;-><init>(Ljava/util/List;Ljava/util/List;Lorg/a/c;)V

    return-object v3
.end method

.method protected I()Landroid/database/Cursor;
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->m:Lcom/yandex/metrica/impl/ob/fo;

    iget-object v1, p0, Lcom/yandex/metrica/impl/bc;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/fo;->a(Ljava/util/Map;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected a(JLcom/yandex/metrica/impl/ob/en;)Landroid/database/Cursor;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->m:Lcom/yandex/metrica/impl/ob/fo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/fo;->a(JLcom/yandex/metrica/impl/ob/en;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method protected a(JLcom/yandex/metrica/impl/ob/ka$c$e$b;)Lcom/yandex/metrica/impl/bc$b;
    .locals 9

    .line 449
    new-instance v0, Lcom/yandex/metrica/impl/ob/ka$c$e;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ka$c$e;-><init>()V

    .line 450
    iput-wide p1, v0, Lcom/yandex/metrica/impl/ob/ka$c$e;->b:J

    .line 451
    iput-object p3, v0, Lcom/yandex/metrica/impl/ob/ka$c$e;->c:Lcom/yandex/metrica/impl/ob/ka$c$e$b;

    .line 453
    iget p3, p3, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->d:I

    invoke-static {p3}, Lcom/yandex/metrica/impl/ay;->a(I)Lcom/yandex/metrica/impl/ob/en;

    move-result-object p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 458
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/bc;->a(JLcom/yandex/metrica/impl/ob/en;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 460
    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p3, v1

    .line 462
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 463
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 464
    invoke-static {p1, v3}, Lcom/yandex/metrica/impl/ob/nc;->a(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    const-string v4, "type"

    .line 2517
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 2519
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v5}, Lcom/yandex/metrica/impl/ob/le;->I()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/yandex/metrica/impl/ay$c;->a(IZ)Lcom/yandex/metrica/impl/ay$c;

    move-result-object v4

    const-string v5, "custom_type"

    .line 2520
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ay$c;->b(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ay$c;

    move-result-object v4

    const-string v5, "name"

    .line 2521
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ay$c;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ay$c;

    move-result-object v4

    const-string v5, "value"

    .line 2522
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ay$c;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ay$c;

    move-result-object v4

    const-string v5, "time"

    .line 2523
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/yandex/metrica/impl/ay$c;->a(J)Lcom/yandex/metrica/impl/ay$c;

    move-result-object v4

    const-string v5, "number"

    .line 2524
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ay$c;->a(I)Lcom/yandex/metrica/impl/ay$c;

    move-result-object v4

    const-string v5, "cell_info"

    .line 2525
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ay$c;->e(Ljava/lang/String;)Lcom/yandex/metrica/impl/ay$c;

    move-result-object v4

    const-string v5, "location_info"

    .line 2526
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ay$c;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ay$c;

    move-result-object v4

    const-string v5, "wifi_network_info"

    .line 2527
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ay$c;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/ay$c;

    move-result-object v4

    const-string v5, "error_environment"

    .line 2528
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ay$c;->g(Ljava/lang/String;)Lcom/yandex/metrica/impl/ay$c;

    move-result-object v4

    const-string v5, "user_info"

    .line 2529
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ay$c;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ay$c;

    move-result-object v4

    const-string v5, "truncated"

    .line 2530
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ay$c;->b(I)Lcom/yandex/metrica/impl/ay$c;

    move-result-object v4

    const-string v5, "connection_type"

    .line 2531
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ay$c;->c(I)Lcom/yandex/metrica/impl/ay$c;

    move-result-object v4

    const-string v5, "cellular_connection_type"

    .line 2532
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ay$c;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ay$c;

    move-result-object v4

    const-string v5, "wifi_access_point"

    .line 2533
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ay$c;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ay$c;

    move-result-object v4

    const-string v5, "profile_id"

    .line 2534
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ay$c;->j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ay$c;

    move-result-object v4

    const-string v5, "encrypting_mode"

    .line 2536
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2535
    invoke-static {v5}, Lcom/yandex/metrica/impl/ob/oe;->a(I)Lcom/yandex/metrica/impl/ob/oe;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ay$c;->a(Lcom/yandex/metrica/impl/ob/oe;)Lcom/yandex/metrica/impl/ay$c;

    move-result-object v4

    const-string v5, "first_occurrence_status"

    .line 2538
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 2537
    invoke-static {v5}, Lcom/yandex/metrica/impl/t;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/t;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ay$c;->a(Lcom/yandex/metrica/impl/t;)Lcom/yandex/metrica/impl/ay$c;

    move-result-object v4

    .line 1545
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ay$c;->c()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1546
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ay$c;->e()Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_0

    .line 3426
    new-instance v5, Lcom/yandex/metrica/impl/b$a;

    const-string v6, "app_environment"

    .line 3427
    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "app_environment_revision"

    .line 3428
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v5, v6, v7, v8}, Lcom/yandex/metrica/impl/b$a;-><init>(Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p3, :cond_3

    .line 470
    :try_start_3
    iget p3, p0, Lcom/yandex/metrica/impl/bc;->p:I

    if-gez p3, :cond_2

    .line 471
    invoke-static {v5}, Lcom/yandex/metrica/impl/bc;->a(Lcom/yandex/metrica/impl/b$a;)I

    move-result p3

    iput p3, p0, Lcom/yandex/metrica/impl/bc;->p:I

    .line 472
    iget p3, p0, Lcom/yandex/metrica/impl/bc;->o:I

    iget v3, p0, Lcom/yandex/metrica/impl/bc;->p:I

    add-int/2addr p3, v3

    iput p3, p0, Lcom/yandex/metrica/impl/bc;->o:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    move-object p3, v5

    goto :goto_2

    :catch_0
    move-object p3, v5

    goto :goto_5

    .line 474
    :cond_3
    :try_start_4
    invoke-virtual {p3, v5}, Lcom/yandex/metrica/impl/b$a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    .line 3509
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/yandex/metrica/impl/bc;->s:Lcom/yandex/metrica/impl/ob/os;

    iget-object v5, v4, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->f:[B

    invoke-interface {v3, v5}, Lcom/yandex/metrica/impl/ob/os;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 3510
    iget-object v5, v4, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->f:[B

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3511
    iput-object v3, v4, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->f:[B

    .line 3512
    iget v5, v4, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->k:I

    iget-object v6, v4, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->f:[B

    array-length v6, v6

    array-length v3, v3

    sub-int/2addr v6, v3

    add-int/2addr v5, v6

    iput v5, v4, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->k:I

    .line 481
    :cond_5
    iget v3, p0, Lcom/yandex/metrica/impl/bc;->o:I

    const/4 v5, 0x3

    invoke-static {v5, v4}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Lcom/yandex/metrica/impl/bc;->o:I

    .line 483
    iget v3, p0, Lcom/yandex/metrica/impl/bc;->o:I

    const v5, 0x3d400

    if-ge v3, v5, :cond_6

    .line 487
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 491
    :cond_6
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 492
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    iput-object p2, v0, Lcom/yandex/metrica/impl/ob/ka$c$e;->d:[Lcom/yandex/metrica/impl/ob/ka$c$e$a;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 502
    :cond_7
    invoke-static {p1}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/Cursor;)V

    return-object v1

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_1
    move-object p3, v1

    goto :goto_5

    :catchall_1
    move-exception p2

    move-object p1, v1

    :goto_4
    invoke-static {p1}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/Cursor;)V

    .line 503
    throw p2

    :catch_2
    move-object p1, v1

    move-object p3, p1

    .line 502
    :catch_3
    :goto_5
    invoke-static {p1}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/Cursor;)V

    .line 505
    new-instance p1, Lcom/yandex/metrica/impl/bc$b;

    invoke-direct {p1, v0, p3, v2}, Lcom/yandex/metrica/impl/bc$b;-><init>(Lcom/yandex/metrica/impl/ob/ka$c$e;Lcom/yandex/metrica/impl/b$a;Z)V

    return-object p1
.end method

.method a(Lcom/yandex/metrica/impl/bc$c;[Lcom/yandex/metrica/impl/ob/ka$c$c;)Lcom/yandex/metrica/impl/ob/ka$c;
    .locals 4

    .line 112
    new-instance v0, Lcom/yandex/metrica/impl/ob/ka$c;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ka$c;-><init>()V

    .line 113
    new-instance v1, Lcom/yandex/metrica/impl/ob/ka$c$d;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/ka$c$d;-><init>()V

    .line 114
    iget-object v2, p0, Lcom/yandex/metrica/impl/bc;->c:Lcom/yandex/metrica/impl/ob/ld;

    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/ld;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    .line 115
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/le;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/ka$c$d;->b:Ljava/lang/String;

    .line 116
    iget-object v2, p0, Lcom/yandex/metrica/impl/bc;->c:Lcom/yandex/metrica/impl/ob/ld;

    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/ld;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    .line 117
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/le;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/ka$c$d;->c:Ljava/lang/String;

    .line 118
    iget v2, p0, Lcom/yandex/metrica/impl/bc;->o:I

    const/4 v3, 0x4

    .line 119
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/yandex/metrica/impl/bc;->o:I

    .line 120
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/ka$c;->c:Lcom/yandex/metrica/impl/ob/ka$c$d;

    .line 121
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bc;->a(Lcom/yandex/metrica/impl/ob/ka$c;)V

    .line 122
    iget-object v1, p1, Lcom/yandex/metrica/impl/bc$c;->a:Ljava/util/List;

    iget-object v2, p1, Lcom/yandex/metrica/impl/bc$c;->a:Ljava/util/List;

    .line 123
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/yandex/metrica/impl/ob/ka$c$e;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/yandex/metrica/impl/ob/ka$c$e;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/ka$c;->b:[Lcom/yandex/metrica/impl/ob/ka$c$e;

    .line 124
    iget-object p1, p1, Lcom/yandex/metrica/impl/bc$c;->c:Lorg/a/c;

    invoke-static {p1}, Lcom/yandex/metrica/impl/bc;->a(Lorg/a/c;)[Lcom/yandex/metrica/impl/ob/ka$c$a;

    move-result-object p1

    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/ka$c;->d:[Lcom/yandex/metrica/impl/ob/ka$c$a;

    .line 125
    iput-object p2, v0, Lcom/yandex/metrica/impl/ob/ka$c;->e:[Lcom/yandex/metrica/impl/ob/ka$c$c;

    .line 127
    iget p1, p0, Lcom/yandex/metrica/impl/bc;->o:I

    const/16 p2, 0x8

    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/b;->i(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/yandex/metrica/impl/bc;->o:I

    return-object v0
.end method

.method protected a(Landroid/net/Uri$Builder;)V
    .locals 4

    .line 238
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/m;->a(Landroid/net/Uri$Builder;)V

    const-string v0, "report"

    .line 239
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1246
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->c:Lcom/yandex/metrica/impl/ob/ld;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ld;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    .line 1247
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/le;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceid"

    .line 1246
    invoke-static {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/bc;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->c:Lcom/yandex/metrica/impl/ob/ld;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ld;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/le;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uuid"

    invoke-static {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/bc;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->c:Lcom/yandex/metrica/impl/ob/ld;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ld;->c:Ljava/lang/String;

    const-string v1, "analytics_sdk_version"

    invoke-static {p1, v1, v0}, Lcom/yandex/metrica/impl/bc;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->c:Lcom/yandex/metrica/impl/ob/ld;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ld;->d:Ljava/lang/String;

    const-string v1, "analytics_sdk_version_name"

    invoke-static {p1, v1, v0}, Lcom/yandex/metrica/impl/bc;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->c:Lcom/yandex/metrica/impl/ob/ld;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ld;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    .line 1260
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/le;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_version_name"

    .line 1259
    invoke-static {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/bc;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->c:Lcom/yandex/metrica/impl/ob/ld;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ld;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    .line 1262
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/le;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_build_number"

    .line 1261
    invoke-static {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/bc;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->c:Lcom/yandex/metrica/impl/ob/ld;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ld;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    .line 1264
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/le;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "os_version"

    .line 1263
    invoke-static {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/bc;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->c:Lcom/yandex/metrica/impl/ob/ld;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ld;->k:Ljava/lang/String;

    const-string v1, "os_api_level"

    invoke-static {p1, v1, v0}, Lcom/yandex/metrica/impl/bc;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->c:Lcom/yandex/metrica/impl/ob/ld;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ld;->e:Ljava/lang/String;

    const-string v1, "analytics_sdk_build_number"

    invoke-static {p1, v1, v0}, Lcom/yandex/metrica/impl/bc;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->c:Lcom/yandex/metrica/impl/ob/ld;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ld;->f:Ljava/lang/String;

    const-string v1, "analytics_sdk_build_type"

    invoke-static {p1, v1, v0}, Lcom/yandex/metrica/impl/bc;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->c:Lcom/yandex/metrica/impl/ob/ld;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ld;->h:Ljava/lang/String;

    const-string v1, "app_debuggable"

    invoke-static {p1, v1, v0}, Lcom/yandex/metrica/impl/bc;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->c:Lcom/yandex/metrica/impl/ob/ld;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ld;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    .line 1270
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/le;->y()Ljava/lang/String;

    move-result-object v1

    const-string v2, "locale"

    .line 1269
    invoke-static {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/bc;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->c:Lcom/yandex/metrica/impl/ob/ld;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ld;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    .line 1272
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/le;->s()Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_rooted"

    .line 1271
    invoke-static {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/bc;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->c:Lcom/yandex/metrica/impl/ob/ld;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ld;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    .line 1274
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/le;->t()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_framework"

    .line 1273
    invoke-static {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/bc;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->c:Lcom/yandex/metrica/impl/ob/ld;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ld;->o:Ljava/lang/String;

    const-string v1, "attribution_id"

    invoke-static {p1, v1, v0}, Lcom/yandex/metrica/impl/bc;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->D()Ljava/lang/String;

    move-result-object v0

    const-string v1, "api_key_128"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1280
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_id"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1281
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_platform"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1282
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "model"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1283
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1284
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_width"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1285
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_height"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1286
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_dpi"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1287
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->x()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "scalefactor"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1288
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->A()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_type"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1289
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->z()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android_id"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1290
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clids_set"

    invoke-static {p1, v1, v0}, Lcom/yandex/metrica/impl/bc;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->B()Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$b;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 1292
    :cond_0
    iget-object v2, v0, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$b;->a:Ljava/lang/String;

    :goto_0
    if-nez v2, :cond_1

    move-object v2, v1

    :cond_1
    const-string v3, "adv_id"

    .line 1293
    invoke-virtual {p1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-nez v0, :cond_2

    goto :goto_1

    .line 1294
    :cond_2
    iget-object v0, v0, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$b;->b:Ljava/lang/Boolean;

    .line 1296
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bc;->a(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v0, "limit_ad_tracking"

    .line 1294
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/ka$c;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->q:Lcom/yandex/metrica/impl/ob/ac;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/mw;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/mw;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/yandex/metrica/impl/bc$1;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/bc$1;-><init>(Lcom/yandex/metrica/impl/bc;Lcom/yandex/metrica/impl/ob/ka$c;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/mw;->a(Lcom/yandex/metrica/impl/ob/mz;)V

    return-void
.end method

.method protected a(J)Z
    .locals 3

    const-wide/16 v0, -0x2

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->q:Lcom/yandex/metrica/impl/ob/ac;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->k()Lcom/yandex/metrica/impl/ob/le;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    .line 174
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bc;->a(Ljava/util/List;)V

    .line 175
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->u:Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bc;->t()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/yandex/metrica/impl/bc;->n:Ljava/util/List;

    .line 182
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bc;->G()[Lcom/yandex/metrica/impl/ob/ka$c$c;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bc;->H()Lcom/yandex/metrica/impl/bc$c;

    move-result-object v2

    iput-object v2, p0, Lcom/yandex/metrica/impl/bc;->r:Lcom/yandex/metrica/impl/bc$c;

    .line 186
    iget-object v2, p0, Lcom/yandex/metrica/impl/bc;->r:Lcom/yandex/metrica/impl/bc$c;

    iget-object v2, v2, Lcom/yandex/metrica/impl/bc$c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/bc;->r:Lcom/yandex/metrica/impl/bc$c;

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/bc;->a(Lcom/yandex/metrica/impl/bc$c;[Lcom/yandex/metrica/impl/ob/ka$c$c;)Lcom/yandex/metrica/impl/ob/ka$c;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bc;->l:Lcom/yandex/metrica/impl/ob/ka$c;

    .line 192
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->r:Lcom/yandex/metrica/impl/bc$c;

    iget-object v0, v0, Lcom/yandex/metrica/impl/bc$c;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/yandex/metrica/impl/bc;->n:Ljava/util/List;

    .line 194
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->l:Lcom/yandex/metrica/impl/ob/ka$c;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/e;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bc;->c([B)Z

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public g()V
    .locals 4

    .line 343
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bc;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/yandex/metrica/impl/bc;->t:Lcom/yandex/metrica/impl/ob/nk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1352
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/bc;->r:Lcom/yandex/metrica/impl/bc$c;

    iget-object v1, v1, Lcom/yandex/metrica/impl/bc$c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1353
    iget-object v1, p0, Lcom/yandex/metrica/impl/bc;->t:Lcom/yandex/metrica/impl/ob/nk;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bc;->r:Lcom/yandex/metrica/impl/bc$c;

    iget-object v2, v2, Lcom/yandex/metrica/impl/bc$c;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/ka$c$e;

    const-string v3, "Event sent"

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/nk;->a(Lcom/yandex/metrica/impl/ob/ka$c$e;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lcom/yandex/metrica/impl/bc;->r:Lcom/yandex/metrica/impl/bc$c;

    return-void
.end method

.method public u()Z
    .locals 3

    .line 336
    invoke-super {p0}, Lcom/yandex/metrica/impl/m;->u()Z

    move-result v0

    .line 337
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bc;->l()I

    move-result v1

    const/16 v2, 0x190

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v1

    return v0
.end method
