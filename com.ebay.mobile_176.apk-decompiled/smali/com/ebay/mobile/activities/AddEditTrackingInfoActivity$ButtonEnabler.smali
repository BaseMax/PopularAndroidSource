.class Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity$ButtonEnabler;
.super Ljava/lang/Object;
.source "AddEditTrackingInfoActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ButtonEnabler"
.end annotation


# instance fields
.field button:Landroid/view/View;

.field carrier:Landroid/widget/EditText;

.field number:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity$ButtonEnabler;->button:Landroid/view/View;

    .line 232
    iput-object p2, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity$ButtonEnabler;->number:Landroid/widget/EditText;

    .line 233
    iput-object p3, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity$ButtonEnabler;->carrier:Landroid/widget/EditText;

    .line 234
    invoke-direct {p0}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity$ButtonEnabler;->setEnabled()V

    return-void
.end method

.method private setEnabled()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity$ButtonEnabler;->number:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity$ButtonEnabler;->carrier:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 226
    iget-object v2, p0, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity$ButtonEnabler;->button:Landroid/view/View;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/ebay/mobile/activities/AddEditTrackingInfoActivity$ButtonEnabler;->setEnabled()V

    return-void
.end method
