.class Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity$1;
.super Ljava/lang/Object;
.source "PayUponInvoiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 84
    new-instance p1, Lcom/ebay/app/DatePickerDialogFragment$Builder;

    invoke-direct {p1}, Lcom/ebay/app/DatePickerDialogFragment$Builder;-><init>()V

    .line 85
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;

    const v1, 0x7f0a03c7

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 86
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    :try_start_0
    iget-object v4, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;

    .line 92
    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 93
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 94
    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 95
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ebay/app/DatePickerDialogFragment$Builder;->setYear(I)Lcom/ebay/app/DatePickerDialogFragment$Builder;

    .line 96
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ebay/app/DatePickerDialogFragment$Builder;->setMonth(I)Lcom/ebay/app/DatePickerDialogFragment$Builder;

    .line 97
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ebay/app/DatePickerDialogFragment$Builder;->setDay(I)Lcom/ebay/app/DatePickerDialogFragment$Builder;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 107
    iget-object v4, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;

    invoke-static {v4}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->access$000(Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;)Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 108
    iget-object v4, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;

    invoke-static {v4}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->access$000(Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 109
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/ebay/app/DatePickerDialogFragment$Builder;->setYear(I)Lcom/ebay/app/DatePickerDialogFragment$Builder;

    .line 110
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/ebay/app/DatePickerDialogFragment$Builder;->setMonth(I)Lcom/ebay/app/DatePickerDialogFragment$Builder;

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ebay/app/DatePickerDialogFragment$Builder;->setDay(I)Lcom/ebay/app/DatePickerDialogFragment$Builder;

    :catch_0
    :goto_0
    const/16 v0, 0x26bf

    .line 113
    invoke-virtual {p1, v0}, Lcom/ebay/app/DatePickerDialogFragment$Builder;->createFromActivity(I)Lcom/ebay/app/DatePickerDialogFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;

    .line 114
    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "dateOfBirthPicker"

    invoke-virtual {p1, v0, v1}, Lcom/ebay/app/DatePickerDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
