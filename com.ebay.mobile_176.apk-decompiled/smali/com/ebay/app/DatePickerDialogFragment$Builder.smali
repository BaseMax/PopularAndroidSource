.class public Lcom/ebay/app/DatePickerDialogFragment$Builder;
.super Ljava/lang/Object;
.source "DatePickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/app/DatePickerDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private day:I

.field private month:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromActivity(I)Lcom/ebay/app/DatePickerDialogFragment;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x1L
            to = 0x8000L
        .end annotation
    .end param

    .line 116
    new-instance v0, Lcom/ebay/app/DatePickerDialogFragment;

    invoke-direct {v0}, Lcom/ebay/app/DatePickerDialogFragment;-><init>()V

    .line 117
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "year"

    .line 118
    iget v3, p0, Lcom/ebay/app/DatePickerDialogFragment$Builder;->year:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "month"

    .line 119
    iget v3, p0, Lcom/ebay/app/DatePickerDialogFragment$Builder;->month:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "day"

    .line 120
    iget v3, p0, Lcom/ebay/app/DatePickerDialogFragment$Builder;->day:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    invoke-virtual {v0, v1}, Lcom/ebay/app/DatePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    .line 122
    invoke-virtual {v0, v1, p1}, Lcom/ebay/app/DatePickerDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    return-object v0
.end method

.method public createFromFragment(ILandroidx/fragment/app/Fragment;)Lcom/ebay/app/DatePickerDialogFragment;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x1L
            to = 0x8000L
        .end annotation
    .end param

    .line 109
    invoke-virtual {p0, p1}, Lcom/ebay/app/DatePickerDialogFragment$Builder;->createFromActivity(I)Lcom/ebay/app/DatePickerDialogFragment;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p2, p1}, Lcom/ebay/app/DatePickerDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    return-object v0
.end method

.method public setDay(I)Lcom/ebay/app/DatePickerDialogFragment$Builder;
    .locals 0

    .line 102
    iput p1, p0, Lcom/ebay/app/DatePickerDialogFragment$Builder;->day:I

    return-object p0
.end method

.method public setMonth(I)Lcom/ebay/app/DatePickerDialogFragment$Builder;
    .locals 0

    .line 96
    iput p1, p0, Lcom/ebay/app/DatePickerDialogFragment$Builder;->month:I

    return-object p0
.end method

.method public setYear(I)Lcom/ebay/app/DatePickerDialogFragment$Builder;
    .locals 0

    .line 90
    iput p1, p0, Lcom/ebay/app/DatePickerDialogFragment$Builder;->year:I

    return-object p0
.end method
