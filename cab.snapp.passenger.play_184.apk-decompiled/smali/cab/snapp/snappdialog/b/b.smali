.class public final Lcab/snapp/snappdialog/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcab/snapp/snappdialog/b;

.field private b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;Lcab/snapp/snappdialog/b;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcab/snapp/snappdialog/b/b;->b:Landroid/view/View$OnClickListener;

    .line 24
    iput-object p2, p0, Lcab/snapp/snappdialog/b/b;->a:Lcab/snapp/snappdialog/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcab/snapp/snappdialog/b/b;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 52
    :cond_0
    iget-object p1, p0, Lcab/snapp/snappdialog/b/b;->a:Lcab/snapp/snappdialog/b;

    if-eqz p1, :cond_3

    .line 54
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcab/snapp/snappdialog/b/b;->a:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 58
    :cond_1
    iget-object p1, p0, Lcab/snapp/snappdialog/b/b;->a:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 60
    iget-object p1, p0, Lcab/snapp/snappdialog/b/b;->a:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 62
    :cond_2
    iget-object p1, p0, Lcab/snapp/snappdialog/b/b;->a:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->cancel()V

    .line 63
    iget-object p1, p0, Lcab/snapp/snappdialog/b/b;->a:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->releaseMemory()V

    :cond_3
    return-void
.end method
