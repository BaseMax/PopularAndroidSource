.class public final Lcab/snapp/snappdialog/dialogViews/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappdialog/dialogViews/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcab/snapp/snappdialog/dialogViews/a/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    new-instance v0, Lcab/snapp/snappdialog/dialogViews/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/dialogViews/a/d;-><init>(B)V

    iput-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d$a;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    return-void
.end method


# virtual methods
.method public final build()Lcab/snapp/snappdialog/dialogViews/a/d;
    .locals 1

    .line 546
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d$a;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    return-object v0
.end method

.method public final setCheckboxCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcab/snapp/snappdialog/dialogViews/a/d$a;
    .locals 1

    .line 477
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d$a;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    .line 8288
    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/d;->m:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method public final setCheckboxIsChecked(Z)Lcab/snapp/snappdialog/dialogViews/a/d$a;
    .locals 1

    .line 489
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d$a;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    .line 9298
    iput-boolean p1, v0, Lcab/snapp/snappdialog/dialogViews/a/d;->h:Z

    return-object p0
.end method

.method public final setChekboxText(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;
    .locals 1

    .line 501
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d$a;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    .line 10308
    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/d;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final setDirection(I)Lcab/snapp/snappdialog/dialogViews/a/d$a;
    .locals 1

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    .line 533
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d$a;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    .line 13014
    iput p1, v0, Lcab/snapp/snappdialog/dialogViews/a/d;->j:I

    :cond_1
    return-object p0
.end method

.method public final setFirstEditTextHint(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;
    .locals 1

    .line 417
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d$a;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    .line 3238
    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final setFirstEditTextText(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;
    .locals 1

    .line 429
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d$a;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    .line 4248
    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/d;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final setFirstEditTextTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;
    .locals 1

    .line 405
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d$a;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    .line 2228
    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final setFirstEtTextWatcher(Landroid/text/TextWatcher;)Lcab/snapp/snappdialog/dialogViews/a/d$a;
    .locals 1

    .line 513
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d$a;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    .line 11318
    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/d;->k:Landroid/text/TextWatcher;

    return-object p0
.end method

.method public final setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;
    .locals 1

    .line 393
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d$a;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    .line 1218
    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setSecondEditTextHint(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;
    .locals 1

    .line 453
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d$a;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    .line 6268
    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/d;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final setSecondEditTextText(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;
    .locals 1

    .line 465
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d$a;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    .line 7278
    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/d;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final setSecondEditTextTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;
    .locals 1

    .line 441
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d$a;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    .line 5258
    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/d;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final setSecondEtTextWatcher(Landroid/text/TextWatcher;)Lcab/snapp/snappdialog/dialogViews/a/d$a;
    .locals 1

    .line 525
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d$a;->a:Lcab/snapp/snappdialog/dialogViews/a/d;

    .line 12328
    iput-object p1, v0, Lcab/snapp/snappdialog/dialogViews/a/d;->l:Landroid/text/TextWatcher;

    return-object p0
.end method
