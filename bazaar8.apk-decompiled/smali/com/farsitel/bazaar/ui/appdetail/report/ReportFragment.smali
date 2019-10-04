.class public final Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;
.super Lc/c/a/d/f/g;
.source "ReportFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/d/f/g<",
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;"
    }
.end annotation


# static fields
.field public static final ta:Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment$a;


# instance fields
.field public Aa:Ljava/util/HashMap;

.field public final ua:Ljava/lang/String;

.field public va:Z

.field public wa:Ljava/lang/Integer;

.field public xa:Lc/c/a/n/b/c/f;

.field public ya:Landroid/os/Handler;

.field public za:Lc/c/a/n/b/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->ta:Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/g;-><init>()V

    const-string v0, "report"

    .line 2
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->ua:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->va:Z

    const v0, 0x7f1101f4

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->wa:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->ya:Landroid/os/Handler;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "handler"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->c(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public Qa()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->Aa:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->ua:Ljava/lang/String;

    return-object v0
.end method

.method public Va()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->wa:Ljava/lang/Integer;

    return-object v0
.end method

.method public Ya()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->va:Z

    return v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 3
    invoke-static {p1, p2, p3}, Lc/c/a/f/u;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/u;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->xa:Lc/c/a/n/b/c/f;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lc/c/a/n/b/c/f;->b()Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object p2

    const/16 p3, 0x35

    invoke-virtual {p1, p3, p2}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    const-string p2, "FragmentReportAppBinding\u2026gs.toolbarInfo)\n        }"

    .line 5
    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "reportArgs"

    .line 6
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-super {p0, p1, p2}, Lc/c/a/d/f/g;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Wa()Lb/r/F$b;

    move-result-object p1

    .line 9
    invoke-static {p0, p1}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object p1

    const-class p2, Lc/c/a/n/b/c/g;

    invoke-virtual {p1, p2}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    const-string p2, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    check-cast p1, Lc/c/a/n/b/c/g;

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->za:Lc/c/a/n/b/c/g;

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/d/f/g;->b(Landroid/view/View;)V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->ya:Landroid/os/Handler;

    .line 3
    sget v0, Lc/c/a/e;->btSubmitReport:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const-string v1, "view.btSubmitReport"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f0a0393

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lc/c/a/n/b/c/a;

    invoke-direct {v1, p0}, Lc/c/a/n/b/c/a;-><init>(Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00d2

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lc/c/a/n/b/c/b;

    invoke-direct {v1, p0, p1}, Lc/c/a/n/b/c/b;-><init>(Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget v0, Lc/c/a/e;->rgReport:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    new-instance v1, Lc/c/a/n/b/c/c;

    invoke-direct {v1, p1}, Lc/c/a/n/b/c/c;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 7
    sget v0, Lc/c/a/e;->etUserReport:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Lc/c/a/n/b/c/e;

    invoke-direct {v1, p0, p1}, Lc/c/a/n/b/c/e;-><init>(Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lb/o/a/d;->c(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lc/c/a/n/b/c/f;->a:Lc/c/a/n/b/c/f$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/b/c/f$a;->a(Landroid/os/Bundle;)Lc/c/a/n/b/c/f;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->xa:Lc/c/a/n/b/c/f;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(Landroid/view/View;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->za:Lc/c/a/n/b/c/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->xa:Lc/c/a/n/b/c/f;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lc/c/a/n/b/c/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 5
    sget v2, Lc/c/a/e;->rgReport:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    const-string v3, "view.rgReport"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 6
    sget v3, Lc/c/a/e;->etUserReport:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    const-string v3, "view.etUserReport"

    invoke-static {p1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {v0, v1, v2, p1}, Lc/c/a/n/b/c/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lc/c/a/d/f/g;->Za()Lc/c/a/d/d/c;

    move-result-object p1

    const v0, 0x7f1001db

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/c/a/d/d/c;->a(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lb/o/a/d;->Ma()V

    return-void

    :cond_0
    const-string p1, "reportArgs"

    .line 10
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "viewModel"

    .line 11
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->Aa:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->Aa:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->Aa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->Aa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/d/f/g;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->Qa()V

    return-void
.end method
