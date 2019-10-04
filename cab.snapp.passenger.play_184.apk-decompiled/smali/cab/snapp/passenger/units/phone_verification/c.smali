.class public final Lcab/snapp/passenger/units/phone_verification/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;",
        "Lcab/snapp/passenger/units/phone_verification/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/os/CountDownTimer;

.field private f:Landroid/text/TextWatcher;

.field private g:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->b:I

    const-string v0, ""

    .line 52
    iput-object v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->c:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/phone_verification/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcab/snapp/passenger/units/phone_verification/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    iput-object p1, p0, Lcab/snapp/passenger/units/phone_verification/c;->c:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 242
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    iget-object v1, p0, Lcab/snapp/passenger/units/phone_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200b3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setTitleText(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    iget-object v1, p0, Lcab/snapp/passenger/units/phone_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120248

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setDescriptionText(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    iget-object v1, p0, Lcab/snapp/passenger/units/phone_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12016d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setVerificationText(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    iget-object v1, p0, Lcab/snapp/passenger/units/phone_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120060

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setNegativeBtnText(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setDescriptionGravity(I)V

    .line 252
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setPhoneNumberEditTextVisibility(I)V

    .line 253
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setVerificationEditTextVisibility(I)V

    .line 254
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setCodeExpireTimeTextVisibility(I)V

    .line 255
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setResendButtonAreaLayoutVisibility(I)V

    .line 256
    invoke-direct {p0}, Lcab/snapp/passenger/units/phone_verification/c;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(I)V
    .locals 1

    .line 217
    iput p1, p0, Lcab/snapp/passenger/units/phone_verification/c;->b:I

    if-nez p1, :cond_0

    .line 220
    invoke-direct {p0}, Lcab/snapp/passenger/units/phone_verification/c;->a()V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 226
    invoke-direct {p0}, Lcab/snapp/passenger/units/phone_verification/c;->b()V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 232
    invoke-direct {p0}, Lcab/snapp/passenger/units/phone_verification/c;->c()V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/phone_verification/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    iput-object p1, p0, Lcab/snapp/passenger/units/phone_verification/c;->d:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 5

    .line 264
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120206

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcab/snapp/passenger/units/phone_verification/c;->c:Ljava/lang/String;

    .line 1115
    invoke-static {v3}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 269
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v2, v0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setDescriptionText(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    iget-object v2, p0, Lcab/snapp/passenger/units/phone_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v2, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v2}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120077

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setTitleText(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    iget-object v2, p0, Lcab/snapp/passenger/units/phone_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v2, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v2}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1200a4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setNegativeBtnText(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    iget-object v2, p0, Lcab/snapp/passenger/units/phone_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v2, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v2}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120061

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setCodeExpireTimeText(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setDescriptionGravity(I)V

    .line 275
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setPhoneNumberEditTextVisibility(I)V

    .line 276
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0, v4}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setVerificationEditTextVisibility(I)V

    .line 277
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setResendButtonAreaLayoutVisibility(I)V

    .line 278
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0, v4}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setCodeExpireTimeTextVisibility(I)V

    .line 279
    invoke-direct {p0}, Lcab/snapp/passenger/units/phone_verification/c;->d()V

    .line 280
    invoke-direct {p0}, Lcab/snapp/passenger/units/phone_verification/c;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/phone_verification/c;)V
    .locals 1

    const/4 v0, 0x2

    .line 25
    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/phone_verification/c;->a(I)V

    return-void
.end method

.method private c()V
    .locals 5

    .line 288
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcab/snapp/passenger/units/phone_verification/c;->c:Ljava/lang/String;

    .line 2115
    invoke-static {v3}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 293
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v2, v0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setDescriptionText(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    iget-object v2, p0, Lcab/snapp/passenger/units/phone_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v2, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v2}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120077

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setTitleText(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setDescriptionGravity(I)V

    .line 297
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setPhoneNumberEditTextVisibility(I)V

    .line 298
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0, v4}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setVerificationEditTextVisibility(I)V

    .line 299
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0, v4}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setResendButtonAreaLayoutVisibility(I)V

    .line 300
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    iget-object v2, p0, Lcab/snapp/passenger/units/phone_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v2, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v2}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1200a4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setNegativeBtnText(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setCodeExpireTimeTextVisibility(I)V

    .line 302
    invoke-direct {p0}, Lcab/snapp/passenger/units/phone_verification/c;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method private d()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->e:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .line 321
    new-instance v0, Lcab/snapp/passenger/units/phone_verification/c$1;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/phone_verification/c$1;-><init>(Lcab/snapp/passenger/units/phone_verification/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->e:Landroid/os/CountDownTimer;

    .line 344
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->e:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public final onCodeIsWrong()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->a:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->TOAST_CONFIRMATION_CODE_IS_WRONG:Ljava/lang/String;

    const-string v3, "[show]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    const v1, 0x7f120123

    const v2, 0x7f06004b

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->showMessage(II)V

    :cond_0
    return-void
.end method

.method public final onDailyLimitForCallExceeded()V
    .locals 3

    .line 157
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    const v1, 0x7f120088

    const v2, 0x7f06004b

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->showMessage(II)V

    :cond_0
    return-void
.end method

.method public final onDailyLimitForSmsExceeded()V
    .locals 3

    .line 146
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    const v1, 0x7f120089

    const v2, 0x7f06004b

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->showMessage(II)V

    :cond_0
    return-void
.end method

.method public final onInitialize()V
    .locals 3

    .line 352
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getAppComponent()Lcab/snapp/passenger/e/a/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/a;->inject(Lcab/snapp/passenger/units/phone_verification/c;)V

    const/4 v0, 0x0

    .line 357
    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/phone_verification/c;->a(I)V

    .line 358
    new-instance v0, Lcab/snapp/passenger/units/phone_verification/c$2;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/phone_verification/c$2;-><init>(Lcab/snapp/passenger/units/phone_verification/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->f:Landroid/text/TextWatcher;

    .line 381
    new-instance v0, Lcab/snapp/passenger/units/phone_verification/c$3;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/phone_verification/c$3;-><init>(Lcab/snapp/passenger/units/phone_verification/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->g:Landroid/text/TextWatcher;

    .line 404
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    iget-object v1, p0, Lcab/snapp/passenger/units/phone_verification/c;->f:Landroid/text/TextWatcher;

    iget-object v2, p0, Lcab/snapp/passenger/units/phone_verification/c;->g:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setListeners(Landroid/text/TextWatcher;Landroid/text/TextWatcher;)V

    .line 407
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->setStatusBarColor()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onNegativeButtonClicked()V
    .locals 4

    .line 485
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/phone_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    .line 487
    iget v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->b:I

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->a:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_REGISTER_PHONE_NUMBER:Ljava/lang/String;

    const-string v3, "[close]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 493
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/phone_verification/a;->finish()V

    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->a:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_REGISTER_PHONE_NUMBER:Ljava/lang/String;

    const-string v3, "[CorrectionPhoneNumber]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 499
    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/phone_verification/c;->a(I)V

    :cond_1
    return-void
.end method

.method public final onPhoneVerifyError()V
    .locals 3

    .line 192
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    const v1, 0x7f1200b9

    const v2, 0x7f06004b

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->showMessage(II)V

    :cond_0
    return-void
.end method

.method public final onPhoneVerifySuccess()V
    .locals 3

    .line 181
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    const v1, 0x7f1201b7

    const v2, 0x7f06004d

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->showMessage(II)V

    :cond_0
    return-void
.end method

.method public final onPositiveButtonClicked()V
    .locals 6

    .line 464
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/phone_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    .line 466
    iget v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->b:I

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 3083
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3088
    :cond_0
    iget-object v3, p0, Lcab/snapp/passenger/units/phone_verification/c;->c:Ljava/lang/String;

    const v4, 0x7f06004b

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 3093
    :cond_1
    iget-object v3, p0, Lcab/snapp/passenger/units/phone_verification/c;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0xb

    if-ge v3, v5, :cond_2

    const v3, 0x7f1200be

    .line 3095
    invoke-virtual {v0, v3, v4}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->showMessage(II)V

    goto :goto_1

    .line 3098
    :cond_2
    iget-object v3, p0, Lcab/snapp/passenger/units/phone_verification/c;->c:Ljava/lang/String;

    invoke-static {v3}, Lcab/snapp/c/i;->isPhoneNumberValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const v3, 0x7f1200b7

    .line 3100
    invoke-virtual {v0, v3, v4}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->showMessage(II)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const v3, 0x7f1200bc

    .line 3090
    invoke-virtual {v0, v3, v4}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->showMessage(II)V

    :goto_1
    if-eqz v2, :cond_5

    .line 468
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->onSendCodeBySmsClicked()V

    return-void

    .line 470
    :cond_5
    iget v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->b:I

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 472
    :cond_6
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->a:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_CONFIRMATION_PHONE_NUMBER:Ljava/lang/String;

    const-string v3, "[send]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 475
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/a;

    iget-object v1, p0, Lcab/snapp/passenger/units/phone_verification/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/phone_verification/a;->requestVerifyPhoneNumberForEdit(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final onResendCodeBySmsClicked()V
    .locals 4

    .line 428
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->a:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_CONFIRMATION_PHONE_NUMBER:Ljava/lang/String;

    const-string v3, "[resendSms]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/a;

    iget-object v1, p0, Lcab/snapp/passenger/units/phone_verification/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/phone_verification/a;->requestSendCodeBySms(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onSendCodeBySmsClicked()V
    .locals 4

    .line 441
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->a:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_REGISTER_PHONE_NUMBER:Ljava/lang/String;

    const-string v3, "[send]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/c;->a:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_CONFIRMATION_PHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/a;

    iget-object v1, p0, Lcab/snapp/passenger/units/phone_verification/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/phone_verification/a;->requestSendCodeBySms(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onSendCodeBySmsError()V
    .locals 3

    .line 135
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    const v1, 0x7f1200b9

    const v2, 0x7f06004b

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->showMessage(II)V

    :cond_0
    return-void
.end method

.method public final onSendCodeBySmsSuccess()V
    .locals 3

    .line 123
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    const v1, 0x7f120079

    const v2, 0x7f06004d

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->showMessage(II)V

    :cond_0
    const/4 v0, 0x1

    .line 127
    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/phone_verification/c;->a(I)V

    return-void
.end method

.method public final onUserIsBlocked(Ljava/lang/String;)V
    .locals 2

    .line 170
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    const v1, 0x7f06004b

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->showMessage(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 413
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06004d

    .line 416
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
