.class public final Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$isLocalePersian$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MyBazaarFragment.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$isLocalePersian$2;->this$0:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$isLocalePersian$2;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 3

    .line 2
    sget-object v0, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$isLocalePersian$2;->this$0:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/d/a/a$a;->a(Landroid/content/Context;)Lc/c/a/e/d/u/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->w()Z

    move-result v0

    return v0
.end method
