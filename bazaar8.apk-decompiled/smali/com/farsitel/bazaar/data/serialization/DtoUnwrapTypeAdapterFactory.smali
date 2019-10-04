.class public final Lcom/farsitel/bazaar/data/serialization/DtoUnwrapTypeAdapterFactory;
.super Ljava/lang/Object;
.source "DtoUnwrapTypeAdapterFactory.kt"

# interfaces
.implements Lc/e/d/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/data/serialization/DtoUnwrapTypeAdapterFactory;Lc/e/d/p;)Lc/e/d/p;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/serialization/DtoUnwrapTypeAdapterFactory;->a(Lc/e/d/p;)Lc/e/d/p;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lc/e/d/p;)Lc/e/d/p;
    .locals 2

    :try_start_0
    const-string v0, "singleReply"

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/farsitel/bazaar/data/serialization/DtoUnwrapTypeAdapterFactory;->a(Lc/e/d/p;Ljava/lang/String;)Lc/e/d/p;

    move-result-object v0

    const-string v1, "ReplySelector"

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/farsitel/bazaar/data/serialization/DtoUnwrapTypeAdapterFactory;->a(Lc/e/d/p;Ljava/lang/String;)Lc/e/d/p;

    move-result-object v0

    const-string v1, "reply"

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/farsitel/bazaar/data/serialization/DtoUnwrapTypeAdapterFactory;->b(Lc/e/d/p;Ljava/lang/String;)Lc/e/d/p;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method public final a(Lc/e/d/p;Ljava/lang/String;)Lc/e/d/p;
    .locals 2

    .line 9
    invoke-virtual {p1}, Lc/e/d/p;->h()Z

    move-result v0

    const-string v1, "Unable to unwrap "

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lc/e/d/p;->c()Lc/e/d/r;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p2}, Lc/e/d/r;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p1, p2}, Lc/e/d/r;->b(Ljava/lang/String;)Lc/e/d/r;

    move-result-object p1

    const-string p2, "jsonObject.getAsJsonObject(member)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] can\'t be found."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", Json Element must be a json object."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lc/e/d/j;Lc/e/d/c/a;)Lc/e/d/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/e/d/j;",
            "Lc/e/d/c/a<",
            "TT;>;)",
            "Lc/e/d/x<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "gson"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p0, p2}, Lc/e/d/j;->a(Lc/e/d/y;Lc/e/d/c/a;)Lc/e/d/x;

    move-result-object p2

    .line 3
    const-class v0, Lc/e/d/p;

    invoke-virtual {p1, v0}, Lc/e/d/j;->a(Ljava/lang/Class;)Lc/e/d/x;

    move-result-object p1

    .line 4
    new-instance v0, Lc/c/a/e/j/a;

    invoke-direct {v0, p0, p2, p1}, Lc/c/a/e/j/a;-><init>(Lcom/farsitel/bazaar/data/serialization/DtoUnwrapTypeAdapterFactory;Lc/e/d/x;Lc/e/d/x;)V

    .line 5
    invoke-virtual {v0}, Lc/e/d/x;->a()Lc/e/d/x;

    move-result-object p1

    const-string p2, "object : TypeAdapter<T>(\u2026   }\n        }.nullSafe()"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Lc/e/d/p;Ljava/lang/String;)Lc/e/d/p;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lc/e/d/p;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lc/e/d/p;->c()Lc/e/d/r;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lc/e/d/r;->k()Ljava/util/Set;

    move-result-object v0

    const-string v1, "jsonObject.keySet()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "it"

    .line 5
    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, p2, v2}, Lh/k/n;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Lc/e/d/r;->a(Ljava/lang/String;)Lc/e/d/p;

    move-result-object p1

    const-string p2, "jsonObject.get(it)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "Collection contains no element matching the predicate."

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to unwrap a member containing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", Json Element must be a json object."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method
