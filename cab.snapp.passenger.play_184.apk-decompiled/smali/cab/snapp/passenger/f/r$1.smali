.class final Lcab/snapp/passenger/f/r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/f/r;->showNoPermissionDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcab/snapp/passenger/f/r;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/f/r;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcab/snapp/passenger/f/r$1;->b:Lcab/snapp/passenger/f/r;

    iput-object p2, p0, Lcab/snapp/passenger/f/r$1;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcab/snapp/passenger/f/r$1;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 294
    iget-object p1, p0, Lcab/snapp/passenger/f/r$1;->b:Lcab/snapp/passenger/f/r;

    invoke-virtual {p1}, Lcab/snapp/passenger/f/r;->dismissNoPermissionDialog()V

    return-void
.end method
