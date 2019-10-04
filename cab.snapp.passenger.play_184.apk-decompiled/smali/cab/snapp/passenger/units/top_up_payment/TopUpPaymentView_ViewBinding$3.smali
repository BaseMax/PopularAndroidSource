.class final Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;-><init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

.field final synthetic b:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$3;->b:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$3;->a:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    .line 199
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$3;->a:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    const-class v6, Ljava/lang/CharSequence;

    const-string v2, "afterTextChanged"

    const/4 v3, 0x0

    const-string v4, "onTextChanged"

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lbutterknife/internal/Utils;->castParam(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
