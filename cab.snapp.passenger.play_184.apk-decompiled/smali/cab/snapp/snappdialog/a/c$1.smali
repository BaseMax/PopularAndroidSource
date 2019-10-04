.class final Lcab/snapp/snappdialog/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappdialog/a/c;->onBindViewHolder(Lcab/snapp/snappdialog/a/c$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappdialog/a/c$a;

.field final synthetic b:Lcab/snapp/snappdialog/a/c;


# direct methods
.method constructor <init>(Lcab/snapp/snappdialog/a/c;Lcab/snapp/snappdialog/a/c$a;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcab/snapp/snappdialog/a/c$1;->b:Lcab/snapp/snappdialog/a/c;

    iput-object p2, p0, Lcab/snapp/snappdialog/a/c$1;->a:Lcab/snapp/snappdialog/a/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 136
    iget-object p1, p0, Lcab/snapp/snappdialog/a/c$1;->a:Lcab/snapp/snappdialog/a/c$a;

    invoke-static {p1}, Lcab/snapp/snappdialog/a/c$a;->b(Lcab/snapp/snappdialog/a/c$a;)Landroid/widget/RadioButton;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method
