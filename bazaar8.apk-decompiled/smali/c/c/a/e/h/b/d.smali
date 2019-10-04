.class public final Lc/c/a/e/h/b/d;
.super Ljava/lang/Object;
.source "ReferrerInterceptor.kt"

# interfaces
.implements Lj/E;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lc/c/a/e/h/b/d;Lorg/json/JSONObject;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 14
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lc/c/a/e/h/b/d;->a(Lorg/json/JSONObject;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Lj/E$a;)Lj/P;
    .locals 11

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    const-string v2, "chain"

    invoke-static {p1, v2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lj/E$a;->e()Lj/L;

    move-result-object v2

    .line 2
    invoke-interface {p1, v2}, Lj/E$a;->a(Lj/L;)Lj/P;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lj/P;->s()Lj/S;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Lj/S;->x()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    .line 5
    :goto_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    .line 6
    invoke-static {p0, v6, v4, v7, v4}, Lc/c/a/e/h/b/d;->a(Lc/c/a/e/h/b/d;Lorg/json/JSONObject;Ljava/util/List;ILjava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Lj/P;->B()Lj/P$a;

    move-result-object v7

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lj/S;->v()Lj/F;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v4

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "jsonObject.toString()"

    invoke-static {v6, v9}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lh/k/c;->a:Ljava/nio/charset/Charset;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-static {v6, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v6}, Lj/S;->a(Lj/F;[B)Lj/S;

    move-result-object v6

    invoke-virtual {v7, v6}, Lj/P$a;->a(Lj/S;)Lj/P$a;

    invoke-virtual {v7}, Lj/P$a;->a()Lj/P;

    move-result-object v6

    const-string v7, "response.newBuilder().bo\u2026).toByteArray())).build()"

    invoke-static {v6, v7}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v6

    :cond_2
    new-instance v6, Lkotlin/TypeCastException;

    invoke-direct {v6, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v6

    .line 8
    sget-object v7, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    .line 9
    new-instance v8, Ljava/lang/Throwable;

    .line 10
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Referrer error in url: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lj/L;->g()Lj/D;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with response: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-direct {v8, v2, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {v7, v8}, Lc/c/a/c/c/a;->b(Ljava/lang/Throwable;)V

    .line 13
    invoke-virtual {p1}, Lj/P;->B()Lj/P$a;

    move-result-object p1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lj/S;->v()Lj/F;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v4

    :goto_2
    if-eqz v5, :cond_5

    sget-object v3, Lh/k/c;->a:Ljava/nio/charset/Charset;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    move-object v0, v4

    :goto_3
    if-eqz v0, :cond_6

    invoke-static {v2, v0}, Lj/S;->a(Lj/F;[B)Lj/S;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj/P$a;->a(Lj/S;)Lj/P$a;

    invoke-virtual {p1}, Lj/P$a;->a()Lj/P;

    move-result-object p1

    const-string v0, "response.newBuilder().bo\u2026toByteArray()!!)).build()"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_6
    invoke-static {}, Lh/f/b/j;->a()V

    throw v4
.end method

.method public final a(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string p2, "baseReferrers"

    .line 16
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "referrerList"

    const/4 v3, 0x0

    const-string v4, "type"

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "json.getString(\"baseReferrers\")"

    invoke-static {v1, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lc/c/a/c/b/i;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 19
    invoke-static {v1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lc/c/a/e/h/b/e;->a(Lorg/json/JSONArray;)Ljava/util/Iterator;

    move-result-object p2

    .line 20
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 21
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_3
    const-string p2, "referrer"

    .line 24
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 25
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_6

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "json.getString(\"referrer\")"

    invoke-static {v1, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lc/c/a/c/b/i;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_7

    .line 28
    invoke-static {v1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 29
    :cond_6
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object p2, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/Throwable;

    const-string v4, "Invalid value for referrer"

    invoke-direct {v1, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lc/c/a/c/c/a;->b(Ljava/lang/Throwable;)V

    .line 31
    :cond_7
    :goto_3
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    :cond_8
    :goto_4
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    const-string v1, "keys"

    .line 33
    invoke-static {p2, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lh/j/k;->a(Ljava/util/Iterator;)Lh/j/d;

    move-result-object p2

    invoke-static {p2}, Lh/j/o;->c(Lh/j/d;)Ljava/util/List;

    move-result-object p2

    .line 34
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    :goto_5
    if-ge v3, v1, :cond_b

    .line 35
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 36
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 37
    instance-of v4, v2, Lorg/json/JSONObject;

    if-eqz v4, :cond_9

    .line 38
    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {p0, v2, v0}, Lc/c/a/e/h/b/d;->a(Lorg/json/JSONObject;Ljava/util/List;)V

    goto :goto_7

    .line 39
    :cond_9
    instance-of v4, v2, Lorg/json/JSONArray;

    if-eqz v4, :cond_a

    .line 40
    check-cast v2, Lorg/json/JSONArray;

    invoke-static {v2}, Lc/c/a/e/h/b/e;->a(Lorg/json/JSONArray;)Ljava/util/Iterator;

    move-result-object v2

    .line 41
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 42
    invoke-virtual {p0, v4, v0}, Lc/c/a/e/h/b/d;->a(Lorg/json/JSONObject;Ljava/util/List;)V

    goto :goto_6

    :cond_a
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    return-void
.end method
