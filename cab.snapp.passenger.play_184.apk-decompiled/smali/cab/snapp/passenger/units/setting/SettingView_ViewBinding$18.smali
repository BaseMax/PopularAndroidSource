.class final Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$18;
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

    .line 126
    iput-object p1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$18;->b:Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$18;->a:Lcab/snapp/passenger/units/setting/SettingView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 7

    .line 129
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$18;->a:Lcab/snapp/passenger/units/setting/SettingView;

    const-class v6, Lcab/snapp/snappuikit/SnappCheckBox;

    const-string v2, "doClick"

    const/4 v3, 0x0

    const-string v4, "onCheckBoxClick"

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lbutterknife/internal/Utils;->castParam(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/snappuikit/SnappCheckBox;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->onCheckBoxClick(Lcab/snapp/snappuikit/SnappCheckBox;)V

    return-void
.end method
