.class public final Lc/c/a/n/j/j/k;
.super Ljava/lang/Object;
.source "SeriesDetailViewModel.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/j/j/l;-><init>(Landroid/content/Context;Lc/c/a/e/d/h/d/a;Lc/c/a/b/d/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/r/u<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/j/j/l;


# direct methods
.method public constructor <init>(Lc/c/a/n/j/j/l;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/j/j/k;->a:Lc/c/a/n/j/j/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/j/k;->a(Ljava/util/Set;)V

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/n/j/j/k;->a:Lc/c/a/n/j/j/l;

    invoke-static {v0}, Lc/c/a/n/j/j/l;->a(Lc/c/a/n/j/j/l;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3
    iget-object v0, p0, Lc/c/a/n/j/j/k;->a:Lc/c/a/n/j/j/l;

    invoke-static {v0}, Lc/c/a/n/j/j/l;->a(Lc/c/a/n/j/j/l;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lc/c/a/n/j/j/k;->a:Lc/c/a/n/j/j/l;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lc/c/a/n/j/j/l;->b(Lc/c/a/n/j/j/l;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method
