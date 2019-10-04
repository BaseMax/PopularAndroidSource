.class public final Lc/c/a/h/b/G;
.super Ljava/lang/Object;
.source "DeveloperModule_ServiceBaseUrlDetectorFactory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/g/c;",
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
    iput-object p1, p0, Lc/c/a/h/b/G;->a:Lc/c/a/h/b/D;

    return-void
.end method

.method public static a(Lc/c/a/h/b/D;)Lc/c/a/h/b/G;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/h/b/G;

    invoke-direct {v0, p0}, Lc/c/a/h/b/G;-><init>(Lc/c/a/h/b/D;)V

    return-object v0
.end method

.method public static b(Lc/c/a/h/b/D;)Lc/c/a/g/c;
    .locals 0

    .line 1
    invoke-static {p0}, Lc/c/a/h/b/G;->c(Lc/c/a/h/b/D;)Lc/c/a/g/c;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lc/c/a/h/b/D;)Lc/c/a/g/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/h/b/D;->c()Lc/c/a/g/c;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Ld/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lc/c/a/g/c;

    return-object p0
.end method


# virtual methods
.method public get()Lc/c/a/g/c;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/h/b/G;->a:Lc/c/a/h/b/D;

    invoke-static {v0}, Lc/c/a/h/b/G;->b(Lc/c/a/h/b/D;)Lc/c/a/g/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/h/b/G;->get()Lc/c/a/g/c;

    move-result-object v0

    return-object v0
.end method
