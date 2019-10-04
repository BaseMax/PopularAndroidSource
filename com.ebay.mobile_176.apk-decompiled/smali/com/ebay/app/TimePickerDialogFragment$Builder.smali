.class public Lcom/ebay/app/TimePickerDialogFragment$Builder;
.super Ljava/lang/Object;
.source "TimePickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/app/TimePickerDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private hourOfDay:I

.field private minute:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createFromActivity(I)Lcom/ebay/app/TimePickerDialogFragment;
    .locals 4

    .line 141
    new-instance v0, Lcom/ebay/app/TimePickerDialogFragment;

    invoke-direct {v0}, Lcom/ebay/app/TimePickerDialogFragment;-><init>()V

    .line 142
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "hour"

    .line 143
    iget v3, p0, Lcom/ebay/app/TimePickerDialogFragment$Builder;->hourOfDay:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "minute"

    .line 144
    iget v3, p0, Lcom/ebay/app/TimePickerDialogFragment$Builder;->minute:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    invoke-virtual {v0, v1}, Lcom/ebay/app/TimePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    .line 146
    invoke-virtual {v0, v1, p1}, Lcom/ebay/app/TimePickerDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    return-object v0
.end method


# virtual methods
.method public createFromFragment(ILandroidx/fragment/app/Fragment;)Lcom/ebay/app/TimePickerDialogFragment;
    .locals 1

    .line 133
    invoke-direct {p0, p1}, Lcom/ebay/app/TimePickerDialogFragment$Builder;->createFromActivity(I)Lcom/ebay/app/TimePickerDialogFragment;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p2, p1}, Lcom/ebay/app/TimePickerDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    return-object v0
.end method

.method public setHour(I)Lcom/ebay/app/TimePickerDialogFragment$Builder;
    .locals 0

    .line 121
    iput p1, p0, Lcom/ebay/app/TimePickerDialogFragment$Builder;->hourOfDay:I

    return-object p0
.end method

.method public setMinute(I)Lcom/ebay/app/TimePickerDialogFragment$Builder;
    .locals 0

    .line 127
    iput p1, p0, Lcom/ebay/app/TimePickerDialogFragment$Builder;->minute:I

    return-object p0
.end method
