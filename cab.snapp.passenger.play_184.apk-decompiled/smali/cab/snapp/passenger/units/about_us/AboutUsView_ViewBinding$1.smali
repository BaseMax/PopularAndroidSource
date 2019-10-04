.class final Lcab/snapp/passenger/units/about_us/AboutUsView_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/about_us/AboutUsView_ViewBinding;-><init>(Lcab/snapp/passenger/units/about_us/AboutUsView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/about_us/AboutUsView;

.field final synthetic b:Lcab/snapp/passenger/units/about_us/AboutUsView_ViewBinding;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/about_us/AboutUsView_ViewBinding;Lcab/snapp/passenger/units/about_us/AboutUsView;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcab/snapp/passenger/units/about_us/AboutUsView_ViewBinding$1;->b:Lcab/snapp/passenger/units/about_us/AboutUsView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/about_us/AboutUsView_ViewBinding$1;->a:Lcab/snapp/passenger/units/about_us/AboutUsView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 0

    .line 40
    iget-object p1, p0, Lcab/snapp/passenger/units/about_us/AboutUsView_ViewBinding$1;->a:Lcab/snapp/passenger/units/about_us/AboutUsView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/about_us/AboutUsView;->goToRulesLink()V

    return-void
.end method
