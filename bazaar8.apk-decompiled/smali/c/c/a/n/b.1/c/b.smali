.class public final Lc/c/a/n/b/c/b;
.super Ljava/lang/Object;
.source "ReportFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/b/c/b;->a:Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;

    iput-object p2, p0, Lc/c/a/n/b/c/b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lc/c/a/n/b/c/b;->b:Landroid/view/View;

    sget v0, Lc/c/a/e;->rgReport:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    const-string v0, "view.rgReport"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lc/c/a/n/b/c/b;->a:Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;

    sget v1, Lc/c/a/e;->reportRoot:I

    invoke-virtual {p1, v1}, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lc/c/a/n/b/c/b;->a:Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;

    const v2, 0x7f100182

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->m()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lc/c/a/n/b/c/b;->a:Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;

    iget-object v0, p0, Lc/c/a/n/b/c/b;->b:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->a(Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;Landroid/view/View;)V

    :goto_0
    return-void
.end method
