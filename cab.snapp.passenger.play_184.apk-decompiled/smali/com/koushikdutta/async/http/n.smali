.class public final Lcom/koushikdutta/async/http/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/koushikdutta/async/http/s;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/koushikdutta/async/http/n$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/n$1;-><init>(Lcom/koushikdutta/async/http/n;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/n;->a:Lcom/koushikdutta/async/http/s;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/koushikdutta/async/http/n$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/n$1;-><init>(Lcom/koushikdutta/async/http/n;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/n;->a:Lcom/koushikdutta/async/http/s;

    .line 21
    iget-object v0, p0, Lcom/koushikdutta/async/http/n;->a:Lcom/koushikdutta/async/http/s;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/s;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/koushikdutta/async/http/n;
    .locals 5

    const-string v0, "\n"

    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 142
    new-instance v0, Lcom/koushikdutta/async/http/n;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/n;-><init>()V

    .line 143
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 144
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 148
    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/http/n;->addLine(Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;
    .locals 2

    .line 53
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/koushikdutta/async/http/n;->a:Lcom/koushikdutta/async/http/s;

    invoke-virtual {v1, v0, p2}, Lcom/koushikdutta/async/http/s;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/koushikdutta/async/http/n;->a:Lcom/koushikdutta/async/http/s;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/koushikdutta/async/e/h;

    .line 56
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/e/h;->tagNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final addAll(Lcom/koushikdutta/async/http/n;)Lcom/koushikdutta/async/http/n;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/koushikdutta/async/http/n;->a:Lcom/koushikdutta/async/http/s;

    iget-object p1, p1, Lcom/koushikdutta/async/http/n;->a:Lcom/koushikdutta/async/http/s;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/s;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final addAll(Ljava/lang/String;Ljava/util/List;)Lcom/koushikdutta/async/http/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/koushikdutta/async/http/n;"
        }
    .end annotation

    .line 73
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/n;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final addAll(Ljava/util/Map;)Lcom/koushikdutta/async/http/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/koushikdutta/async/http/n;"
        }
    .end annotation

    .line 80
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 81
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 82
    invoke-virtual {p0, v1, v3}, Lcom/koushikdutta/async/http/n;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final addLine(Ljava/lang/String;)Lcom/koushikdutta/async/http/n;
    .locals 3

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const-string v1, ":"

    .line 63
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 64
    array-length v1, p1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 65
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/n;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    goto :goto_0

    .line 67
    :cond_0
    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/n;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/koushikdutta/async/http/n;->a:Lcom/koushikdutta/async/http/s;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/s;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getAll(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/koushikdutta/async/http/n;->a:Lcom/koushikdutta/async/http/s;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final getMultiMap()Lcom/koushikdutta/async/http/s;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/koushikdutta/async/http/n;->a:Lcom/koushikdutta/async/http/s;

    return-object v0
.end method

.method public final remove(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 99
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/n;->removeAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 100
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 102
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final removeAll(Ljava/util/Collection;)Lcom/koushikdutta/async/http/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/koushikdutta/async/http/n;"
        }
    .end annotation

    .line 106
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/n;->remove(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final removeAll(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/koushikdutta/async/http/n;->a:Lcom/koushikdutta/async/http/s;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/s;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;
    .locals 2

    if-eqz p2, :cond_1

    const-string v0, "\n"

    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value must not contain a new line or line feed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/koushikdutta/async/http/n;->a:Lcom/koushikdutta/async/http/s;

    invoke-virtual {v1, v0, p2}, Lcom/koushikdutta/async/http/s;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/koushikdutta/async/http/n;->a:Lcom/koushikdutta/async/http/s;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/koushikdutta/async/e/h;

    .line 48
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/e/h;->tagNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final toPrefixString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/n;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 135
    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/n;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toStringBuilder()Ljava/lang/StringBuilder;
    .locals 7

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 114
    iget-object v1, p0, Lcom/koushikdutta/async/http/n;->a:Lcom/koushikdutta/async/http/s;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/s;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\r\n"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 115
    iget-object v4, p0, Lcom/koushikdutta/async/http/n;->a:Lcom/koushikdutta/async/http/s;

    invoke-virtual {v4, v2}, Lcom/koushikdutta/async/http/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/e/h;

    .line 116
    invoke-virtual {v2}, Lcom/koushikdutta/async/e/h;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 117
    invoke-virtual {v2}, Lcom/koushikdutta/async/e/h;->tag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    .line 118
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method
