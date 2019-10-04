.class public abstract Lc/c/a/c/d/d;
.super Ljava/lang/Object;
.source "LocalReferrer.kt"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lc/e/d/r;

.field public final e:Lc/e/d/r;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/c/d/d;->f:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/c/d/d;->g:Ljava/lang/String;

    const/16 p1, 0xa

    .line 2
    iput p1, p0, Lc/c/a/c/d/d;->a:I

    const-string p1, "type"

    .line 3
    iput-object p1, p0, Lc/c/a/c/d/d;->b:Ljava/lang/String;

    const-string p1, "extraJson"

    .line 4
    iput-object p1, p0, Lc/c/a/c/d/d;->c:Ljava/lang/String;

    .line 5
    new-instance p1, Lc/e/d/r;

    invoke-direct {p1}, Lc/e/d/r;-><init>()V

    .line 6
    iget-object p2, p0, Lc/c/a/c/d/d;->g:Ljava/lang/String;

    iget-object v0, p0, Lc/c/a/c/d/d;->f:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lc/e/d/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lc/c/a/c/d/d;->d:Lc/e/d/r;

    .line 8
    new-instance p1, Lc/e/d/r;

    invoke-direct {p1}, Lc/e/d/r;-><init>()V

    .line 9
    iget-object p2, p0, Lc/c/a/c/d/d;->b:Ljava/lang/String;

    iget v0, p0, Lc/c/a/c/d/d;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lc/e/d/r;->a(Ljava/lang/String;Ljava/lang/Number;)V

    .line 10
    iget-object p2, p0, Lc/c/a/c/d/d;->c:Ljava/lang/String;

    iget-object v0, p0, Lc/c/a/c/d/d;->d:Lc/e/d/r;

    invoke-virtual {v0}, Lc/e/d/p;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lc/e/d/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lc/c/a/c/d/d;->e:Lc/e/d/r;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lh/f/b/f;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lc/c/a/c/d/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lc/c/a/c/d/d;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lc/c/a/c/d/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getReferrer"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, " and Value: "

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Lc/c/a/c/b/i;->g(Ljava/lang/String;)Lc/e/d/m;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lc/e/d/m;

    invoke-direct {p1}, Lc/e/d/m;-><init>()V

    .line 4
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-ltz v3, :cond_3

    .line 5
    check-cast v4, Lc/e/d/p;

    const-string v6, "it"

    .line 6
    invoke-static {v4, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lc/e/d/p;->h()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lc/e/d/p;->c()Lc/e/d/r;

    move-result-object v6

    iget-object v7, p0, Lc/c/a/c/d/d;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lc/e/d/r;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lc/e/d/p;->c()Lc/e/d/r;

    move-result-object v4

    iget-object v6, p0, Lc/c/a/c/d/d;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lc/e/d/r;->a(Ljava/lang/String;)Lc/e/d/p;

    move-result-object v4

    const-string v6, "it.asJsonObject.get(localTypeKey)"

    invoke-static {v4, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lc/e/d/p;->a()I

    move-result v4

    iget v6, p0, Lc/c/a/c/d/d;->a:I

    if-ne v4, v6, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7
    :cond_3
    invoke-static {}, Lh/a/l;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    :cond_4
    const/4 v3, -0x1

    :goto_3
    if-eq v3, v5, :cond_6

    .line 8
    :try_start_1
    invoke-virtual {p1, v3}, Lc/e/d/m;->get(I)Lc/e/d/p;

    move-result-object v1

    const-string v2, "jsonArray[existedLocalJsonIndex]"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lc/e/d/p;->c()Lc/e/d/r;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lc/c/a/c/d/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc/e/d/r;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 10
    new-instance v2, Lc/e/d/s;

    invoke-direct {v2}, Lc/e/d/s;-><init>()V

    const-string v4, "existedLocalJson"

    invoke-static {v1, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lc/e/d/p;->c()Lc/e/d/r;

    move-result-object v4

    iget-object v5, p0, Lc/c/a/c/d/d;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lc/e/d/r;->a(Ljava/lang/String;)Lc/e/d/p;

    move-result-object v4

    const-string v5, "existedLocalJson.asJsonO\u2026ct.get(localExtraJsonKey)"

    invoke-static {v4, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lc/e/d/p;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lc/e/d/s;->a(Ljava/lang/String;)Lc/e/d/p;

    move-result-object v2

    const-string v4, "JsonParser().parse(exist\u2026alExtraJsonKey).asString)"

    invoke-static {v2, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lc/e/d/p;->c()Lc/e/d/r;

    move-result-object v2

    .line 11
    iget-object v4, p0, Lc/c/a/c/d/d;->g:Ljava/lang/String;

    iget-object v5, p0, Lc/c/a/c/d/d;->f:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lc/e/d/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v4, p0, Lc/c/a/c/d/d;->c:Ljava/lang/String;

    invoke-virtual {v2}, Lc/e/d/p;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lc/e/d/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v3, v1}, Lc/e/d/m;->a(ILc/e/d/p;)Lc/e/d/p;

    goto :goto_4

    .line 14
    :cond_5
    sget-object v1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong extra json key in Local Referrer With Key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc/c/a/c/d/d;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc/c/a/c/d/d;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 15
    :cond_6
    iget-object v1, p0, Lc/c/a/c/d/d;->e:Lc/e/d/r;

    invoke-virtual {p1, v1}, Lc/e/d/m;->a(Lc/e/d/p;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 16
    sget-object v2, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in making Local Referrer With Key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lc/c/a/c/d/d;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/c/a/c/d/d;->f:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 17
    :goto_4
    invoke-virtual {p1}, Lc/e/d/p;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "jsonArray.toString()"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
