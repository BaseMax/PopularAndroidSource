.class public final Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;
.super Ljava/lang/Object;
.source "AppDetail.kt"


# instance fields
.field public final defaultSortTypeChoice:Ljava/lang/String;

.field public final sortTypeChoices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "defaultSortTypeChoice"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;->sortTypeChoices:Ljava/util/List;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;->defaultSortTypeChoice:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDefaultSortTypeChoice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;->defaultSortTypeChoice:Ljava/lang/String;

    return-object v0
.end method

.method public final getSortTypeChoices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;->sortTypeChoices:Ljava/util/List;

    return-object v0
.end method
