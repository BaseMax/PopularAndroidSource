.class public final Lc/c/a/n/t/a;
.super Lc/c/a/n/c/d/a;
.source "ProfileAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/a<",
        "Lcom/farsitel/bazaar/ui/profile/ProfileRowItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/ViewGroup;I)Lc/c/a/n/c/d/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lc/c/a/n/c/d/n<",
            "Lcom/farsitel/bazaar/ui/profile/ProfileRowItem;",
            ">;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;->PROFILE_ITEM:Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lc/c/a/f/ab;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/ab;

    move-result-object p1

    const-string p2, "ItemProfileBinding.infla\u2026.context), parent, false)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;->PROFILE_CREDIT_ITEM:Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lc/c/a/f/cb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/cb;

    move-result-object p1

    const-string p2, "ItemProfileCreditBinding\u2026.context), parent, false)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;->PROFILE_HEADER_ITEM:Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lc/c/a/f/eb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/eb;

    move-result-object p1

    const-string p2, "ItemProfileHeaderBinding\u2026.context), parent, false)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    :goto_0
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p2

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid item type for Profile Adapter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
