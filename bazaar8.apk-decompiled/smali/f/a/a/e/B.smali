.class public Lf/a/a/e/B;
.super Ljava/lang/Object;
.source "VideoPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/C;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lir/cafebazaar/inline/ui/SingleLineEditText;

.field public final synthetic b:Lf/a/a/e/C;


# direct methods
.method public constructor <init>(Lf/a/a/e/C;Lir/cafebazaar/inline/ui/SingleLineEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/B;->b:Lf/a/a/e/C;

    iput-object p2, p0, Lf/a/a/e/B;->a:Lir/cafebazaar/inline/ui/SingleLineEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p1, Lf/a/a/b/a;->b:Lc/c/a/d/c/b;

    invoke-virtual {p1}, Lc/c/a/d/c/b;->f()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lf/a/a/e/B;->b:Lf/a/a/e/C;

    sget v0, Lf/a/a/g;->submit_commit_request_login_needed:I

    .line 3
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lf/a/a/e/B;->b:Lf/a/a/e/C;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lb/o/a/i;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lf/a/a/e/B;->a:Lir/cafebazaar/inline/ui/SingleLineEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lf/a/a/e/B;->a:Lir/cafebazaar/inline/ui/SingleLineEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lf/a/a/e/B;->a:Lir/cafebazaar/inline/ui/SingleLineEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lf/a/a/e/B;->b:Lf/a/a/e/C;

    invoke-virtual {v0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->v()Lf/a/a/g/d/a/c;

    move-result-object v0

    new-instance v1, Lf/a/a/g/d/a/s;

    invoke-direct {v1, p1}, Lf/a/a/g/d/a/s;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lf/a/a/g/d/a/c;->a(Lf/a/a/g/d/a/b;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
