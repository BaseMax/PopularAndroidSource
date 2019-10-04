.class public Lc/e/d/b/q;
.super Lc/e/d/x;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/Excluder;->a(Lc/e/d/j;Lc/e/d/c/a;)Lc/e/d/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/d/x<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lc/e/d/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/d/x<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lc/e/d/j;

.field public final synthetic e:Lc/e/d/c/a;

.field public final synthetic f:Lcom/google/gson/internal/Excluder;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/Excluder;ZZLc/e/d/j;Lc/e/d/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/d/b/q;->f:Lcom/google/gson/internal/Excluder;

    iput-boolean p2, p0, Lc/e/d/b/q;->b:Z

    iput-boolean p3, p0, Lc/e/d/b/q;->c:Z

    iput-object p4, p0, Lc/e/d/b/q;->d:Lc/e/d/j;

    iput-object p5, p0, Lc/e/d/b/q;->e:Lc/e/d/c/a;

    invoke-direct {p0}, Lc/e/d/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/e/d/d/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/d/b;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lc/e/d/b/q;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lc/e/d/d/b;->Q()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lc/e/d/b/q;->b()Lc/e/d/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/e/d/x;->a(Lc/e/d/d/b;)Ljava/lang/Object;

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

    .line 4
    iget-boolean v0, p0, Lc/e/d/b/q;->c:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lc/e/d/d/c;->C()Lc/e/d/d/c;

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lc/e/d/b/q;->b()Lc/e/d/x;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/e/d/x;->a(Lc/e/d/d/c;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Lc/e/d/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/d/x<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/d/b/q;->a:Lc/e/d/x;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/e/d/b/q;->d:Lc/e/d/j;

    iget-object v1, p0, Lc/e/d/b/q;->f:Lcom/google/gson/internal/Excluder;

    iget-object v2, p0, Lc/e/d/b/q;->e:Lc/e/d/c/a;

    .line 3
    invoke-virtual {v0, v1, v2}, Lc/e/d/j;->a(Lc/e/d/y;Lc/e/d/c/a;)Lc/e/d/x;

    move-result-object v0

    iput-object v0, p0, Lc/e/d/b/q;->a:Lc/e/d/x;

    :goto_0
    return-object v0
.end method
