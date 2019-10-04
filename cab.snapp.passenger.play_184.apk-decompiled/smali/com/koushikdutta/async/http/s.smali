.class public Lcom/koushikdutta/async/http/s;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Iterable<",
        "Lcom/koushikdutta/async/http/t;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/koushikdutta/async/http/s$a;

.field private static final b:Lcom/koushikdutta/async/http/s$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Lcom/koushikdutta/async/http/s$1;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/s$1;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/s;->a:Lcom/koushikdutta/async/http/s$a;

    .line 98
    new-instance v0, Lcom/koushikdutta/async/http/s$2;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/s$2;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/s;->b:Lcom/koushikdutta/async/http/s$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/s;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 50
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/s;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/t;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/t;

    .line 46
    invoke-interface {v0}, Lcom/koushikdutta/async/http/t;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/koushikdutta/async/http/t;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/async/http/s;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;ZLcom/koushikdutta/async/http/s$a;)Lcom/koushikdutta/async/http/s;
    .locals 8

    .line 58
    new-instance v0, Lcom/koushikdutta/async/http/s;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/s;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 62
    array-length p1, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_4

    aget-object v3, p0, v2

    const/4 v4, 0x2

    const-string v5, "="

    .line 63
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 64
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 66
    array-length v6, v3

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 67
    aget-object v5, v3, v7

    :cond_1
    if-eqz p2, :cond_2

    if-eqz v5, :cond_2

    const-string v3, "\""

    .line 68
    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v5, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_2
    if-eqz p3, :cond_3

    .line 71
    invoke-interface {p3, v4}, Lcom/koushikdutta/async/http/s$a;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-interface {p3, v5}, Lcom/koushikdutta/async/http/s$a;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    :cond_3
    invoke-virtual {v0, v4, v5}, Lcom/koushikdutta/async/http/s;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static parseCommaDelimited(Ljava/lang/String;)Lcom/koushikdutta/async/http/s;
    .locals 3

    const-string v0, ","

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-static {p0, v0, v1, v2}, Lcom/koushikdutta/async/http/s;->parse(Ljava/lang/String;Ljava/lang/String;ZLcom/koushikdutta/async/http/s$a;)Lcom/koushikdutta/async/http/s;

    move-result-object p0

    return-object p0
.end method

.method public static parseQuery(Ljava/lang/String;)Lcom/koushikdutta/async/http/s;
    .locals 3

    .line 95
    sget-object v0, Lcom/koushikdutta/async/http/s;->a:Lcom/koushikdutta/async/http/s$a;

    const-string v1, "&"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/koushikdutta/async/http/s;->parse(Ljava/lang/String;Ljava/lang/String;ZLcom/koushikdutta/async/http/s$a;)Lcom/koushikdutta/async/http/s;

    move-result-object p0

    return-object p0
.end method

.method public static parseSemicolonDelimited(Ljava/lang/String;)Lcom/koushikdutta/async/http/s;
    .locals 3

    const-string v0, ";"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-static {p0, v0, v1, v2}, Lcom/koushikdutta/async/http/s;->parse(Ljava/lang/String;Ljava/lang/String;ZLcom/koushikdutta/async/http/s$a;)Lcom/koushikdutta/async/http/s;

    move-result-object p0

    return-object p0
.end method

.method public static parseUrlEncoded(Ljava/lang/String;)Lcom/koushikdutta/async/http/s;
    .locals 3

    .line 106
    sget-object v0, Lcom/koushikdutta/async/http/s;->b:Lcom/koushikdutta/async/http/s$a;

    const-string v1, "&"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/koushikdutta/async/http/s;->parse(Ljava/lang/String;Ljava/lang/String;ZLcom/koushikdutta/async/http/s$a;)Lcom/koushikdutta/async/http/s;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/s;->a()Ljava/util/List;

    move-result-object v0

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 23
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/koushikdutta/async/http/t;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/s;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 113
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/http/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 114
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 115
    new-instance v5, Lcom/koushikdutta/async/http/j;

    invoke-direct {v5, v2, v4}, Lcom/koushikdutta/async/http/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/s;->a()Ljava/util/List;

    move-result-object v0

    .line 40
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
