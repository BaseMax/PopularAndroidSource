.class final Lcab/snapp/passenger/units/profile/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/snappuikit/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/profile/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/profile/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/profile/c;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcab/snapp/passenger/units/profile/c$5;->a:Lcab/snapp/passenger/units/profile/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final editTextClickable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onActionButtonCLicked()V
    .locals 0

    return-void
.end method

.method public final onEditTextClicked()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/c$5;->a:Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/c;->onPhoneNumberClicked()V

    return-void
.end method
