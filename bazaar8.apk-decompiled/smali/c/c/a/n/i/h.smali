.class public final Lc/c/a/n/i/h;
.super Lc/c/a/n/c/d/g;
.source "ReleaseNoteViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/g<",
        "Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteItem;",
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;"
    }
.end annotation


# instance fields
.field public final j:Lc/c/a/e/d/o/c;

.field public final k:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/o/c;Landroid/content/Context;)V
    .locals 1

    const-string v0, "releaseNoteRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/i/h;->j:Lc/c/a/e/d/o/c;

    iput-object p2, p0, Lc/c/a/n/i/h;->k:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lc/c/a/n/i/h;->j:Lc/c/a/e/d/o/c;

    invoke-virtual {p1}, Lc/c/a/e/d/o/c;->a()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/n/i/h;->k:Landroid/content/Context;

    invoke-static {p1, v0}, Lc/c/a/n/g/a;->a(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/None;

    invoke-virtual {p0, p1}, Lc/c/a/n/i/h;->a(Lcom/farsitel/bazaar/data/entity/None;)V

    return-void
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/i/h;->j:Lc/c/a/e/d/o/c;

    invoke-virtual {v0}, Lc/c/a/e/d/o/c;->d()Z

    move-result v0

    return v0
.end method
