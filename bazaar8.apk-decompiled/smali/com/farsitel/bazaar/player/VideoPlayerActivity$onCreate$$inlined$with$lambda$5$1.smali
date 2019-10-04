.class public final Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VideoPlayerActivity.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/l/v;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Landroid/view/View;",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $items:Ljava/util/List;

.field public final synthetic this$0:Lc/c/a/l/v;


# direct methods
.method public constructor <init>(Ljava/util/List;Lc/c/a/l/v;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1;->$items:Ljava/util/List;

    iput-object p2, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1;->this$0:Lc/c/a/l/v;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1;->a(Landroid/view/View;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1;->this$0:Lc/c/a/l/v;

    iget-object p1, p1, Lc/c/a/l/v;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v0, Lc/c/a/l/k;->bottomSheetTitle:I

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    sget v0, Lc/c/a/l/m;->player_select_subtitle:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object p1, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1;->this$0:Lc/c/a/l/v;

    iget-object p1, p1, Lc/c/a/l/v;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v0, Lc/c/a/l/k;->list:I

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "list"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lc/c/a/l/a/b;

    iget-object v1, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1;->$items:Ljava/util/List;

    new-instance v2, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1$1;

    invoke-direct {v2, p0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1$1;-><init>(Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1;)V

    invoke-direct {v0, v1, v2}, Lc/c/a/l/a/b;-><init>(Ljava/util/List;Lh/f/a/b;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1;->this$0:Lc/c/a/l/v;

    iget-object v0, p1, Lc/c/a/l/v;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    iget-object p1, p1, Lc/c/a/l/v;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const-string v1, "behavior"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->a(Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-void
.end method
