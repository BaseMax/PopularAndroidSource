.class public final Lc/c/a/h/b/ab;
.super Ljava/lang/Object;
.source "NetworkModule_ProvideCacheInterceptorFactory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/e/h/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/c/a/h/b/Ya;

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/h/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/c/a/h/b/Ya;Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/h/b/Ya;",
            "Lg/a/a<",
            "Lc/c/a/e/h/a/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/h/b/ab;->a:Lc/c/a/h/b/Ya;

    .line 3
    iput-object p2, p0, Lc/c/a/h/b/ab;->b:Lg/a/a;

    return-void
.end method

.method public static a(Lc/c/a/h/b/Ya;Lc/c/a/e/h/a/c;)Lc/c/a/e/h/a/f;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/h/b/Ya;->a(Lc/c/a/e/h/a/c;)Lc/c/a/e/h/a/f;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {p0, p1}, Ld/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lc/c/a/e/h/a/f;

    return-object p0
.end method

.method public static a(Lc/c/a/h/b/Ya;Lg/a/a;)Lc/c/a/h/b/ab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/h/b/Ya;",
            "Lg/a/a<",
            "Lc/c/a/e/h/a/c;",
            ">;)",
            "Lc/c/a/h/b/ab;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/h/b/ab;

    invoke-direct {v0, p0, p1}, Lc/c/a/h/b/ab;-><init>(Lc/c/a/h/b/Ya;Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lc/c/a/h/b/Ya;Lg/a/a;)Lc/c/a/e/h/a/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/h/b/Ya;",
            "Lg/a/a<",
            "Lc/c/a/e/h/a/c;",
            ">;)",
            "Lc/c/a/e/h/a/f;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/h/a/c;

    invoke-static {p0, p1}, Lc/c/a/h/b/ab;->a(Lc/c/a/h/b/Ya;Lc/c/a/e/h/a/c;)Lc/c/a/e/h/a/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lc/c/a/e/h/a/f;
    .locals 2

    .line 2
    iget-object v0, p0, Lc/c/a/h/b/ab;->a:Lc/c/a/h/b/Ya;

    iget-object v1, p0, Lc/c/a/h/b/ab;->b:Lg/a/a;

    invoke-static {v0, v1}, Lc/c/a/h/b/ab;->b(Lc/c/a/h/b/Ya;Lg/a/a;)Lc/c/a/e/h/a/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/h/b/ab;->get()Lc/c/a/e/h/a/f;

    move-result-object v0

    return-object v0
.end method