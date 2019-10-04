.class final Lcab/snapp/snappdialog/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappdialog/b;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappdialog/b;


# direct methods
.method constructor <init>(Lcab/snapp/snappdialog/b;)V
    .locals 0

    .line 1080
    iput-object p1, p0, Lcab/snapp/snappdialog/b$1;->a:Lcab/snapp/snappdialog/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1084
    iget-object v0, p0, Lcab/snapp/snappdialog/b$1;->a:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/snappdialog/b$1;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0}, Lcab/snapp/snappdialog/b;->a(Lcab/snapp/snappdialog/b;)Lcab/snapp/snappdialog/dialogViews/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/snappdialog/b$1;->a:Lcab/snapp/snappdialog/b;

    invoke-static {v0}, Lcab/snapp/snappdialog/b;->a(Lcab/snapp/snappdialog/b;)Lcab/snapp/snappdialog/dialogViews/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/snappdialog/dialogViews/a/c;->getType()I

    move-result v0

    const/16 v1, 0x131

    if-ne v0, v1, :cond_0

    .line 1086
    iget-object v0, p0, Lcab/snapp/snappdialog/b$1;->a:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method
