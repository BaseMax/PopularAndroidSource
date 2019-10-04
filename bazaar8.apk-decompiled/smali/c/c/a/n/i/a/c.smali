.class public final Lc/c/a/n/i/a/c;
.super Lc/c/a/d/f/p;
.source "ReleaseNoteDialogViewModel.kt"


# instance fields
.field public final d:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lc/c/a/e/d/o/c;

.field public final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/o/c;Landroid/content/Context;)V
    .locals 1

    const-string v0, "releaseNoteRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    iput-object p1, p0, Lc/c/a/n/i/a/c;->e:Lc/c/a/e/d/o/c;

    iput-object p2, p0, Lc/c/a/n/i/a/c;->f:Landroid/content/Context;

    .line 2
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/i/a/c;->d:Lb/r/t;

    return-void
.end method


# virtual methods
.method public final e()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteItem;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/i/a/c;->d:Lb/r/t;

    return-object v0
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/i/a/c;->d:Lb/r/t;

    iget-object v1, p0, Lc/c/a/n/i/a/c;->e:Lc/c/a/e/d/o/c;

    invoke-virtual {v1}, Lc/c/a/e/d/o/c;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lc/c/a/n/i/a/c;->f:Landroid/content/Context;

    invoke-static {v1, v2}, Lc/c/a/n/g/a;->a(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method
