.class public final Lc/c/a/n/p/c;
.super Ljava/lang/Object;
.source "RegisterFragment.kt"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/login/RegisterFragment;->Ua()V
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

    iput-object p1, p0, Lc/c/a/n/p/c;->a:Lcom/farsitel/bazaar/ui/login/RegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lc/c/a/n/p/c;->a:Lcom/farsitel/bazaar/ui/login/RegisterFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->d(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)Z

    move-result p1

    :goto_0
    return p1
.end method
