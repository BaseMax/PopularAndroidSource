.class public final Lc/c/a/e/d/h/c/a/a/g;
.super Ljava/lang/Object;
.source "ReportVideoCommentRemoteDataSource_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/e/d/h/c/a/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/h/c/a/a/e;",
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
            "Lc/c/a/e/d/h/c/a/a/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/h/c/a/a/g;->a:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;)Lc/c/a/e/d/h/c/a/a/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/c/a/a/e;",
            ">;)",
            "Lc/c/a/e/d/h/c/a/a/g;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/h/c/a/a/g;

    invoke-direct {v0, p0}, Lc/c/a/e/d/h/c/a/a/g;-><init>(Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;)Lc/c/a/e/d/h/c/a/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/c/a/a/e;",
            ">;)",
            "Lc/c/a/e/d/h/c/a/a/f;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/h/c/a/a/f;

    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/e/d/h/c/a/a/e;

    invoke-direct {v0, p0}, Lc/c/a/e/d/h/c/a/a/f;-><init>(Lc/c/a/e/d/h/c/a/a/e;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/e/d/h/c/a/a/f;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/h/c/a/a/g;->a:Lg/a/a;

    invoke-static {v0}, Lc/c/a/e/d/h/c/a/a/g;->b(Lg/a/a;)Lc/c/a/e/d/h/c/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/h/c/a/a/g;->get()Lc/c/a/e/d/h/c/a/a/f;

    move-result-object v0

    return-object v0
.end method
