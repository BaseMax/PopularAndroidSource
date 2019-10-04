.class public final Lc/c/a/n/q/d;
.super Ljava/lang/Object;
.source "MaliciousAppViewModel.kt"

# interfaces
.implements Lb/c/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1;->d(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/c/a/c/a<",
        "TX;TY;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1;

.field public final synthetic b:Li/a/H;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1;Li/a/H;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/q/d;->a:Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1;

    iput-object p2, p0, Lc/c/a/n/q/d;->b:Li/a/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
            ">;"
        }
    .end annotation

    const-string v0, "list"

    .line 1
    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/farsitel/bazaar/common/model/page/PageTypeItem;

    .line 3
    instance-of v2, v1, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v2

    .line 5
    sget-object v3, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    .line 6
    iget-object v4, p0, Lc/c/a/n/q/d;->a:Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1;

    iget-object v4, v4, Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1;->this$0:Lc/c/a/n/q/e;

    invoke-static {v4}, Lc/c/a/n/q/e;->a(Lc/c/a/n/q/e;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lc/c/a/c/h/e;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v4, p0, Lc/c/a/n/q/d;->a:Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1;

    iget-object v4, v4, Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1;->this$0:Lc/c/a/n/q/e;

    invoke-static {v4}, Lc/c/a/n/q/e;->a(Lc/c/a/n/q/e;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lc/c/a/n/q/d;->a:Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1;

    iget-object v5, v5, Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1;->this$0:Lc/c/a/n/q/e;

    invoke-static {v5}, Lc/c/a/n/q/e;->c(Lc/c/a/n/q/e;)Ljava/util/Locale;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lc/c/a/c/b/h;->a(Landroid/content/pm/PackageInfo;Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->setAppName(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v1

    sget-object v2, Lcom/farsitel/bazaar/common/model/ui/EntityState;->MALICIOUS_APP:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1, v2}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->setEntityState(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 11
    invoke-static {p1}, Lh/a/u;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/n/q/d;->a:Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1;

    iget-object v1, v1, Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1;->this$0:Lc/c/a/n/q/e;

    invoke-static {v1}, Lc/c/a/n/q/e;->b(Lc/c/a/n/q/e;)I

    move-result v1

    new-instance v2, Lcom/farsitel/bazaar/ui/malicious/MaliciousAppHeaderItem;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v2, p1}, Lcom/farsitel/bazaar/ui/malicious/MaliciousAppHeaderItem;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object p1, v0

    :cond_3
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lc/c/a/n/q/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
