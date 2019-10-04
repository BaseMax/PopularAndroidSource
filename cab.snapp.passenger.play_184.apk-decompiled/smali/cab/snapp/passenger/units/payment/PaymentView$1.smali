.class final Lcab/snapp/passenger/units/payment/PaymentView$1;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/payment/PaymentView;->setApWalletRegistrationContents(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcab/snapp/passenger/units/payment/PaymentView;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/payment/PaymentView;Ljava/lang/String;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcab/snapp/passenger/units/payment/PaymentView$1;->b:Lcab/snapp/passenger/units/payment/PaymentView;

    iput-object p2, p0, Lcab/snapp/passenger/units/payment/PaymentView$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 710
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/PaymentView$1;->b:Lcab/snapp/passenger/units/payment/PaymentView;

    iget-object p1, p1, Lcab/snapp/passenger/units/payment/PaymentView;->a:Lcab/snapp/passenger/units/payment/c;

    if-nez p1, :cond_0

    return-void

    .line 714
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/PaymentView$1;->b:Lcab/snapp/passenger/units/payment/PaymentView;

    iget-object p1, p1, Lcab/snapp/passenger/units/payment/PaymentView;->a:Lcab/snapp/passenger/units/payment/c;

    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView$1;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/payment/c;->onApWalletDescriptionMoreInfoClicked(Ljava/lang/String;)V

    return-void
.end method
