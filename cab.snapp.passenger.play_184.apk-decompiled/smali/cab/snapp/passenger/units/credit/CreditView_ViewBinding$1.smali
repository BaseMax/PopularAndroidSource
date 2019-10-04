.class final Lcab/snapp/passenger/units/credit/CreditView_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/credit/CreditView_ViewBinding;-><init>(Lcab/snapp/passenger/units/credit/CreditView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/credit/CreditView;

.field final synthetic b:Lcab/snapp/passenger/units/credit/CreditView_ViewBinding;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/credit/CreditView_ViewBinding;Lcab/snapp/passenger/units/credit/CreditView;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcab/snapp/passenger/units/credit/CreditView_ViewBinding$1;->b:Lcab/snapp/passenger/units/credit/CreditView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/credit/CreditView_ViewBinding$1;->a:Lcab/snapp/passenger/units/credit/CreditView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 7

    .line 40
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/CreditView_ViewBinding$1;->a:Lcab/snapp/passenger/units/credit/CreditView;

    const-class v6, Lcab/snapp/snappuikit/SnappFloatingActionButton;

    const-string v2, "doClick"

    const/4 v3, 0x0

    const-string v4, "onAddCreditButton"

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lbutterknife/internal/Utils;->castParam(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/credit/CreditView;->onAddCreditButton(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V

    return-void
.end method
