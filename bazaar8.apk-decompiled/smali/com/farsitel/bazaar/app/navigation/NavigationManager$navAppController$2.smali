.class public final Lcom/farsitel/bazaar/app/navigation/NavigationManager$navAppController$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NavigationManager.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b/e/b;-><init>(Lcom/farsitel/bazaar/ui/home/MainActivity;Lc/c/a/e/d/a/a;Ljava/util/Locale;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Lb/w/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lc/c/a/b/e/b;


# direct methods
.method public constructor <init>(Lc/c/a/b/e/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/app/navigation/NavigationManager$navAppController$2;->this$0:Lc/c/a/b/e/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lb/w/j;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/app/navigation/NavigationManager$navAppController$2;->this$0:Lc/c/a/b/e/b;

    invoke-virtual {v0}, Lc/c/a/b/e/b;->g()Lcom/farsitel/bazaar/ui/home/MainActivity;

    move-result-object v0

    const v1, 0x7f0a00aa

    invoke-static {v0, v1}, Lb/w/b;->a(Landroid/app/Activity;I)Lb/w/j;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/farsitel/bazaar/app/navigation/NavigationManager$navAppController$2;->this$0:Lc/c/a/b/e/b;

    invoke-static {v1}, Lc/c/a/b/e/b;->b(Lc/c/a/b/e/b;)Lb/w/j$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/w/j;->a(Lb/w/j$a;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/app/navigation/NavigationManager$navAppController$2;->invoke()Lb/w/j;

    move-result-object v0

    return-object v0
.end method
