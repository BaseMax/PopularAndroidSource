.class public final Lc/c/a/e/d/h/e/a/b/f;
.super Ljava/lang/Object;
.source "VideoDownloadRemoteDataSource_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/e/d/h/e/a/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/b/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/h/e/a/b/f;->a:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;)Lc/c/a/e/d/h/e/a/b/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/b/c;",
            ">;)",
            "Lc/c/a/e/d/h/e/a/b/f;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/h/e/a/b/f;

    invoke-direct {v0, p0}, Lc/c/a/e/d/h/e/a/b/f;-><init>(Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;)Lc/c/a/e/d/h/e/a/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/b/c;",
            ">;)",
            "Lc/c/a/e/d/h/e/a/b/e;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/h/e/a/b/e;

    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/e/d/h/e/a/b/c;

    invoke-direct {v0, p0}, Lc/c/a/e/d/h/e/a/b/e;-><init>(Lc/c/a/e/d/h/e/a/b/c;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/e/d/h/e/a/b/e;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/b/f;->a:Lg/a/a;

    invoke-static {v0}, Lc/c/a/e/d/h/e/a/b/f;->b(Lg/a/a;)Lc/c/a/e/d/h/e/a/b/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/h/e/a/b/f;->get()Lc/c/a/e/d/h/e/a/b/e;

    move-result-object v0

    return-object v0
.end method
