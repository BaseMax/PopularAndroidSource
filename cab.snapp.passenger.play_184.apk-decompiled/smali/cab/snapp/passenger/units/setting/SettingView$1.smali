.class final Lcab/snapp/passenger/units/setting/SettingView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/setting/SettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/setting/SettingView;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/setting/SettingView;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcab/snapp/passenger/units/setting/SettingView$1;->a:Lcab/snapp/passenger/units/setting/SettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 227
    iget-object p1, p0, Lcab/snapp/passenger/units/setting/SettingView$1;->a:Lcab/snapp/passenger/units/setting/SettingView;

    iget-object p1, p1, Lcab/snapp/passenger/units/setting/SettingView;->a:Lcab/snapp/passenger/units/setting/c;

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lcab/snapp/passenger/units/setting/SettingView$1;->a:Lcab/snapp/passenger/units/setting/SettingView;

    iget-object p1, p1, Lcab/snapp/passenger/units/setting/SettingView;->a:Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/setting/c;->onBackPressed()V

    :cond_0
    return-void
.end method
