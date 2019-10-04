.class public final Lc/c/a/n/j/k/t;
.super Ljava/lang/Object;
.source "VideoDetailViewModel_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/n/j/k/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/b/d/o;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/b/d/m;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/d/c/b;",
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
            "Lc/c/a/e/d/h/e/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/c;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/b/d/o;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/b/d/m;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/d/c/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/n/j/k/t;->a:Lg/a/a;

    .line 3
    iput-object p2, p0, Lc/c/a/n/j/k/t;->b:Lg/a/a;

    .line 4
    iput-object p3, p0, Lc/c/a/n/j/k/t;->c:Lg/a/a;

    .line 5
    iput-object p4, p0, Lc/c/a/n/j/k/t;->d:Lg/a/a;

    .line 6
    iput-object p5, p0, Lc/c/a/n/j/k/t;->e:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/n/j/k/t;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/c;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/b/d/o;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/b/d/m;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/d/c/b;",
            ">;)",
            "Lc/c/a/n/j/k/t;"
        }
    .end annotation

    .line 1
    new-instance v6, Lc/c/a/n/j/k/t;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc/c/a/n/j/k/t;-><init>(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)V

    return-object v6
.end method

.method public static b(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/n/j/k/s;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/c;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/b/d/o;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/b/d/m;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/d/c/b;",
            ">;)",
            "Lc/c/a/n/j/k/s;"
        }
    .end annotation

    .line 1
    new-instance v6, Lc/c/a/n/j/k/s;

    .line 2
    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lc/c/a/e/d/h/e/a;

    .line 3
    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lc/c/a/e/d/h/e/a/c;

    .line 4
    invoke-interface {p2}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lc/c/a/b/d/o;

    .line 5
    invoke-interface {p3}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lc/c/a/b/d/m;

    .line 6
    invoke-interface {p4}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lc/c/a/d/c/b;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc/c/a/n/j/k/s;-><init>(Lc/c/a/e/d/h/e/a;Lc/c/a/e/d/h/e/a/c;Lc/c/a/b/d/o;Lc/c/a/b/d/m;Lc/c/a/d/c/b;)V

    return-object v6
.end method


# virtual methods
.method public get()Lc/c/a/n/j/k/s;
    .locals 5

    .line 2
    iget-object v0, p0, Lc/c/a/n/j/k/t;->a:Lg/a/a;

    iget-object v1, p0, Lc/c/a/n/j/k/t;->b:Lg/a/a;

    iget-object v2, p0, Lc/c/a/n/j/k/t;->c:Lg/a/a;

    iget-object v3, p0, Lc/c/a/n/j/k/t;->d:Lg/a/a;

    iget-object v4, p0, Lc/c/a/n/j/k/t;->e:Lg/a/a;

    invoke-static {v0, v1, v2, v3, v4}, Lc/c/a/n/j/k/t;->b(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/n/j/k/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/j/k/t;->get()Lc/c/a/n/j/k/s;

    move-result-object v0

    return-object v0
.end method
