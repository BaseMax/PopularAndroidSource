.class public abstract Lc/c/a/c/f/a/f;
.super Lc/e/d/x;
.source "SweepTypeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc/e/d/x<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lc/e/d/j;

.field public final b:Lc/e/d/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/d/x<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lc/e/d/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/d/x<",
            "Lc/e/d/p;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lc/e/d/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/d/c/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/e/d/j;Lc/e/d/x;Lc/e/d/x;Lc/e/d/c/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/j;",
            "Lc/e/d/x<",
            "TT;>;",
            "Lc/e/d/x<",
            "Lc/e/d/p;",
            ">;",
            "Lc/e/d/c/a<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "gson"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elementAdapter"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/e/d/x;-><init>()V

    iput-object p1, p0, Lc/c/a/c/f/a/f;->a:Lc/e/d/j;

    iput-object p2, p0, Lc/c/a/c/f/a/f;->b:Lc/e/d/x;

    iput-object p3, p0, Lc/c/a/c/f/a/f;->c:Lc/e/d/x;

    iput-object p4, p0, Lc/c/a/c/f/a/f;->d:Lc/e/d/c/a;

    return-void
.end method


# virtual methods
.method public a(Lc/e/d/d/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/d/b;",
            ")TT;"
        }
    .end annotation

    const-string v0, "in"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/c/f/a/f;->b:Lc/e/d/x;

    iget-object v1, p0, Lc/c/a/c/f/a/f;->c:Lc/e/d/x;

    invoke-virtual {v1, p1}, Lc/e/d/x;->a(Lc/e/d/d/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/d/p;

    invoke-virtual {v0, p1}, Lc/e/d/x;->a(Lc/e/d/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/e/d/d/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/d/c;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/c/f/a/f;->b:Lc/e/d/x;

    invoke-virtual {v0, p1, p2}, Lc/e/d/x;->a(Lc/e/d/d/c;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Lc/e/d/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/d/x<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/c/f/a/f;->b:Lc/e/d/x;

    return-object v0
.end method

.method public final c()Lc/e/d/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/d/x<",
            "Lc/e/d/p;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/c/f/a/f;->c:Lc/e/d/x;

    return-object v0
.end method

.method public final d()Lc/e/d/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/c/f/a/f;->a:Lc/e/d/j;

    return-object v0
.end method

.method public final e()Lc/e/d/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/d/c/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/c/f/a/f;->d:Lc/e/d/c/a;

    return-object v0
.end method
