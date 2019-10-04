.class public final Lc/c/a/e/d/s/g;
.super Ljava/lang/Object;
.source "SearchRemoteDataSource_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/e/d/s/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/b/e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/s/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a;Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/b/e;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/s/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/s/g;->a:Lg/a/a;

    .line 3
    iput-object p2, p0, Lc/c/a/e/d/s/g;->b:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;Lg/a/a;)Lc/c/a/e/d/s/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/b/e;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/s/j;",
            ">;)",
            "Lc/c/a/e/d/s/g;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/s/g;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/s/g;-><init>(Lg/a/a;Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;Lg/a/a;)Lc/c/a/e/d/s/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/b/e;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/s/j;",
            ">;)",
            "Lc/c/a/e/d/s/f;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/s/f;

    .line 2
    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/e/b/e;

    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/s/j;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/s/f;-><init>(Lc/c/a/e/b/e;Lc/c/a/e/d/s/j;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/e/d/s/f;
    .locals 2

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/s/g;->a:Lg/a/a;

    iget-object v1, p0, Lc/c/a/e/d/s/g;->b:Lg/a/a;

    invoke-static {v0, v1}, Lc/c/a/e/d/s/g;->b(Lg/a/a;Lg/a/a;)Lc/c/a/e/d/s/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/s/g;->get()Lc/c/a/e/d/s/f;

    move-result-object v0

    return-object v0
.end method
