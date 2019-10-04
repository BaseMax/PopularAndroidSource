.class public final Lcab/snapp/snappdialog/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappdialog/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcab/snapp/snappdialog/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 1116
    new-instance v0, Lcab/snapp/snappdialog/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcab/snapp/snappdialog/b;-><init>(Landroid/content/Context;B)V

    iput-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    return-void

    .line 1114
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Context is Null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final build()Lcab/snapp/snappdialog/b;
    .locals 1

    .line 1390
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0}, Lcab/snapp/snappdialog/b;->d(Lcab/snapp/snappdialog/b;)V

    .line 1391
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    return-object v0
.end method

.method public final dismissOnButtonClick(I)Lcab/snapp/snappdialog/b$a;
    .locals 1

    const/16 v0, 0x191

    if-eq p1, v0, :cond_1

    const/16 v0, 0x192

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1293
    :cond_0
    iget-object p1, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {p1}, Lcab/snapp/snappdialog/b;->c(Lcab/snapp/snappdialog/b;)V

    goto :goto_0

    .line 1290
    :cond_1
    iget-object p1, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {p1}, Lcab/snapp/snappdialog/b;->b(Lcab/snapp/snappdialog/b;)V

    :goto_0
    return-object p0
.end method

.method public final isErrorInformation(Z)Lcab/snapp/snappdialog/b$a;
    .locals 1

    .line 1379
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->b(Lcab/snapp/snappdialog/b;Z)V

    return-object p0
.end method

.method public final setButtonOrientation(I)Lcab/snapp/snappdialog/b$a;
    .locals 1

    .line 1343
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->e(Lcab/snapp/snappdialog/b;I)V

    return-object p0
.end method

.method public final setButtonWidthProportion(I)Lcab/snapp/snappdialog/b$a;
    .locals 1

    .line 1331
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->d(Lcab/snapp/snappdialog/b;I)V

    return-object p0
.end method

.method public final setCancelable(Z)Lcab/snapp/snappdialog/b$a;
    .locals 1

    .line 1355
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b;->setCancelable(Z)V

    return-object p0
.end method

.method public final setDialogTitle(I)Lcab/snapp/snappdialog/b$a;
    .locals 1

    .line 1127
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->a(Lcab/snapp/snappdialog/b;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->a(Lcab/snapp/snappdialog/b;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setDialogTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/b$a;
    .locals 1

    .line 1139
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->a(Lcab/snapp/snappdialog/b;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;
    .locals 1

    .line 1175
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->a(Lcab/snapp/snappdialog/b;Lcab/snapp/snappdialog/dialogViews/a/c;)V

    return-object p0
.end method

.method public final setIcon(I)Lcab/snapp/snappdialog/b$a;
    .locals 1

    .line 1151
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->b(Lcab/snapp/snappdialog/b;I)V

    return-object p0
.end method

.method public final setIconFont(I)Lcab/snapp/snappdialog/b$a;
    .locals 1

    .line 1163
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->a(Lcab/snapp/snappdialog/b;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->b(Lcab/snapp/snappdialog/b;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setNegativeButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;
    .locals 1

    .line 1251
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->a(Lcab/snapp/snappdialog/b;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcab/snapp/snappdialog/b;->b(Lcab/snapp/snappdialog/b;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public final setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;
    .locals 1

    .line 1238
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0, p1, p2}, Lcab/snapp/snappdialog/b;->b(Lcab/snapp/snappdialog/b;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public final setNegativeButtonText(I)Lcab/snapp/snappdialog/b$a;
    .locals 1

    .line 1275
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->a(Lcab/snapp/snappdialog/b;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->d(Lcab/snapp/snappdialog/b;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setNegativeButtonText(Ljava/lang/String;)Lcab/snapp/snappdialog/b$a;
    .locals 1

    .line 1263
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->d(Lcab/snapp/snappdialog/b;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;
    .locals 1

    .line 1201
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->a(Lcab/snapp/snappdialog/b;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcab/snapp/snappdialog/b;->a(Lcab/snapp/snappdialog/b;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public final setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;
    .locals 1

    .line 1188
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0, p1, p2}, Lcab/snapp/snappdialog/b;->a(Lcab/snapp/snappdialog/b;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public final setPositiveButtonText(I)Lcab/snapp/snappdialog/b$a;
    .locals 1

    .line 1225
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->a(Lcab/snapp/snappdialog/b;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->c(Lcab/snapp/snappdialog/b;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setPositiveButtonText(Ljava/lang/String;)Lcab/snapp/snappdialog/b$a;
    .locals 1

    .line 1213
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->c(Lcab/snapp/snappdialog/b;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setTheme(I)Lcab/snapp/snappdialog/b$a;
    .locals 1

    .line 1319
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->c(Lcab/snapp/snappdialog/b;I)V

    return-object p0
.end method

.method public final setTopImageUrl(Ljava/lang/String;)Lcab/snapp/snappdialog/b$a;
    .locals 1

    .line 1307
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->e(Lcab/snapp/snappdialog/b;Ljava/lang/String;)V

    return-object p0
.end method

.method public final showOnBuild(Z)Lcab/snapp/snappdialog/b$a;
    .locals 1

    .line 1367
    iget-object v0, p0, Lcab/snapp/snappdialog/b$a;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/b;->a(Lcab/snapp/snappdialog/b;Z)V

    return-object p0
.end method
