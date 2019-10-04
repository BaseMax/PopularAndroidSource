.class final Lcab/snapp/snappdialog/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappdialog/a/b;->onBindViewHolder(Lcab/snapp/snappdialog/a/b$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappdialog/a/b$a;

.field final synthetic b:Lcab/snapp/snappdialog/a/b;


# direct methods
.method constructor <init>(Lcab/snapp/snappdialog/a/b;Lcab/snapp/snappdialog/a/b$a;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcab/snapp/snappdialog/a/b$1;->b:Lcab/snapp/snappdialog/a/b;

    iput-object p2, p0, Lcab/snapp/snappdialog/a/b$1;->a:Lcab/snapp/snappdialog/a/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 112
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b$1;->a:Lcab/snapp/snappdialog/a/b$a;

    invoke-static {p1}, Lcab/snapp/snappdialog/a/b$a;->b(Lcab/snapp/snappdialog/a/b$a;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b$1;->a:Lcab/snapp/snappdialog/a/b$a;

    invoke-static {p1}, Lcab/snapp/snappdialog/a/b$a;->b(Lcab/snapp/snappdialog/a/b$a;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    .line 118
    :cond_0
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b$1;->a:Lcab/snapp/snappdialog/a/b$a;

    invoke-static {p1}, Lcab/snapp/snappdialog/a/b$a;->b(Lcab/snapp/snappdialog/a/b$a;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
