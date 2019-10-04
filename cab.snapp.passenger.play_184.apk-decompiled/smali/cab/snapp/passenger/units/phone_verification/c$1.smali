.class final Lcab/snapp/passenger/units/phone_verification/c$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/phone_verification/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/phone_verification/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/phone_verification/c;)V
    .locals 4

    .line 321
    iput-object p1, p0, Lcab/snapp/passenger/units/phone_verification/c$1;->a:Lcab/snapp/passenger/units/phone_verification/c;

    const-wide/32 v0, 0xea60

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    .line 341
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/c$1;->a:Lcab/snapp/passenger/units/phone_verification/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/phone_verification/c;->b(Lcab/snapp/passenger/units/phone_verification/c;)V

    return-void
.end method

.method public final onTick(J)V
    .locals 5

    .line 326
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/c$1;->a:Lcab/snapp/passenger/units/phone_verification/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/phone_verification/c;->a(Lcab/snapp/passenger/units/phone_verification/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getCodeExpireTimeText()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 332
    div-long/2addr p1, v2

    const-wide/16 v2, 0xa

    cmp-long v4, p1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    if-ltz v4, :cond_1

    const-string v3, "00:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "00:0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 333
    invoke-static {p1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 334
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setCodeExpireTimeText(Ljava/lang/String;)V

    return-void
.end method
