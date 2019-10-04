.class public final Lc/c/a/n/u/r;
.super Ljava/lang/Object;
.source "ReviewsViewModel_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/n/u/q;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/r/e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/d/c/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/b/d/b;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/r/e;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/d/c/b;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/b/d/b;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/c/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/n/u/r;->a:Lg/a/a;

    .line 3
    iput-object p2, p0, Lc/c/a/n/u/r;->b:Lg/a/a;

    .line 4
    iput-object p3, p0, Lc/c/a/n/u/r;->c:Lg/a/a;

    .line 5
    iput-object p4, p0, Lc/c/a/n/u/r;->d:Lg/a/a;

    .line 6
    iput-object p5, p0, Lc/c/a/n/u/r;->e:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/n/u/r;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/r/e;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/d/c/b;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/b/d/b;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/c/a;",
            ">;)",
            "Lc/c/a/n/u/r;"
        }
    .end annotation

    .line 1
    new-instance v6, Lc/c/a/n/u/r;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc/c/a/n/u/r;-><init>(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)V

    return-object v6
.end method

.method public static b(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/n/u/q;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/r/e;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/d/c/b;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/b/d/b;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/c/a;",
            ">;)",
            "Lc/c/a/n/u/q;"
        }
    .end annotation

    .line 1
    new-instance v6, Lc/c/a/n/u/q;

    .line 2
    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lc/c/a/e/d/r/e;

    .line 3
    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lc/c/a/p/I;

    .line 4
    invoke-interface {p2}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lc/c/a/d/c/b;

    .line 5
    invoke-interface {p3}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lc/c/a/b/d/b;

    .line 6
    invoke-interface {p4}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lc/c/a/e/d/c/a;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc/c/a/n/u/q;-><init>(Lc/c/a/e/d/r/e;Lc/c/a/p/I;Lc/c/a/d/c/b;Lc/c/a/b/d/b;Lc/c/a/e/d/c/a;)V

    return-object v6
.end method


# virtual methods
.method public get()Lc/c/a/n/u/q;
    .locals 5

    .line 2
    iget-object v0, p0, Lc/c/a/n/u/r;->a:Lg/a/a;

    iget-object v1, p0, Lc/c/a/n/u/r;->b:Lg/a/a;

    iget-object v2, p0, Lc/c/a/n/u/r;->c:Lg/a/a;

    iget-object v3, p0, Lc/c/a/n/u/r;->d:Lg/a/a;

    iget-object v4, p0, Lc/c/a/n/u/r;->e:Lg/a/a;

    invoke-static {v0, v1, v2, v3, v4}, Lc/c/a/n/u/r;->b(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/n/u/q;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/u/r;->get()Lc/c/a/n/u/q;

    move-result-object v0

    return-object v0
.end method
