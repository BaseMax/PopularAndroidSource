.class public final Lc/c/a/h/b/E;
.super Ljava/lang/Object;
.source "DeveloperModule_DeveloperDashboardFactory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/g/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/c/a/h/b/D;


# direct methods
.method public constructor <init>(Lc/c/a/h/b/D;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/h/b/E;->a:Lc/c/a/h/b/D;

    return-void
.end method

.method public static a(Lc/c/a/h/b/D;)Lc/c/a/h/b/E;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/h/b/E;

    invoke-direct {v0, p0}, Lc/c/a/h/b/E;-><init>(Lc/c/a/h/b/D;)V

    return-object v0
.end method

.method public static b(Lc/c/a/h/b/D;)Lc/c/a/g/a;
    .locals 0

    .line 1
    invoke-static {p0}, Lc/c/a/h/b/E;->c(Lc/c/a/h/b/D;)Lc/c/a/g/a;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lc/c/a/h/b/D;)Lc/c/a/g/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/h/b/D;->a()Lc/c/a/g/a;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Ld/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lc/c/a/g/a;

    return-object p0
.end method


# virtual methods
.method public get()Lc/c/a/g/a;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/h/b/E;->a:Lc/c/a/h/b/D;

    invoke-static {v0}, Lc/c/a/h/b/E;->b(Lc/c/a/h/b/D;)Lc/c/a/g/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/h/b/E;->get()Lc/c/a/g/a;

    move-result-object v0

    return-object v0
.end method
