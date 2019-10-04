.class public final Lc/c/a/n/j/c/h;
.super Ljava/lang/Object;
.source "VideoDownloadListFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->ub()V
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
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Lcom/farsitel/bazaar/common/model/ui/EntityState;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/j/c/h;->a:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/c/h;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/farsitel/bazaar/common/model/ui/EntityState;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/n/j/c/h;->a:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;->b(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;)Lc/c/a/n/j/c/l;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lc/c/a/n/j/c/l;->a(Ljava/util/Map;)V

    return-void
.end method
