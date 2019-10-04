.class public final Lc/c/a/h/b/Nb;
.super Ljava/lang/Object;
.source "RetrofitModule_ProvideThirdPartyServiceFactory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/l/b/a/d;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lc/c/a/h/b/mb;Lj/I;Lc/c/a/g/c;)Lc/c/a/l/b/a/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/c/a/h/b/mb;->a(Lj/I;Lc/c/a/g/c;)Lc/c/a/l/b/a/d;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, p1}, Ld/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lc/c/a/l/b/a/d;

    return-object p0
.end method
