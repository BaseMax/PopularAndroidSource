.class public final Lc/c/a/n/c/c/c;
.super Ljava/lang/Object;
.source "PageFragment.kt"

# interfaces
.implements Lc/c/a/n/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/c/n;->ub()Lc/c/a/n/c/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/c/a/n/c/c/a/a<",
        "Lcom/farsitel/bazaar/common/model/page/ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/c/c/n;


# direct methods
.method public constructor <init>(Lc/c/a/n/c/c/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/c/c/c;->a:Lc/c/a/n/c/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/page/ListItem;)V
    .locals 2

    const-string v0, "appItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/n/c/c/c;->a:Lc/c/a/n/c/c/n;

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lc/c/a/n/c/c/n;->a(Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem;

    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/c;->a(Lcom/farsitel/bazaar/common/model/page/ListItem;)V

    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/page/ListItem;)V
    .locals 2

    const-string v0, "appItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/n/c/c/c;->a:Lc/c/a/n/c/c/n;

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lc/c/a/n/c/c/n;->a(Lc/c/a/n/c/c/n;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Hami;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Hami;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Hami;->getHami()Lcom/farsitel/bazaar/common/model/page/HamiItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lc/c/a/n/c/c/c;->a:Lc/c/a/n/c/c/n;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lc/c/a/n/c/c/n;->a(Lc/c/a/n/c/c/n;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;->getHami()Lcom/farsitel/bazaar/common/model/page/HamiItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lc/c/a/n/c/c/c;->a:Lc/c/a/n/c/c/n;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lc/c/a/n/c/c/n;->a(Lc/c/a/n/c/c/n;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem;

    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/c;->b(Lcom/farsitel/bazaar/common/model/page/ListItem;)V

    return-void
.end method
