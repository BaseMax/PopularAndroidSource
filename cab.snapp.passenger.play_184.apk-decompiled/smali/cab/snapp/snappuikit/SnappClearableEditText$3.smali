.class final Lcab/snapp/snappuikit/SnappClearableEditText$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappuikit/SnappClearableEditText;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappuikit/SnappClearableEditText;


# direct methods
.method constructor <init>(Lcab/snapp/snappuikit/SnappClearableEditText;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappClearableEditText$3;->a:Lcab/snapp/snappuikit/SnappClearableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 145
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappClearableEditText$3;->a:Lcab/snapp/snappuikit/SnappClearableEditText;

    iget-object p1, p1, Lcab/snapp/snappuikit/SnappClearableEditText;->b:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
