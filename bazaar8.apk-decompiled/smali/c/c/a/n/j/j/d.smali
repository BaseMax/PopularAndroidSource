.class public final Lc/c/a/n/j/j/d;
.super Ljava/lang/Object;
.source "SeriesDetailFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->jb()Lc/c/a/n/j/j/l;
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
        "Ljava/util/Set<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/j/j/l;


# direct methods
.method public constructor <init>(Lc/c/a/n/j/j/l;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/j/j/d;->a:Lc/c/a/n/j/j/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/j/d;->a(Ljava/util/Set;)V

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
    iget-object p1, p0, Lc/c/a/n/j/j/d;->a:Lc/c/a/n/j/j/l;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lc/c/a/n/j/j/l;->b(Lc/c/a/n/j/j/l;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method
