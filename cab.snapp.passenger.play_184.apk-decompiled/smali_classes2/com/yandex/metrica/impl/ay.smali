.class public final Lcom/yandex/metrica/impl/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ay$h;,
        Lcom/yandex/metrica/impl/ay$i;,
        Lcom/yandex/metrica/impl/ay$g;,
        Lcom/yandex/metrica/impl/ay$a;,
        Lcom/yandex/metrica/impl/ay$d;,
        Lcom/yandex/metrica/impl/ay$b;,
        Lcom/yandex/metrica/impl/ay$j;,
        Lcom/yandex/metrica/impl/ay$e;,
        Lcom/yandex/metrica/impl/ay$f;,
        Lcom/yandex/metrica/impl/ay$c;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/ob/en;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/yandex/metrica/impl/ob/en;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/t;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    sget-object v1, Lcom/yandex/metrica/impl/ob/en;->a:Lcom/yandex/metrica/impl/ob/en;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v1, Lcom/yandex/metrica/impl/ob/en;->b:Lcom/yandex/metrica/impl/ob/en;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ay;->a:Ljava/util/Map;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 72
    sget-object v1, Lcom/yandex/metrica/impl/ob/en;->a:Lcom/yandex/metrica/impl/ob/en;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v1, Lcom/yandex/metrica/impl/ob/en;->b:Lcom/yandex/metrica/impl/ob/en;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sput-object v0, Lcom/yandex/metrica/impl/ay;->b:Landroid/util/SparseArray;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    sget-object v1, Lcom/yandex/metrica/impl/t;->b:Lcom/yandex/metrica/impl/t;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lcom/yandex/metrica/impl/t;->c:Lcom/yandex/metrica/impl/t;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lcom/yandex/metrica/impl/t;->a:Lcom/yandex/metrica/impl/t;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ay;->c:Ljava/util/Map;

    return-void
.end method

.method static a(Lcom/yandex/metrica/impl/ob/en;)I
    .locals 1

    .line 216
    sget-object v0, Lcom/yandex/metrica/impl/ay;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static a(I)Lcom/yandex/metrica/impl/ob/en;
    .locals 1

    .line 113
    sget-object v0, Lcom/yandex/metrica/impl/ay;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/en;

    return-object p0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;
    .locals 1

    .line 353
    new-instance v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;-><init>()V

    .line 356
    iput p0, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->d:I

    if-eqz p1, :cond_0

    .line 359
    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->e:Ljava/lang/String;

    .line 362
    :cond_0
    invoke-static {p3}, Lcom/yandex/metrica/impl/ay;->c(Ljava/lang/String;)[Lcom/yandex/metrica/impl/ob/ka$a;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 365
    iput-object p0, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->b:[Lcom/yandex/metrica/impl/ob/ka$a;

    .line 367
    :cond_1
    invoke-static {p2}, Lcom/yandex/metrica/impl/ay;->a(Ljava/lang/String;)[Lcom/yandex/metrica/impl/ob/ka$d;

    move-result-object p0

    iput-object p0, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->c:[Lcom/yandex/metrica/impl/ob/ka$d;

    .line 369
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 370
    invoke-static {p4}, Lcom/yandex/metrica/impl/ay;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;

    move-result-object p0

    iput-object p0, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->f:Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;

    :cond_2
    return-object v0
.end method

.method public static a(Ljava/lang/String;ILcom/yandex/metrica/impl/ob/ka$c$g;)Lcom/yandex/metrica/impl/ob/ka$c$e$b;
    .locals 1

    .line 206
    new-instance v0, Lcom/yandex/metrica/impl/ob/ka$c$e$b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ka$c$e$b;-><init>()V

    .line 208
    iput-object p2, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->b:Lcom/yandex/metrica/impl/ob/ka$c$g;

    .line 209
    iput-object p0, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->c:Ljava/lang/String;

    .line 210
    iput p1, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->d:I

    return-object v0
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/mu;)Lcom/yandex/metrica/impl/ob/ka$c$f;
    .locals 2

    .line 95
    new-instance v0, Lcom/yandex/metrica/impl/ob/ka$c$f;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ka$c$f;-><init>()V

    .line 96
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mu;->a()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mu;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/ka$c$f;->b:I

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mu;->b()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mu;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/ka$c$f;->c:I

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mu;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/ka$c$f;->d:Ljava/lang/String;

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mu;->c()Z

    move-result v1

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/ka$c$f;->e:Z

    .line 106
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mu;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mu;->e()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/yandex/metrica/impl/ob/ka$c$f;->f:Ljava/lang/String;

    :cond_3
    return-object v0
.end method

.method public static a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/ob/ka$c$g;
    .locals 4

    const-string v0, "start_time"

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "server_time_offset"

    .line 89
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "obtained_before_first_sync"

    .line 90
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    .line 1193
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2185
    new-instance v0, Lcom/yandex/metrica/impl/ob/ka$c$g;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ka$c$g;-><init>()V

    .line 2186
    iput-wide v2, v0, Lcom/yandex/metrica/impl/ob/ka$c$g;->b:J

    .line 2187
    invoke-static {v2, v3}, Lcom/yandex/metrica/impl/ob/nr;->a(J)I

    move-result v2

    iput v2, v0, Lcom/yandex/metrica/impl/ob/ka$c$g;->c:I

    if-eqz v1, :cond_0

    .line 1195
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/ka$c$g;->d:J

    :cond_0
    if-eqz p0, :cond_1

    .line 1198
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/yandex/metrica/impl/ob/ka$c$g;->e:Z

    :cond_1
    return-object v0
.end method

.method public static a(Lorg/a/c;)Lcom/yandex/metrica/impl/ob/ka$d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    const-string v0, "mac"

    .line 143
    :try_start_0
    new-instance v1, Lcom/yandex/metrica/impl/ob/ka$d;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/ka$d;-><init>()V

    .line 144
    invoke-virtual {p0, v0}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/ka$d;->b:Ljava/lang/String;

    const-string v2, "signal_strength"

    .line 145
    invoke-virtual {p0, v2}, Lorg/a/c;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yandex/metrica/impl/ob/ka$d;->c:I

    const-string v2, "ssid"

    .line 146
    invoke-virtual {p0, v2}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/ka$d;->d:Ljava/lang/String;

    const-string v2, "is_connected"

    .line 147
    invoke-virtual {p0, v2}, Lorg/a/c;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yandex/metrica/impl/ob/ka$d;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 150
    :catch_0
    new-instance v1, Lcom/yandex/metrica/impl/ob/ka$d;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/ka$d;-><init>()V

    .line 151
    invoke-virtual {p0, v0}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/yandex/metrica/impl/ob/ka$d;->b:Ljava/lang/String;

    return-object v1
.end method

.method public static a()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)[Lcom/yandex/metrica/impl/ob/ka$c$c;
    .locals 5

    .line 416
    invoke-static {p0}, Lcom/yandex/metrica/impl/bw;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/bw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bw;->b()Ljava/util/List;

    move-result-object p0

    .line 417
    invoke-static {p0}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ka$c$c;

    const/4 v1, 0x0

    .line 421
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 422
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$c$c;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$c$c;-><init>()V

    .line 423
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/metrica/impl/bw$a;

    .line 424
    iget-object v4, v3, Lcom/yandex/metrica/impl/bw$a;->a:Ljava/lang/String;

    iput-object v4, v2, Lcom/yandex/metrica/impl/ob/ka$c$c;->b:Ljava/lang/String;

    .line 425
    iget-object v3, v3, Lcom/yandex/metrica/impl/bw$a;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/yandex/metrica/impl/ob/ka$c$c;->c:Ljava/lang/String;

    .line 426
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)[Lcom/yandex/metrica/impl/ob/ka$d;
    .locals 1

    .line 119
    :try_start_0
    new-instance v0, Lorg/a/a;

    invoke-direct {v0, p0}, Lorg/a/a;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-static {v0}, Lcom/yandex/metrica/impl/ay;->a(Lorg/a/a;)[Lcom/yandex/metrica/impl/ob/ka$d;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a(Lorg/a/a;)[Lcom/yandex/metrica/impl/ob/ka$d;
    .locals 3

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lorg/a/a;->length()I

    move-result v0

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ka$d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 132
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/a/a;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 133
    invoke-virtual {p0, v1}, Lorg/a/a;->getJSONObject(I)Lorg/a/c;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/ay;->a(Lorg/a/c;)Lcom/yandex/metrica/impl/ob/ka$d;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    move-object v0, p0

    :catch_1
    :cond_0
    return-object v0
.end method

.method static b(Lorg/a/c;)Lcom/yandex/metrica/impl/ob/ka$a;
    .locals 3

    .line 258
    new-instance v0, Lcom/yandex/metrica/impl/ob/ka$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ka$a;-><init>()V

    const-string v1, "signal_strength"

    .line 260
    invoke-virtual {p0, v1}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    invoke-virtual {p0, v1}, Lorg/a/c;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 263
    iput v1, v0, Lcom/yandex/metrica/impl/ob/ka$a;->c:I

    :cond_0
    const-string v1, "cell_id"

    .line 266
    invoke-virtual {p0, v1}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    invoke-virtual {p0, v1}, Lorg/a/c;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/ka$a;->b:I

    :cond_1
    const-string v1, "lac"

    .line 269
    invoke-virtual {p0, v1}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    invoke-virtual {p0, v1}, Lorg/a/c;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/ka$a;->d:I

    :cond_2
    const-string v1, "country_code"

    .line 272
    invoke-virtual {p0, v1}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 273
    invoke-virtual {p0, v1}, Lorg/a/c;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/ka$a;->e:I

    :cond_3
    const-string v1, "operator_id"

    .line 275
    invoke-virtual {p0, v1}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 276
    invoke-virtual {p0, v1}, Lorg/a/c;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/ka$a;->f:I

    :cond_4
    const-string v1, "operator_name"

    .line 278
    invoke-virtual {p0, v1}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 279
    invoke-virtual {p0, v1}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/ka$a;->g:Ljava/lang/String;

    :cond_5
    const-string v1, "is_connected"

    .line 281
    invoke-virtual {p0, v1}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 282
    invoke-virtual {p0, v1}, Lorg/a/c;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/ka$a;->h:Z

    :cond_6
    const/4 v1, 0x0

    const-string v2, "cell_type"

    .line 284
    invoke-virtual {p0, v2, v1}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/ka$a;->i:I

    const-string v1, "pci"

    .line 285
    invoke-virtual {p0, v1}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 286
    invoke-virtual {p0, v1}, Lorg/a/c;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/yandex/metrica/impl/ob/ka$a;->j:I

    :cond_7
    return-object v0
.end method

.method static b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;
    .locals 4

    .line 158
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    new-instance v0, Lorg/a/c;

    invoke-direct {v0, p0}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    .line 160
    new-instance p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;-><init>()V

    const-string v1, "ssid"

    .line 162
    invoke-virtual {v0, v1}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;->b:Ljava/lang/String;

    const-string v1, "state"

    const/4 v2, -0x1

    .line 163
    invoke-virtual {v0, v1, v2}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 173
    :cond_0
    iput v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;->c:I

    goto :goto_0

    .line 170
    :cond_1
    iput v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .line 57
    sget-object v0, Lcom/yandex/metrica/impl/ay;->c:Ljava/util/Map;

    return-object v0
.end method

.method public static b(Lorg/a/a;)[Lcom/yandex/metrica/impl/ob/ka$a;
    .locals 3

    .line 242
    :try_start_0
    invoke-virtual {p0}, Lorg/a/a;->length()I

    move-result v0

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ka$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 243
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/a/a;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 244
    invoke-virtual {p0, v1}, Lorg/a/a;->getJSONObject(I)Lorg/a/c;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 246
    invoke-static {v2}, Lcom/yandex/metrica/impl/ay;->b(Lorg/a/c;)Lcom/yandex/metrica/impl/ob/ka$a;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    move-object v0, p0

    :catch_1
    :cond_1
    return-object v0
.end method

.method public static c(Ljava/lang/String;)[Lcom/yandex/metrica/impl/ob/ka$a;
    .locals 3

    const/4 v0, 0x0

    .line 223
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    new-instance v1, Lorg/a/a;

    invoke-direct {v1, p0}, Lorg/a/a;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-static {v1}, Lcom/yandex/metrica/impl/ay;->b(Lorg/a/a;)[Lcom/yandex/metrica/impl/ob/ka$a;

    move-result-object v0
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 228
    :catch_0
    :try_start_1
    new-instance v1, Lorg/a/c;

    invoke-direct {v1, p0}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/yandex/metrica/impl/ob/ka$a;

    const/4 v2, 0x0

    .line 229
    invoke-static {v1}, Lcom/yandex/metrica/impl/ay;->b(Lorg/a/c;)Lcom/yandex/metrica/impl/ob/ka$a;

    move-result-object v1

    aput-object v1, p0, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p0

    :catch_1
    :cond_0
    :goto_0
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ka$c$b;
    .locals 7

    const-string v0, "provider"

    const-string v1, "lat"

    const-string v2, "lon"

    const/4 v3, 0x0

    .line 295
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 296
    new-instance v4, Lcom/yandex/metrica/impl/ob/ne$a;

    invoke-direct {v4, p0}, Lcom/yandex/metrica/impl/ob/ne$a;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v4, v2}, Lcom/yandex/metrica/impl/ob/ne$a;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 299
    invoke-virtual {v4, v1}, Lcom/yandex/metrica/impl/ob/ne$a;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 302
    new-instance p0, Lcom/yandex/metrica/impl/ob/ka$c$b;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ka$c$b;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :try_start_1
    invoke-virtual {v4, v2}, Lcom/yandex/metrica/impl/ob/ne$a;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->c:D

    .line 306
    invoke-virtual {v4, v1}, Lcom/yandex/metrica/impl/ob/ne$a;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->b:D

    const-string v1, "altitude"

    .line 309
    invoke-virtual {v4, v1}, Lcom/yandex/metrica/impl/ob/ne$a;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->h:I

    const-string v1, "direction"

    .line 310
    invoke-virtual {v4, v1}, Lcom/yandex/metrica/impl/ob/ne$a;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->f:I

    const-string v1, "precision"

    .line 311
    invoke-virtual {v4, v1}, Lcom/yandex/metrica/impl/ob/ne$a;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->e:I

    const-string v1, "speed"

    .line 312
    invoke-virtual {v4, v1}, Lcom/yandex/metrica/impl/ob/ne$a;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->g:I

    const-string v1, "timestamp"

    .line 313
    invoke-virtual {v4, v1}, Lcom/yandex/metrica/impl/ob/ne$a;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    iput-wide v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->d:J

    .line 315
    invoke-virtual {v4, v0}, Lcom/yandex/metrica/impl/ob/ne$a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 316
    invoke-virtual {v4, v0}, Lcom/yandex/metrica/impl/ob/ne$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    .line 317
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 318
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->i:I

    goto :goto_0

    :cond_0
    const-string v1, "network"

    .line 319
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 320
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->i:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :cond_1
    move-object p0, v3

    :catch_1
    :cond_2
    :goto_0
    return-object p0
.end method

.method static e(Ljava/lang/String;)I
    .locals 3

    const-string v0, "enabled"

    const/4 v1, -0x1

    .line 336
    :try_start_0
    new-instance v2, Lcom/yandex/metrica/impl/ob/ne$a;

    invoke-direct {v2, p0}, Lcom/yandex/metrica/impl/ob/ne$a;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/ne$a;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 338
    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/ne$a;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    :catch_0
    :cond_0
    return v1
.end method

.method public static f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;
    .locals 2

    .line 378
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 379
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/ns;->a(Ljava/lang/String;)Lcom/yandex/metrica/d;

    move-result-object p0

    .line 381
    new-instance v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;-><init>()V

    .line 383
    invoke-virtual {p0}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->b:Ljava/lang/String;

    .line 384
    invoke-virtual {p0}, Lcom/yandex/metrica/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/yandex/metrica/d;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->c:Ljava/lang/String;

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/d;->c()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 388
    invoke-virtual {p0}, Lcom/yandex/metrica/d;->c()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/ne;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
