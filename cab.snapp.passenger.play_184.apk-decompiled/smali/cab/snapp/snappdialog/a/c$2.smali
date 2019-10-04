.class final Lcab/snapp/snappdialog/a/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic b:I

.field final synthetic c:Lcab/snapp/snappdialog/a/c;


# direct methods
.method constructor <init>(Lcab/snapp/snappdialog/a/c;Lcab/snapp/snappdialog/a/c$a;I)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcab/snapp/snappdialog/a/c$2;->c:Lcab/snapp/snappdialog/a/c;

    iput-object p2, p0, Lcab/snapp/snappdialog/a/c$2;->a:Lcab/snapp/snappdialog/a/c$a;

    iput p3, p0, Lcab/snapp/snappdialog/a/c$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 146
    iget-object p1, p0, Lcab/snapp/snappdialog/a/c$2;->c:Lcab/snapp/snappdialog/a/c;

    iget-object p2, p0, Lcab/snapp/snappdialog/a/c$2;->a:Lcab/snapp/snappdialog/a/c$a;

    invoke-static {p2}, Lcab/snapp/snappdialog/a/c$a;->b(Lcab/snapp/snappdialog/a/c$a;)Landroid/widget/RadioButton;

    move-result-object p2

    iget v0, p0, Lcab/snapp/snappdialog/a/c$2;->b:I

    invoke-static {p1, p2, v0}, Lcab/snapp/snappdialog/a/c;->a(Lcab/snapp/snappdialog/a/c;Landroid/widget/RadioButton;I)V

    :cond_0
    return-void
.end method
