.class public final Lc/c/a/e/d/h/e/b/l;
.super Ljava/lang/Object;
.source "VideoDetailRemoteDataSource_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/e/d/h/e/b/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/b/o;",
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
            "Lc/c/a/e/d/h/e/b/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/h/e/b/l;->a:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;)Lc/c/a/e/d/h/e/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/b/o;",
            ">;)",
            "Lc/c/a/e/d/h/e/b/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/h/e/b/l;

    invoke-direct {v0, p0}, Lc/c/a/e/d/h/e/b/l;-><init>(Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;)Lc/c/a/e/d/h/e/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/b/o;",
            ">;)",
            "Lc/c/a/e/d/h/e/b/k;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/h/e/b/k;

    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/e/d/h/e/b/o;

    invoke-direct {v0, p0}, Lc/c/a/e/d/h/e/b/k;-><init>(Lc/c/a/e/d/h/e/b/o;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/e/d/h/e/b/k;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/h/e/b/l;->a:Lg/a/a;

    invoke-static {v0}, Lc/c/a/e/d/h/e/b/l;->b(Lg/a/a;)Lc/c/a/e/d/h/e/b/k;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/h/e/b/l;->get()Lc/c/a/e/d/h/e/b/k;

    move-result-object v0

    return-object v0
.end method
