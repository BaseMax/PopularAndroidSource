.class public final Lc/c/a/n/x/a/c;
.super Lb/o/a/d;
.source "TimePickerDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/x/a/c$b;,
        Lc/c/a/n/x/a/c$c;,
        Lc/c/a/n/x/a/c$a;
    }
.end annotation


# static fields
.field public static final ja:Lc/c/a/n/x/a/c$a;


# instance fields
.field public ka:Landroid/widget/TimePicker;

.field public la:Lc/c/a/n/x/a/c$b;

.field public ma:Lc/c/a/n/x/a/c$c;

.field public final na:Lc/c/a/n/x/a/d;

.field public oa:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/n/x/a/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/n/x/a/c$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/n/x/a/c;->ja:Lc/c/a/n/x/a/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/o/a/d;-><init>()V

    .line 2
    new-instance v0, Lc/c/a/n/x/a/d;

    invoke-direct {v0, p0}, Lc/c/a/n/x/a/d;-><init>(Lc/c/a/n/x/a/c;)V

    iput-object v0, p0, Lc/c/a/n/x/a/c;->na:Lc/c/a/n/x/a/d;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/x/a/c;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/x/a/c;->Ra()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/n/x/a/c;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/x/a/c;->Sa()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Qa()V
    .locals 1

    iget-object v0, p0, Lc/c/a/n/x/a/c;->oa:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final Ra()Ljava/lang/Integer;
    .locals 3

    const/16 v0, 0x17

    .line 1
    invoke-static {v0}, Lc/c/a/c/h/d;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "timePicker"

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/c/a/n/x/a/c;->ka:Landroid/widget/TimePicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v0, p0, Lc/c/a/n/x/a/c;->ka:Landroid/widget/TimePicker;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final Sa()Ljava/lang/Integer;
    .locals 3

    const/16 v0, 0x17

    .line 1
    invoke-static {v0}, Lc/c/a/c/h/d;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "timePicker"

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/c/a/n/x/a/c;->ka:Landroid/widget/TimePicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getMinute()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v0, p0, Lc/c/a/n/x/a/c;->ka:Landroid/widget/TimePicker;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final Ta()Lc/c/a/n/x/a/c$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/x/a/c;->la:Lc/c/a/n/x/a/c$b;

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0040

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a013d

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;

    .line 6
    iget-object v0, p0, Lc/c/a/n/x/a/c;->na:Lc/c/a/n/x/a/d;

    invoke-virtual {p2, v0}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->setOnClickListener(Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;)V

    const p2, 0x7f0a014b

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById(R.id.edit)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TimePicker;

    iput-object p1, p0, Lc/c/a/n/x/a/c;->ka:Landroid/widget/TimePicker;

    .line 8
    iget-object p1, p0, Lc/c/a/n/x/a/c;->ka:Landroid/widget/TimePicker;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 9
    invoke-virtual {p0}, Lb/o/a/d;->Na()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 10
    :cond_0
    iget-object p1, p0, Lc/c/a/n/x/a/c;->ma:Lc/c/a/n/x/a/c$c;

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Lc/c/a/n/x/a/c$c;->a()I

    move-result p2

    invoke-virtual {p0, p2}, Lc/c/a/n/x/a/c;->e(I)V

    .line 12
    invoke-virtual {p1}, Lc/c/a/n/x/a/c$c;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lc/c/a/n/x/a/c;->f(I)V

    return-void

    :cond_1
    const-string p1, "args"

    .line 13
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-string p1, "timePicker"

    .line 14
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(Lc/c/a/n/x/a/c$b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/c/a/n/x/a/c;->la:Lc/c/a/n/x/a/c$b;

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lb/o/a/d;->c(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lc/c/a/n/x/a/c$c;->a:Lc/c/a/n/x/a/c$c$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/x/a/c$c$a;->a(Landroid/os/Bundle;)Lc/c/a/n/x/a/c$c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/x/a/c;->ma:Lc/c/a/n/x/a/c$c;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final e(I)V
    .locals 3

    const/16 v0, 0x17

    .line 1
    invoke-static {v0}, Lc/c/a/c/h/d;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "timePicker"

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/c/a/n/x/a/c;->ka:Landroid/widget/TimePicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TimePicker;->setHour(I)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v0, p0, Lc/c/a/n/x/a/c;->ka:Landroid/widget/TimePicker;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final f(I)V
    .locals 3

    const/16 v0, 0x17

    .line 1
    invoke-static {v0}, Lc/c/a/c/h/d;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "timePicker"

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/c/a/n/x/a/c;->ka:Landroid/widget/TimePicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TimePicker;->setMinute(I)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v0, p0, Lc/c/a/n/x/a/c;->ka:Landroid/widget/TimePicker;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lb/o/a/d;->qa()V

    invoke-virtual {p0}, Lc/c/a/n/x/a/c;->Qa()V

    return-void
.end method
