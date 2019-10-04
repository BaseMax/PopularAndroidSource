.class public final Lc/c/a/n/g/a;
.super Ljava/lang/Object;
.source "Mappers.kt"


# direct methods
.method public static final a(Lcom/farsitel/bazaar/data/entity/UpgradableApp;)Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;
    .locals 8

    const-string v0, "$this$toAppDownloader"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isFree()Z

    move-result v4

    new-instance p0, Lc/c/a/c/d/c$l;

    invoke-direct {p0}, Lc/c/a/c/d/c$l;-><init>()V

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-static {p0, v1, v5, v1}, Lc/c/a/c/d/d;->a(Lc/c/a/c/d/d;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static final a(Lcom/farsitel/bazaar/data/entity/SearchPrediction;)Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;
    .locals 5

    const-string v0, "$this$toSearchHistoryItem"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    instance-of v0, p0, Lcom/farsitel/bazaar/data/entity/SearchPrediction$History;

    if-eqz v0, :cond_0

    .line 11
    sget-object v0, Lcom/farsitel/bazaar/ui/search/SearchHistoryType;->HISTORY:Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/farsitel/bazaar/ui/search/SearchHistoryType;->NONE:Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 13
    :goto_0
    new-instance v1, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/SearchPrediction;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/SearchPrediction;->getSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/SearchPrediction;->getReferrer()Ljava/lang/String;

    move-result-object p0

    sget-object v4, Lcom/farsitel/bazaar/ui/search/SearchHistoryType;->Companion:Lcom/farsitel/bazaar/ui/search/SearchHistoryType$a;

    invoke-virtual {v4, v0}, Lcom/farsitel/bazaar/ui/search/SearchHistoryType$a;->a(Ljava/lang/String;)Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    move-result-object v0

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/ui/search/SearchHistoryType;)V

    return-object v1
.end method

.method public static final a(Lcom/farsitel/bazaar/data/entity/ReleaseNote;Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/entity/ReleaseNote;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteItem;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$toReleaseNote"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v1, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteHeaderItem;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/ReleaseNote;->getReleaseVersionName()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(releaseVersionName)"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;->APP:Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    invoke-direct {v1, v2, v3}, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteHeaderItem;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/ReleaseNote;->getReleaseNotes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;

    .line 7
    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;->getReleaseNoteType()Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    move-result-object v2

    sget-object v3, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;->INNER_TITLE:Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    const-string v4, "context.getString(releaseNote.value)"

    if-ne v2, v3, :cond_0

    .line 8
    new-instance v2, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteHeaderItem;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;->getValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;->getReleaseNoteType()Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteHeaderItem;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    new-instance v2, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteDescriptionItem;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;->getValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntry;->getReleaseNoteType()Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteDescriptionItem;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/ReleaseNoteEntryType;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final a(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/ReleaseNote;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteItem;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$toReleaseNotes"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/farsitel/bazaar/data/entity/ReleaseNote;

    .line 3
    invoke-static {v1, p1}, Lc/c/a/n/g/a;->a(Lcom/farsitel/bazaar/data/entity/ReleaseNote;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
