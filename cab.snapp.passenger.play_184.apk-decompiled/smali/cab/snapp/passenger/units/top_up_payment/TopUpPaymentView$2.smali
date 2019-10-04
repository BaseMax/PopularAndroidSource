.class final Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$2;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setApWalletRegistrationContents(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;Ljava/lang/String;)V
    .locals 0

    .line 1029
    iput-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$2;->b:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    iput-object p2, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1033
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$2;->b:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    iget-object p1, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->a:Lcab/snapp/passenger/units/top_up_payment/d;

    if-nez p1, :cond_0

    return-void

    .line 1037
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$2;->b:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    iget-object p1, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->a:Lcab/snapp/passenger/units/top_up_payment/d;

    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView$2;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/top_up_payment/d;->onApWalletDescriptionMoreInfoClicked(Ljava/lang/String;)V

    return-void
.end method
