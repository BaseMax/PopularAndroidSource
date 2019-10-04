.class public Lcom/yandex/metrica/impl/ob/ll;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/ob/ki$a$b$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/av$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/ll$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ll$1;-><init>()V

    .line 38
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/ll;->a:Ljava/util/Map;

    .line 48
    new-instance v0, Lcom/yandex/metrica/impl/ob/ll$2;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ll$2;-><init>()V

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/ll;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map;)Lorg/a/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/a/c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 95
    invoke-static {p0}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 96
    new-instance v0, Lorg/a/c;

    invoke-direct {v0}, Lorg/a/c;-><init>()V

    .line 97
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 101
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 103
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2334
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 104
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v1, ","

    .line 107
    invoke-static {v1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/ki$a$a;)Ljava/lang/String;
    .locals 2

    .line 85
    :try_start_0
    new-instance v0, Lorg/a/c;

    invoke-direct {v0}, Lorg/a/c;-><init>()V

    const-string v1, "id"

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ki$a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/ki$a$b;)Ljava/lang/String;
    .locals 5

    .line 62
    :try_start_0
    new-instance v0, Lorg/a/c;

    invoke-direct {v0}, Lorg/a/c;-><init>()V

    const-string v1, "id"

    .line 63
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ki$a$b;->a()Lcom/yandex/metrica/impl/ob/ki$a$a;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/ki$a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "url"

    .line 64
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ki$a$b;->a()Lcom/yandex/metrica/impl/ob/ki$a$a;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/ki$a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "status"

    .line 65
    sget-object v2, Lcom/yandex/metrica/impl/ob/ll;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ki$a$b;->b()Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "code"

    .line 66
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ki$a$b;->d()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 67
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ki$a$b;->e()[B

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a([B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "body"

    if-nez v1, :cond_0

    .line 68
    :try_start_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ki$a$b;->e()[B

    move-result-object v1

    .line 1116
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v3, v1}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ki$a$b;->h()[B

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a([B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ki$a$b;->h()[B

    move-result-object v1

    .line 2116
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v3, v1}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    :cond_1
    :goto_0
    const-string v1, "headers"

    .line 72
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ki$a$b;->f()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/ll;->a(Ljava/util/Map;)Lorg/a/c;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "error"

    .line 73
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ki$a$b;->g()Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 73
    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "network_type"

    .line 74
    sget-object v2, Lcom/yandex/metrica/impl/ob/ll;->b:Ljava/util/Map;

    .line 75
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ki$a$b;->c()Lcom/yandex/metrica/impl/av$a;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 74
    invoke-virtual {v0, v1, p1}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 76
    invoke-virtual {v0}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
