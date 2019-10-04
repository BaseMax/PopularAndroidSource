.class public Lcom/ebay/app/TimePickerDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "TimePickerDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/app/TimePickerDialogFragment$Builder;
    }
.end annotation


# instance fields
.field private hourOfDay:I

.field private minute:I

.field private timePicker:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private updateTime()V
    .locals 4

    .line 100
    invoke-virtual {p0}, Lcom/ebay/app/TimePickerDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 101
    instance-of v1, v0, Landroid/app/TimePickerDialog$OnTimeSetListener;

    if-eqz v1, :cond_0

    .line 102
    check-cast v0, Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/ebay/app/TimePickerDialogFragment;->timePicker:Landroid/widget/TimePicker;

    iget v2, p0, Lcom/ebay/app/TimePickerDialogFragment;->hourOfDay:I

    iget v3, p0, Lcom/ebay/app/TimePickerDialogFragment;->minute:I

    invoke-interface {v0, v1, v2, v3}, Landroid/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Landroid/widget/TimePicker;II)V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/app/TimePickerDialogFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a030d

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0ae2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/ebay/app/TimePickerDialogFragment;->updateTime()V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/app/TimePickerDialogFragment;->dismiss()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 30
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/ebay/app/TimePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v0, "hour"

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ebay/app/TimePickerDialogFragment;->hourOfDay:I

    const-string v0, "minute"

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ebay/app/TimePickerDialogFragment;->minute:I

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const-string p1, "hour"

    .line 40
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ebay/app/TimePickerDialogFragment;->hourOfDay:I

    const-string p1, "minute"

    .line 41
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ebay/app/TimePickerDialogFragment;->minute:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const p3, 0x7f0d027d

    .line 48
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 70
    invoke-virtual {p0}, Lcom/ebay/app/TimePickerDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 71
    instance-of v1, v0, Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_0

    .line 72
    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "hour"

    .line 80
    iget v1, p0, Lcom/ebay/app/TimePickerDialogFragment;->hourOfDay:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "minute"

    .line 81
    iget v1, p0, Lcom/ebay/app/TimePickerDialogFragment;->minute:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 0

    .line 110
    iput p2, p0, Lcom/ebay/app/TimePickerDialogFragment;->hourOfDay:I

    .line 111
    iput p3, p0, Lcom/ebay/app/TimePickerDialogFragment;->minute:I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a11a1

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TimePicker;

    iput-object p2, p0, Lcom/ebay/app/TimePickerDialogFragment;->timePicker:Landroid/widget/TimePicker;

    .line 57
    iget-object p2, p0, Lcom/ebay/app/TimePickerDialogFragment;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Lcom/ebay/app/TimePickerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 58
    iget-object p2, p0, Lcom/ebay/app/TimePickerDialogFragment;->timePicker:Landroid/widget/TimePicker;

    iget v0, p0, Lcom/ebay/app/TimePickerDialogFragment;->hourOfDay:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 59
    iget-object p2, p0, Lcom/ebay/app/TimePickerDialogFragment;->timePicker:Landroid/widget/TimePicker;

    iget v0, p0, Lcom/ebay/app/TimePickerDialogFragment;->minute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 60
    iget-object p2, p0, Lcom/ebay/app/TimePickerDialogFragment;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {p2, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    const p2, 0x7f0a030d

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0ae2

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
