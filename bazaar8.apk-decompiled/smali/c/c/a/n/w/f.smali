.class public final Lc/c/a/n/w/f;
.super Ljava/lang/Object;
.source "SearchFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/search/SearchFragment;->Eb()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/search/SearchFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/search/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/w/f;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const v1, 0x7f0a030c

    const/4 v2, 0x1

    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 3
    iget-object p1, p0, Lc/c/a/n/w/f;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->f(Lcom/farsitel/bazaar/ui/search/SearchFragment;)Lc/c/a/n/w/q;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-ne p1, v2, :cond_d

    .line 4
    iget-object p1, p0, Lc/c/a/n/w/f;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    sget-object v0, Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;->SHOWING_RESULT:Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;

    invoke-static {p1, v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->a(Lcom/farsitel/bazaar/ui/search/SearchFragment;Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;)V

    goto/16 :goto_7

    :cond_2
    :goto_1
    const v1, 0x7f0a03fc

    if-nez p1, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 6
    iget-object p1, p0, Lc/c/a/n/w/f;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->b(Lcom/farsitel/bazaar/ui/search/SearchFragment;)V

    goto :goto_7

    :cond_4
    :goto_2
    const v1, 0x7f0a00fa

    if-nez p1, :cond_5

    goto :goto_3

    .line 7
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_6

    .line 8
    iget-object p1, p0, Lc/c/a/n/w/f;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->a(Lcom/farsitel/bazaar/ui/search/SearchFragment;)V

    goto :goto_7

    :cond_6
    :goto_3
    const v1, 0x7f0a00b2

    if-nez p1, :cond_7

    goto :goto_6

    .line 9
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_b

    .line 10
    iget-object p1, p0, Lc/c/a/n/w/f;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->Za()Lc/c/a/n/w/l;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/n/w/l;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 p1, 0x1

    :goto_5
    if-nez p1, :cond_a

    .line 11
    iget-object p1, p0, Lc/c/a/n/w/f;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    invoke-static {p1}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object p1

    invoke-virtual {p1}, Lb/w/j;->i()Z

    .line 12
    :cond_a
    iget-object p1, p0, Lc/c/a/n/w/f;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    invoke-static {p1, v0, v2, v0}, Lc/c/a/d/b/f;->a(Landroidx/fragment/app/Fragment;Landroid/os/IBinder;ILjava/lang/Object;)V

    goto :goto_7

    :cond_b
    :goto_6
    const v0, 0x7f0a0304

    if-nez p1, :cond_c

    goto :goto_7

    .line 13
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_d

    .line 14
    iget-object v1, p0, Lc/c/a/n/w/f;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->a(Lcom/farsitel/bazaar/ui/search/SearchFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_d
    :goto_7
    return-void
.end method
