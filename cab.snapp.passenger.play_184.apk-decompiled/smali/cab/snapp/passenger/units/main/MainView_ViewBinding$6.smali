.class final Lcab/snapp/passenger/units/main/MainView_ViewBinding$6;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/main/MainView_ViewBinding;-><init>(Lcab/snapp/passenger/units/main/MainView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/main/MainView;

.field final synthetic b:Lcab/snapp/passenger/units/main/MainView_ViewBinding;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/main/MainView_ViewBinding;Lcab/snapp/passenger/units/main/MainView;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding$6;->b:Lcab/snapp/passenger/units/main/MainView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding$6;->a:Lcab/snapp/passenger/units/main/MainView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcab/snapp/passenger/units/main/MainView_ViewBinding$6;->a:Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/MainView;->onRideItemThreeClicked()V

    return-void
.end method
