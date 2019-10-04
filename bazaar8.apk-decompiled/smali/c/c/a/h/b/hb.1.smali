.class public final Lc/c/a/h/b/hb;
.super Ljava/lang/Object;
.source "NetworkModule_ProvideOkHttpClientFactory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lj/I;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/c/a/h/b/Ya;

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lokhttp3/logging/HttpLoggingInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/h/b/f;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/h/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/h/a/f;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/u/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/c/a/h/b/Ya;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/h/b/Ya;",
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg/a/a<",
            "Lokhttp3/logging/HttpLoggingInterceptor;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/h/b/f;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/h/b/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/h/a/f;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/u/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/h/b/hb;->a:Lc/c/a/h/b/Ya;

    .line 3
    iput-object p2, p0, Lc/c/a/h/b/hb;->b:Lg/a/a;

    .line 4
    iput-object p3, p0, Lc/c/a/h/b/hb;->c:Lg/a/a;

    .line 5
    iput-object p4, p0, Lc/c/a/h/b/hb;->d:Lg/a/a;

    .line 6
    iput-object p5, p0, Lc/c/a/h/b/hb;->e:Lg/a/a;

    .line 7
    iput-object p6, p0, Lc/c/a/h/b/hb;->f:Lg/a/a;

    .line 8
    iput-object p7, p0, Lc/c/a/h/b/hb;->g:Lg/a/a;

    return-void
.end method

.method public static a(Lc/c/a/h/b/Ya;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/h/b/hb;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/h/b/Ya;",
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg/a/a<",
            "Lokhttp3/logging/HttpLoggingInterceptor;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/h/b/f;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/h/b/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/h/a/f;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/u/a;",
            ">;)",
            "Lc/c/a/h/b/hb;"
        }
    .end annotation

    .line 1
    new-instance v8, Lc/c/a/h/b/hb;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lc/c/a/h/b/hb;-><init>(Lc/c/a/h/b/Ya;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)V

    return-object v8
.end method

.method public static a(Lc/c/a/h/b/Ya;Landroid/content/Context;Lokhttp3/logging/HttpLoggingInterceptor;Lc/c/a/e/h/b/f;Lc/c/a/e/h/b/a;Lc/c/a/e/h/a/f;Lc/c/a/e/d/u/a;)Lj/I;
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p6}, Lc/c/a/h/b/Ya;->a(Landroid/content/Context;Lokhttp3/logging/HttpLoggingInterceptor;Lc/c/a/e/h/b/f;Lc/c/a/e/h/b/a;Lc/c/a/e/h/a/f;Lc/c/a/e/d/u/a;)Lj/I;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {p0, p1}, Ld/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lj/I;

    return-object p0
.end method

.method public static b(Lc/c/a/h/b/Ya;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lj/I;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/h/b/Ya;",
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg/a/a<",
            "Lokhttp3/logging/HttpLoggingInterceptor;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/h/b/f;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/h/b/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/h/a/f;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/u/a;",
            ">;)",
            "Lj/I;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    .line 2
    invoke-interface {p2}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lokhttp3/logging/HttpLoggingInterceptor;

    .line 3
    invoke-interface {p3}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lc/c/a/e/h/b/f;

    .line 4
    invoke-interface {p4}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lc/c/a/e/h/b/a;

    .line 5
    invoke-interface {p5}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lc/c/a/e/h/a/f;

    .line 6
    invoke-interface {p6}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lc/c/a/e/d/u/a;

    move-object v0, p0

    .line 7
    invoke-static/range {v0 .. v6}, Lc/c/a/h/b/hb;->a(Lc/c/a/h/b/Ya;Landroid/content/Context;Lokhttp3/logging/HttpLoggingInterceptor;Lc/c/a/e/h/b/f;Lc/c/a/e/h/b/a;Lc/c/a/e/h/a/f;Lc/c/a/e/d/u/a;)Lj/I;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lj/I;
    .locals 7

    .line 2
    iget-object v0, p0, Lc/c/a/h/b/hb;->a:Lc/c/a/h/b/Ya;

    iget-object v1, p0, Lc/c/a/h/b/hb;->b:Lg/a/a;

    iget-object v2, p0, Lc/c/a/h/b/hb;->c:Lg/a/a;

    iget-object v3, p0, Lc/c/a/h/b/hb;->d:Lg/a/a;

    iget-object v4, p0, Lc/c/a/h/b/hb;->e:Lg/a/a;

    iget-object v5, p0, Lc/c/a/h/b/hb;->f:Lg/a/a;

    iget-object v6, p0, Lc/c/a/h/b/hb;->g:Lg/a/a;

    invoke-static/range {v0 .. v6}, Lc/c/a/h/b/hb;->b(Lc/c/a/h/b/Ya;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lj/I;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/h/b/hb;->get()Lj/I;

    move-result-object v0

    return-object v0
.end method
