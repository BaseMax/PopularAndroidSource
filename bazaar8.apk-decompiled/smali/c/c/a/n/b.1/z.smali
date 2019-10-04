.class public final Lc/c/a/n/b/z;
.super Ljava/lang/Object;
.source "AppDetailViewModel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;->d(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;I)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/b/z;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;

    iput p2, p0, Lc/c/a/n/b/z;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/z;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;

    iget-object v0, v0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;->this$0:Lc/c/a/n/b/w;

    iget v1, p0, Lc/c/a/n/b/z;->b:I

    invoke-static {v0, v1}, Lc/c/a/n/b/w;->a(Lc/c/a/n/b/w;I)V

    return-void
.end method
