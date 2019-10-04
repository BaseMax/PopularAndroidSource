.class public final Lc/c/a/n/j/j/g;
.super Ljava/lang/Object;
.source "SeriesDetailFragment.kt"

# interfaces
.implements Lc/c/a/n/c/d/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->vb()Lc/c/a/n/j/j/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/j/j/g;->a:Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SectionItem:",
            "Ljava/lang/Object;",
            ">(TSectionItem;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/c/a/n/j/j/g;->a:Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;

    invoke-static {v0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 3
    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    .line 4
    check-cast p1, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v1, v2, p1}, Lc/c/a/d$l;->c(Ljava/lang/String;Ljava/lang/String;)Lb/w/p;

    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Section:",
            "Ljava/lang/Object;",
            ">(TSection;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;

    invoke-interface {p1}, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;->getSlug()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lc/c/a/n/j/j/g;->a:Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;

    invoke-interface {p1}, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, v2, p1}, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;->a(Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
