.class public final Lc/c/a/n/i/a/a;
.super Ljava/lang/Object;
.source "ReleaseNoteDialog.kt"

# interfaces
.implements Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/i/a/a;->a:Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a$a;->c(Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a$a;->a(Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;)V

    return-void
.end method

.method public onCommit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/i/a/a;->a:Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;

    invoke-virtual {v0}, Lc/c/a/d/f/l;->Ra()Lc/c/a/d/f/r;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/farsitel/bazaar/data/entity/None;->INSTANCE:Lcom/farsitel/bazaar/data/entity/None;

    invoke-interface {v0, v1}, Lc/c/a/d/f/r;->a(Ljava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lc/c/a/n/i/a/a;->a:Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;

    invoke-virtual {v0}, Lb/o/a/d;->Ma()V

    return-void
.end method
