.class public final Lc/c/a/h/b/ib;
.super Ljava/lang/Object;
.source "NetworkModule_ProvideStorageHelperFactory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/e/d/i/y;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/c/a/h/b/Ya;


# direct methods
.method public constructor <init>(Lc/c/a/h/b/Ya;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/h/b/ib;->a:Lc/c/a/h/b/Ya;

    return-void
.end method

.method public static a(Lc/c/a/h/b/Ya;)Lc/c/a/h/b/ib;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/h/b/ib;

    invoke-direct {v0, p0}, Lc/c/a/h/b/ib;-><init>(Lc/c/a/h/b/Ya;)V

    return-object v0
.end method

.method public static b(Lc/c/a/h/b/Ya;)Lc/c/a/e/d/i/y;
    .locals 0

    .line 1
    invoke-static {p0}, Lc/c/a/h/b/ib;->c(Lc/c/a/h/b/Ya;)Lc/c/a/e/d/i/y;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lc/c/a/h/b/Ya;)Lc/c/a/e/d/i/y;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/h/b/Ya;->c()Lc/c/a/e/d/i/y;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Ld/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lc/c/a/e/d/i/y;

    return-object p0
.end method


# virtual methods
.method public get()Lc/c/a/e/d/i/y;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/h/b/ib;->a:Lc/c/a/h/b/Ya;

    invoke-static {v0}, Lc/c/a/h/b/ib;->b(Lc/c/a/h/b/Ya;)Lc/c/a/e/d/i/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/h/b/ib;->get()Lc/c/a/e/d/i/y;

    move-result-object v0

    return-object v0
.end method
