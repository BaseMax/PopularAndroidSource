.class public final Lc/c/a/h/b/mb;
.super Ljava/lang/Object;
.source "RetrofitModule.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/h/e/b/o;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->CINEMA:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/h/e/b/o;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/h/e/b/o;

    return-object p1
.end method

.method public final B(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/l/b/a/g;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->CINEMA:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/l/b/a/g;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/l/b/a/g;

    return-object p1
.end method

.method public final a(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/a/b/c;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->ACCOUNT:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 5
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 6
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 7
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/a/b/c;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/a/b/c;

    return-object p1
.end method

.method public final a(Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/a/b/d;
    .locals 1

    const-string v0, "detector"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->ACCOUNT:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p1, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p1}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 10
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/a/b/d;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/a/b/d;

    return-object p1
.end method

.method public final a(Lj/I;Lc/c/a/g/c;)Lc/c/a/l/b/a/d;
    .locals 2

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->GISHEH:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-static {}, Ll/a/a/a;->a()Ll/a/a/a;

    move-result-object v0

    const-string v1, "GsonConverterFactory.create()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v1, Ll/F$a;

    invoke-direct {v1}, Ll/F$a;-><init>()V

    invoke-virtual {v1, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v1, v0}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 14
    invoke-virtual {v1, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 15
    invoke-virtual {v1}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/l/b/a/d;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/l/b/a/d;

    return-object p1
.end method

.method public final a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;
    .locals 1

    .line 16
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->f()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lc/c/a/g/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object p2
.end method

.method public final a(Lc/c/a/e/d/q/a;)Ll/a/a/a;
    .locals 2

    const-string v0, "requestPropertiesRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lc/e/d/k;

    invoke-direct {v0}, Lc/e/d/k;-><init>()V

    new-instance v1, Lcom/farsitel/bazaar/di/module/RetrofitModule$gsonConverterFactory$1;

    invoke-direct {v1, p1}, Lcom/farsitel/bazaar/di/module/RetrofitModule$gsonConverterFactory$1;-><init>(Lc/c/a/e/d/q/a;)V

    invoke-static {v0, v1}, Lc/c/a/c/f/a/e;->a(Lc/e/d/k;Lh/f/a/b;)Lc/e/d/k;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lc/e/d/k;->a()Lc/e/d/j;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ll/a/a/a;->a(Lc/e/d/j;)Ll/a/a/a;

    move-result-object p1

    const-string v0, "GsonConverterFactory.cre\u2026    }\n        }.create())"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/a/b/a/a/c/b/a;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->ANALYTICS:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/a/b/a/a/c/b/a;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/a/b/a/a/c/b/a;

    return-object p1
.end method

.method public final c(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/c/a/e;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->APP_DETAIL:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/c/a/e;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/c/a/e;

    return-object p1
.end method

.method public final d(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/i/e;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->APP_DETAIL:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/i/e;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/i/e;

    return-object p1
.end method

.method public final e(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/v/a/a;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->GHOLAK:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/v/a/a;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/v/a/a;

    return-object p1
.end method

.method public final f(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/d/b/e;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->APP_DETAIL:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/d/b/e;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/d/b/e;

    return-object p1
.end method

.method public final g(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/f/a/e;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->CINEMA:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/f/a/e;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/f/a/e;

    return-object p1
.end method

.method public final h(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/e/a/f;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->GHOLAK:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/e/a/f;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/e/a/f;

    return-object p1
.end method

.method public final i(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/h/a/a/e;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->CINEMA:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/h/a/a/e;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/h/a/a/e;

    return-object p1
.end method

.method public final j(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/g/a/f;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->FEHREST:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/g/a/f;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/g/a/f;

    return-object p1
.end method

.method public final k(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/r/b/b/a;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->REVIEW:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/r/b/b/a;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/r/b/b/a;

    return-object p1
.end method

.method public final l(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/h/e/a/b/c;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->CINEMA:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/h/e/a/b/c;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/h/e/a/b/c;

    return-object p1
.end method

.method public final m(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/h/d/a/a/e;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->CINEMA:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/h/d/a/a/e;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/h/d/a/a/e;

    return-object p1
.end method

.method public final n(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/j/e;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->FEHREST:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/j/e;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/j/e;

    return-object p1
.end method

.method public final o(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/k/e;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->INLINE:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/k/e;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/k/e;

    return-object p1
.end method

.method public final p(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/m/b/d;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->PAYMENT:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/m/b/d;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/m/b/d;

    return-object p1
.end method

.method public final q(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/h/c/a/a/e;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->CINEMA:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/h/c/a/a/e;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/h/c/a/a/e;

    return-object p1
.end method

.method public final r(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/p/a/e;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->CAFE:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/p/a/e;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/p/a/e;

    return-object p1
.end method

.method public final s(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/r/g;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->REVIEW:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/r/g;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/r/g;

    return-object p1
.end method

.method public final t(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/s/e;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->SEARCH_PREDICTION:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/s/e;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/s/e;

    return-object p1
.end method

.method public final u(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/s/j;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->SEARCH:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/s/j;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/s/j;

    return-object p1
.end method

.method public final v(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/t/a/e;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->CINEMA:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/t/a/e;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/t/a/e;

    return-object p1
.end method

.method public final w(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/h/d/b/k;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->CINEMA:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/h/d/b/k;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/h/d/b/k;

    return-object p1
.end method

.method public final x(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/h/e/a/c/a/a;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->GISHEH:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/h/e/a/c/a/a;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/h/e/a/c/a/a;

    return-object p1
.end method

.method public final y(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/b/fa;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->UPGRADABLE_APPS:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/b/fa;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/b/fa;

    return-object p1
.end method

.method public final z(Lj/I;Lc/c/a/g/c;Ll/a/a/a;)Lc/c/a/e/d/h/c/b/f;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->CINEMA:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {p0, p2, v0}, Lc/c/a/h/b/mb;->a(Lc/c/a/g/c;Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ll/F$a;

    invoke-direct {v0}, Ll/F$a;-><init>()V

    invoke-virtual {v0, p2}, Ll/F$a;->a(Ljava/lang/String;)Ll/F$a;

    invoke-virtual {v0, p3}, Ll/F$a;->a(Ll/j$a;)Ll/F$a;

    .line 3
    invoke-virtual {v0, p1}, Ll/F$a;->a(Lj/I;)Ll/F$a;

    .line 4
    invoke-virtual {v0}, Ll/F$a;->a()Ll/F;

    move-result-object p1

    const-class p2, Lc/c/a/e/d/h/c/b/f;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/h/c/b/f;

    return-object p1
.end method
