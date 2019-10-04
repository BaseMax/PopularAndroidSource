.class public final Lc/c/a/n/p/h;
.super Ljava/lang/Object;
.source "RegisterFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/login/RegisterFragment;->_a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/login/RegisterFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/p/h;->a:Lcom/farsitel/bazaar/ui/login/RegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc/c/a/n/p/h;->a:Lcom/farsitel/bazaar/ui/login/RegisterFragment;

    invoke-static {p1}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object p1

    .line 2
    sget-object v0, Lc/c/a/n/p/l;->a:Lc/c/a/n/p/l$b;

    invoke-virtual {v0}, Lc/c/a/n/p/l$b;->a()Lb/w/p;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method
