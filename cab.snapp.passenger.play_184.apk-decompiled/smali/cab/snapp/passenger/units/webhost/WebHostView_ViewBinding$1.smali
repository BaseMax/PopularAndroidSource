.class final Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding;-><init>(Lcab/snapp/passenger/units/webhost/WebHostView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/webhost/WebHostView;

.field final synthetic b:Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding;Lcab/snapp/passenger/units/webhost/WebHostView;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding$1;->b:Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding$1;->a:Lcab/snapp/passenger/units/webhost/WebHostView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding$1;->a:Lcab/snapp/passenger/units/webhost/WebHostView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/webhost/WebHostView;->onHomeButton()V

    return-void
.end method
