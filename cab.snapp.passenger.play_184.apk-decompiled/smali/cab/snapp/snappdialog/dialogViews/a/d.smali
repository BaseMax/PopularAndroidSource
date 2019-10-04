.class public final Lcab/snapp/snappdialog/dialogViews/a/d;
.super Lcab/snapp/snappdialog/dialogViews/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/snappdialog/dialogViews/a/d$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Z

.field i:Ljava/lang/String;

.field j:I

.field k:Landroid/text/TextWatcher;

.field l:Landroid/text/TextWatcher;

.field m:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcab/snapp/snappdialog/dialogViews/a/c;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d;->h:Z

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d;->j:I

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcab/snapp/snappdialog/dialogViews/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCheckboxText()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .line 165
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d;->m:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method public final getDirection()I
    .locals 1

    .line 333
    iget v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d;->j:I

    return v0
.end method

.method public final getFirstEtHint()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirstEtText()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirstEtTextWatcher()Landroid/text/TextWatcher;
    .locals 1

    .line 195
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d;->k:Landroid/text/TextWatcher;

    return-object v0
.end method

.method public final getFirstEtTitle()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecondEtHint()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecondEtText()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecondEtTextWatcher()Landroid/text/TextWatcher;
    .locals 1

    .line 205
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d;->l:Landroid/text/TextWatcher;

    return-object v0
.end method

.method public final getSecondEtTitle()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    const/16 v0, 0x131

    return v0
.end method

.method public final isCheckboxIsChecked()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcab/snapp/snappdialog/dialogViews/a/d;->h:Z

    return v0
.end method
