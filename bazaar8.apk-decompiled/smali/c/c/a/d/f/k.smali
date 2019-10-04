.class public final Lc/c/a/d/f/k;
.super Ljava/lang/Object;
.source "BaseDialogFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/d/f/l;->n(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/d/f/q;


# direct methods
.method public constructor <init>(Lc/c/a/d/f/q;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/d/f/k;->a:Lc/c/a/d/f/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lc/c/a/d/f/k;->a:Lc/c/a/d/f/q;

    invoke-interface {p1}, Lc/c/a/d/f/q;->m()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
