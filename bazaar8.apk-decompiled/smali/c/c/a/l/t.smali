.class public final Lc/c/a/l/t;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/l/u;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lc/c/a/l/u;


# direct methods
.method public constructor <init>(Ljava/util/List;Lc/c/a/l/u;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/l/t;->a:Ljava/util/List;

    iput-object p2, p0, Lc/c/a/l/t;->b:Lc/c/a/l/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lc/c/a/l/t;->b:Lc/c/a/l/u;

    iget-object p1, p1, Lc/c/a/l/u;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v0, Lc/c/a/l/k;->bottomSheetTitle:I

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    sget v0, Lc/c/a/l/m;->player_select_quality:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2
    iget-object p1, p0, Lc/c/a/l/t;->b:Lc/c/a/l/u;

    iget-object p1, p1, Lc/c/a/l/u;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v0, Lc/c/a/l/k;->list:I

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "list"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lc/c/a/l/a/b;

    iget-object v1, p0, Lc/c/a/l/t;->a:Ljava/util/List;

    new-instance v2, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$4$1$1;

    invoke-direct {v2, p0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$4$1$1;-><init>(Lc/c/a/l/t;)V

    invoke-direct {v0, v1, v2}, Lc/c/a/l/a/b;-><init>(Ljava/util/List;Lh/f/a/b;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 3
    iget-object p1, p0, Lc/c/a/l/t;->b:Lc/c/a/l/u;

    iget-object v0, p1, Lc/c/a/l/u;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    iget-object p1, p1, Lc/c/a/l/u;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const-string v1, "behavior"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->a(Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-void
.end method
