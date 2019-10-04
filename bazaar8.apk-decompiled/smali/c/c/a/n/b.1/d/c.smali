.class public final Lc/c/a/n/b/d/c;
.super Ljava/lang/Object;
.source "AppInfoViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/b/d/d;->b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/b/d/d;

.field public final synthetic b:Lcom/farsitel/bazaar/common/model/RecyclerData;


# direct methods
.method public constructor <init>(Lc/c/a/n/b/d/d;Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/b/d/c;->a:Lc/c/a/n/b/d/d;

    iput-object p2, p0, Lc/c/a/n/b/d/c;->b:Lcom/farsitel/bazaar/common/model/RecyclerData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc/c/a/n/b/d/c;->b:Lcom/farsitel/bazaar/common/model/RecyclerData;

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getAppState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object p1

    sget-object v0, Lc/c/a/n/b/d/b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lc/c/a/n/b/d/c;->a:Lc/c/a/n/b/d/d;

    invoke-static {p1}, Lc/c/a/n/b/d/d;->a(Lc/c/a/n/b/d/d;)Lc/c/a/n/b/d/a;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/n/b/d/c;->b:Lcom/farsitel/bazaar/common/model/RecyclerData;

    check-cast v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    invoke-interface {p1, v0}, Lc/c/a/n/b/d/a;->a(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Lc/c/a/n/b/d/c;->a:Lc/c/a/n/b/d/d;

    invoke-static {p1}, Lc/c/a/n/b/d/d;->a(Lc/c/a/n/b/d/d;)Lc/c/a/n/b/d/a;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/n/b/d/c;->b:Lcom/farsitel/bazaar/common/model/RecyclerData;

    check-cast v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    invoke-interface {p1, v0}, Lc/c/a/n/b/d/a;->c(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object p1, p0, Lc/c/a/n/b/d/c;->b:Lcom/farsitel/bazaar/common/model/RecyclerData;

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isInlineOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lc/c/a/n/b/d/c;->a:Lc/c/a/n/b/d/d;

    invoke-static {p1}, Lc/c/a/n/b/d/d;->a(Lc/c/a/n/b/d/d;)Lc/c/a/n/b/d/a;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/n/b/d/c;->b:Lcom/farsitel/bazaar/common/model/RecyclerData;

    check-cast v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    invoke-interface {p1, v0}, Lc/c/a/n/b/d/a;->b(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lc/c/a/n/b/d/c;->a:Lc/c/a/n/b/d/d;

    invoke-static {p1}, Lc/c/a/n/b/d/d;->a(Lc/c/a/n/b/d/d;)Lc/c/a/n/b/d/a;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/n/b/d/c;->b:Lcom/farsitel/bazaar/common/model/RecyclerData;

    check-cast v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    invoke-interface {p1, v0}, Lc/c/a/n/b/d/a;->d(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
