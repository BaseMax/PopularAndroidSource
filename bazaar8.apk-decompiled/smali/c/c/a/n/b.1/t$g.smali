.class public final Lc/c/a/n/b/t$g;
.super Ljava/lang/Object;
.source "AppDetailFragmentDirections.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/n/b/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/c/a/n/b/t$g;-><init>()V

    return-void
.end method

.method public static synthetic a(Lc/c/a/n/b/t$g;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-string p1, "home"

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x1

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lc/c/a/n/b/t$g;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lb/w/p;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;)Lb/w/p;
    .locals 1

    const-string v0, "appMoreDescription"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lc/c/a/n/b/t$e;

    invoke-direct {v0, p1}, Lc/c/a/n/b/t$e;-><init>(Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;)V

    return-object v0
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;)Lb/w/p;
    .locals 1

    const-string v0, "moreArticleItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolbarInfo"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lc/c/a/n/b/t$d;

    invoke-direct {v0, p1, p2}, Lc/c/a/n/b/t$d;-><init>(Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;)V

    return-object v0
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;ZI)Lb/w/p;
    .locals 1

    const-string v0, "reviewItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolbarInfo"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lc/c/a/n/b/t$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lc/c/a/n/b/t$a;-><init>(Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;ZI)V

    return-object v0
.end method

.method public final a(Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;Ljava/lang/String;)Lb/w/p;
    .locals 1

    const-string v0, "toolbarInfo"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageDesc"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lc/c/a/n/b/t$f;

    invoke-direct {v0, p1, p2}, Lc/c/a/n/b/t$f;-><init>(Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/w/p;
    .locals 1

    const-string v0, "slug"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolbarName"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lc/c/a/n/b/t$c;

    invoke-direct {v0, p1, p2, p3}, Lc/c/a/n/b/t$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lb/w/p;
    .locals 1

    const-string v0, "slug"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolbarName"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lc/c/a/n/b/t$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lc/c/a/n/b/t$b;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
