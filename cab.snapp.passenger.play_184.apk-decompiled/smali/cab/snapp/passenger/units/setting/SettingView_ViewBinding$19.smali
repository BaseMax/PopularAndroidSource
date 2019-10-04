.class final Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$19;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;-><init>(Lcab/snapp/passenger/units/setting/SettingView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/setting/SettingView;

.field final synthetic b:Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$19;->b:Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$19;->a:Lcab/snapp/passenger/units/setting/SettingView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$19;->a:Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->onItemsTitleOrSummaryClick(Landroid/view/View;)V

    return-void
.end method
