.class public final Lcab/snapp/passenger/f/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcab/snapp/snappdialog/b;

.field private c:Lcab/snapp/snappdialog/b;

.field private d:Lcab/snapp/snappdialog/b;

.field private e:Lcab/snapp/snappdialog/b;

.field private f:Lcab/snapp/snappdialog/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    return-void
.end method

.method private synthetic a(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 247
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 248
    invoke-virtual {p0}, Lcab/snapp/passenger/f/r;->dismissNoLocationDialog()V

    return-void
.end method

.method private synthetic b(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 242
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 243
    invoke-virtual {p0}, Lcab/snapp/passenger/f/r;->dismissNoLocationDialog()V

    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 0

    .line 325
    invoke-virtual {p0}, Lcab/snapp/passenger/f/r;->dismissNoLocationDialog()V

    return-void
.end method

.method private static synthetic d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$13ceE4R1rm3jo_CqqXDfDs4IQNM(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/f/r;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$5Bd6Xfaw57DJhsyL9xd1GiuKwiI(Lcab/snapp/passenger/f/r;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/f/r;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$e4ZHiksF0NK0wW6LAgf697_w_GE(Lcab/snapp/passenger/f/r;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/f/r;->b(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$poczytm52Cu-nBlSoBds5B8Wkjk(Lcab/snapp/passenger/f/r;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/f/r;->a(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 2

    .line 382
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/f/r;->dismissNoInternetDialog()V

    .line 383
    iget-object p1, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 387
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 388
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 391
    :try_start_1
    iget-object p1, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 395
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method protected final b(Landroid/view/View;)V
    .locals 2

    .line 409
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/f/r;->dismissNoInternetDialog()V

    .line 410
    iget-object p1, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 414
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 415
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 416
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final dismissNoInternetDialog()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcab/snapp/passenger/f/r;->c:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 229
    iget-object v0, p0, Lcab/snapp/passenger/f/r;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_0
    return-void
.end method

.method public final dismissNoLocationDialog()V
    .locals 1

    .line 353
    iget-object v0, p0, Lcab/snapp/passenger/f/r;->d:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 356
    iget-object v0, p0, Lcab/snapp/passenger/f/r;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_0
    return-void
.end method

.method public final dismissNoPermissionDialog()V
    .locals 1

    .line 365
    iget-object v0, p0, Lcab/snapp/passenger/f/r;->e:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 368
    iget-object v0, p0, Lcab/snapp/passenger/f/r;->e:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_0
    return-void
.end method

.method public final hideErrorDialog()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcab/snapp/passenger/f/r;->f:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 178
    iget-object v0, p0, Lcab/snapp/passenger/f/r;->f:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcab/snapp/passenger/f/r;->f:Lcab/snapp/snappdialog/b;

    :cond_0
    return-void
.end method

.method public final hideLoadingDialog()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcab/snapp/passenger/f/r;->b:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 88
    iget-object v0, p0, Lcab/snapp/passenger/f/r;->b:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_0
    return-void
.end method

.method public final showErrorDialog(I)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/f/r;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method public final showErrorDialog(Ljava/lang/String;)V
    .locals 8

    .line 147
    iget-object v0, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    const v1, 0x7f1200b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, 0x7f120115

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcab/snapp/passenger/f/r;->showInformativeDialog(Ljava/lang/String;Ljava/lang/String;IZI)V

    return-void
.end method

.method public final showErrorDialog(Ljava/lang/Throwable;)V
    .locals 0

    .line 157
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/f/r;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method public final showInformativeDialog(IIIZI)V
    .locals 7

    .line 102
    iget-object v0, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcab/snapp/passenger/f/r;->showInformativeDialog(Ljava/lang/String;Ljava/lang/String;IZI)V

    return-void
.end method

.method public final showInformativeDialog(Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcab/snapp/passenger/f/r;->f:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcab/snapp/passenger/f/r;->hideErrorDialog()V

    .line 120
    :cond_0
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    iget-object v1, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 122
    invoke-virtual {p1, p4}, Lcab/snapp/snappdialog/b$a;->isErrorInformation(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 123
    invoke-virtual {p1, p3}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/16 p3, 0x191

    .line 124
    invoke-virtual {p1, p3}, Lcab/snapp/snappdialog/b$a;->dismissOnButtonClick(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    new-instance p3, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {p3}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 126
    invoke-virtual {p3, p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p2

    .line 127
    invoke-virtual {p2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object p2

    .line 125
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    iget-object p2, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    const p3, 0x7f120170

    .line 128
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcab/snapp/passenger/f/-$$Lambda$r$13ceE4R1rm3jo_CqqXDfDs4IQNM;->INSTANCE:Lcab/snapp/passenger/f/-$$Lambda$r$13ceE4R1rm3jo_CqqXDfDs4IQNM;

    invoke-virtual {p1, p2, p3}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 p2, 0x1

    .line 130
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    if-eqz p5, :cond_1

    .line 134
    invoke-virtual {p1, p5}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    .line 137
    :cond_1
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/f/r;->f:Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public final showLoadingDialog()V
    .locals 5

    .line 59
    iget-object v0, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcab/snapp/passenger/f/r;->b:Lcab/snapp/snappdialog/b;

    if-nez v1, :cond_1

    .line 65
    new-instance v1, Lcab/snapp/snappdialog/b$a;

    invoke-direct {v1, v0}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 66
    invoke-virtual {v1, v0}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v1

    new-instance v2, Lcab/snapp/snappdialog/dialogViews/a/f$a;

    invoke-direct {v2}, Lcab/snapp/snappdialog/dialogViews/a/f$a;-><init>()V

    iget-object v3, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    const v4, 0x7f12019f

    .line 69
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcab/snapp/snappdialog/dialogViews/a/f$a;->setTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/f$a;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Lcab/snapp/snappdialog/dialogViews/a/f$a;->build()Lcab/snapp/snappdialog/dialogViews/a/f;

    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v1

    .line 72
    invoke-virtual {v1, v0}, Lcab/snapp/snappdialog/b$a;->setCancelable(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v1

    .line 73
    invoke-virtual {v1, v0}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/f/r;->b:Lcab/snapp/snappdialog/b;

    .line 77
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/f/r;->b:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->show()V

    return-void
.end method

.method public final showNoInternetDialog()V
    .locals 4

    .line 188
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    iget-object v1, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12010e

    .line 189
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f120169

    .line 190
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    iget-object v2, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    const v3, 0x7f12015d

    .line 192
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/f/-$$Lambda$_53s7gXXY4c9G7uFx3MtsBSGWuI;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/f/-$$Lambda$_53s7gXXY4c9G7uFx3MtsBSGWuI;-><init>(Lcab/snapp/passenger/f/r;)V

    const v2, 0x7f1202ad

    .line 194
    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/f/-$$Lambda$__JCIkTNKrUdftdCUNiTB5Lsb2I;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/f/-$$Lambda$__JCIkTNKrUdftdCUNiTB5Lsb2I;-><init>(Lcab/snapp/passenger/f/r;)V

    const v2, 0x7f120050

    .line 195
    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappdialog/b$a;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/f/r;->c:Lcab/snapp/snappdialog/b;

    .line 198
    iget-object v0, p0, Lcab/snapp/passenger/f/r;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->show()V

    return-void
.end method

.method public final showNoInternetDialog(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 4

    .line 206
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    iget-object v1, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12010e

    .line 207
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f120169

    .line 208
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    iget-object v2, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    const v3, 0x7f12015d

    .line 210
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/f/-$$Lambda$_53s7gXXY4c9G7uFx3MtsBSGWuI;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/f/-$$Lambda$_53s7gXXY4c9G7uFx3MtsBSGWuI;-><init>(Lcab/snapp/passenger/f/r;)V

    const v2, 0x7f1202ad

    .line 212
    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/f/-$$Lambda$__JCIkTNKrUdftdCUNiTB5Lsb2I;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/f/-$$Lambda$__JCIkTNKrUdftdCUNiTB5Lsb2I;-><init>(Lcab/snapp/passenger/f/r;)V

    const v2, 0x7f120050

    .line 213
    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappdialog/b$a;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/f/r;->c:Lcab/snapp/snappdialog/b;

    .line 216
    iget-object v0, p0, Lcab/snapp/passenger/f/r;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 218
    iget-object p1, p0, Lcab/snapp/passenger/f/r;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->show()V

    return-void
.end method

.method public final showNoLocationDialog(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 272
    iget-object v0, p0, Lcab/snapp/passenger/f/r;->d:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    :cond_0
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    iget-object v1, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080118

    .line 275
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIcon(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f1200f5

    .line 276
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    iget-object v2, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    const v3, 0x7f120259

    .line 278
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object v1

    .line 277
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f1202b5

    .line 280
    invoke-virtual {v0, v1, p1}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const v0, 0x7f120165

    new-instance v1, Lcab/snapp/passenger/f/-$$Lambda$r$5Bd6Xfaw57DJhsyL9xd1GiuKwiI;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/f/-$$Lambda$r$5Bd6Xfaw57DJhsyL9xd1GiuKwiI;-><init>(Lcab/snapp/passenger/f/r;)V

    .line 281
    invoke-virtual {p1, v0, v1}, Lcab/snapp/snappdialog/b$a;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 282
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/f/r;->d:Lcab/snapp/snappdialog/b;

    .line 284
    iget-object p1, p0, Lcab/snapp/passenger/f/r;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->show()V

    :cond_1
    return-void
.end method

.method public final showNoLocationDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 238
    iget-object v0, p0, Lcab/snapp/passenger/f/r;->d:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    :cond_0
    new-instance v0, Lcab/snapp/passenger/f/-$$Lambda$r$e4ZHiksF0NK0wW6LAgf697_w_GE;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/f/-$$Lambda$r$e4ZHiksF0NK0wW6LAgf697_w_GE;-><init>(Lcab/snapp/passenger/f/r;Landroid/view/View$OnClickListener;)V

    .line 246
    new-instance p1, Lcab/snapp/passenger/f/-$$Lambda$r$poczytm52Cu-nBlSoBds5B8Wkjk;

    invoke-direct {p1, p0, p2}, Lcab/snapp/passenger/f/-$$Lambda$r$poczytm52Cu-nBlSoBds5B8Wkjk;-><init>(Lcab/snapp/passenger/f/r;Landroid/view/View$OnClickListener;)V

    .line 251
    new-instance p2, Lcab/snapp/snappdialog/b$a;

    iget-object v1, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080118

    .line 252
    invoke-virtual {p2, v1}, Lcab/snapp/snappdialog/b$a;->setIcon(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p2

    const v1, 0x7f1200f5

    .line 253
    invoke-virtual {p2, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p2

    new-instance v1, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    iget-object v2, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    const v3, 0x7f120259

    .line 255
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object v1

    .line 254
    invoke-virtual {p2, v1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p2

    const v1, 0x7f1202b5

    .line 257
    invoke-virtual {p2, v1, v0}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p2

    const v0, 0x7f120165

    .line 258
    invoke-virtual {p2, v0, p1}, Lcab/snapp/snappdialog/b$a;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 259
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/f/r;->d:Lcab/snapp/snappdialog/b;

    .line 261
    iget-object p1, p0, Lcab/snapp/passenger/f/r;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->show()V

    :cond_1
    return-void
.end method

.method public final showNoPermissionDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 290
    new-instance v0, Lcab/snapp/passenger/f/r$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/f/r$1;-><init>(Lcab/snapp/passenger/f/r;Landroid/view/View$OnClickListener;)V

    .line 298
    new-instance p1, Lcab/snapp/passenger/f/r$2;

    invoke-direct {p1, p0, p2}, Lcab/snapp/passenger/f/r$2;-><init>(Lcab/snapp/passenger/f/r;Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object p2, p0, Lcab/snapp/passenger/f/r;->e:Lcab/snapp/snappdialog/b;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result p2

    if-nez p2, :cond_1

    .line 309
    :cond_0
    new-instance p2, Lcab/snapp/snappdialog/b$a;

    iget-object v1, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080118

    .line 310
    invoke-virtual {p2, v1}, Lcab/snapp/snappdialog/b$a;->setIcon(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p2

    const v1, 0x7f1200f5

    .line 311
    invoke-virtual {p2, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p2

    new-instance v1, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    iget-object v2, p0, Lcab/snapp/passenger/f/r;->a:Landroid/content/Context;

    const v3, 0x7f120259

    .line 313
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object v1

    .line 314
    invoke-virtual {v1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object v1

    .line 312
    invoke-virtual {p2, v1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p2

    const v1, 0x7f1202b5

    .line 315
    invoke-virtual {p2, v1, v0}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p2

    const v0, 0x7f120165

    .line 316
    invoke-virtual {p2, v0, p1}, Lcab/snapp/snappdialog/b$a;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 317
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/f/r;->e:Lcab/snapp/snappdialog/b;

    .line 319
    iget-object p1, p0, Lcab/snapp/passenger/f/r;->e:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->show()V

    :cond_1
    return-void
.end method
