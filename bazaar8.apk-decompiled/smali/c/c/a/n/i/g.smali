.class public final Lc/c/a/n/i/g;
.super Lc/c/a/n/c/d/a;
.source "ReleaseNoteAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/a<",
        "Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteItem;",
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lc/c/a/n/c/d/n<",
            "Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteItem;",
            ">;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lc/c/a/n/c/d/n;

    .line 2
    sget-object v1, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;->HEADER:Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;->INDENT_HEADER:Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_1

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1, v2}, Lc/c/a/f/ib;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/ib;

    move-result-object p1

    const-string p2, "ItemReleaseNoteHeaderBin\u2026.context), parent, false)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 5
    :cond_1
    sget-object v1, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;->DESC:Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    sget-object v1, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;->INDENT_DESC:Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_3

    .line 7
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1, v2}, Lc/c/a/f/gb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/gb;

    move-result-object p1

    const-string p2, "ItemReleaseNoteDescBindi\u2026.context), parent, false)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    :goto_2
    invoke-direct {v0, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object v0

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string p2, "invalid type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
